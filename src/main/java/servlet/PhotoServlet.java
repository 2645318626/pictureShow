package servlet;

import bean.Photos;
import dao.PhotoDao;
import dao.impl.PhotoDaoImpl;
import dbutil.DBUtil;
import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.FileItemFactory;
import org.apache.commons.fileupload.FileUploadException;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.File;
import java.io.IOException;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.sql.Connection;
import java.util.ArrayList;
import java.util.Date;
import java.util.Iterator;
import java.util.List;

/**
 * @author : author
 * @date : 11:19 2021/7/3
 */
@WebServlet(name = "PhotoServlet" ,value = "/photoServlet")
public class PhotoServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        doPost(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.setCharacterEncoding("utf-8");
        resp.setCharacterEncoding("utf-8");
        String action = req.getParameter("action");
        System.out.println(action);
        try {
            Method method = this.getClass().getDeclaredMethod(action, HttpServletRequest.class, HttpServletResponse.class);
            method.invoke(this, req, resp);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    protected void detailByImgPath(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String imgPath = req.getParameter("imgPath");
        System.out.println(imgPath);
        Photos photos = new Photos();
        photos.setImgPath(imgPath);
        Connection conn=null;
        PhotoDao photoDao = new PhotoDaoImpl();
        try {
            conn = DBUtil.getConnection();
            photos = photoDao.queryPhotosByImgPath(conn, photos.getImgPath());
            req.setAttribute("detailPhoto",photos);
            System.out.println(photos);
            req.getRequestDispatcher("/pages/user/detailShow.jsp").forward(req,resp);
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
        }
    }

    protected void keySearch(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String keySearch = req.getParameter("keySearch");
        System.out.println(keySearch);
        Connection conn=null;
        PhotoDao photoDao = new PhotoDaoImpl();
        try {
            conn = DBUtil.getConnection();
            List<Photos> keyPhotosList = photoDao.queryPhotosListBySearchKey(conn, "%"+keySearch+"%");
            req.getSession().setAttribute("keyPhotosList",keyPhotosList);
            System.out.println("成功！");
            req.getRequestDispatcher("/pages/user/keyShow.jsp?keyWords="+keySearch).forward(req,resp);
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
        }
    }

    protected void detailShow(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        int id = Integer.parseInt(req.getParameter("id"));
        detail(req,resp,id);
        req.getRequestDispatcher("/pages/user/detailShow.jsp").forward(req,resp);
    }

    protected void detail(HttpServletRequest req, HttpServletResponse resp,int id) throws ServletException, IOException {
        Connection conn=null;
        PhotoDao photoDao = new PhotoDaoImpl();
        try {
            conn = DBUtil.getConnection();
            Photos detailPhoto = photoDao.queryPhotosById(conn, id);
            req.setAttribute("detailPhoto",detailPhoto);
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
        }
    }
    protected void detailPhotos(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        int id = Integer.parseInt(req.getParameter("id"));
        detail(req,resp,id);
        req.getRequestDispatcher("/pages/admin/detailPhoto.jsp").forward(req,resp);
    }

    protected void deletePhotos(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        int id = Integer.parseInt(req.getParameter("id"));
        Connection conn=null;
        PhotoDao photoDao = new PhotoDaoImpl();
        try {
            conn = DBUtil.getConnection();
            if (photoDao.deletePhotosById(conn,id)>-1){
                System.out.println("成功！");
                req.getRequestDispatcher("/pages/admin/editPhotos.jsp").forward(req,resp);
            }
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
        }
    }
    protected void editPhotos(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        Connection conn=null;
        PhotoDao photoDao = new PhotoDaoImpl();
        try {
            conn = DBUtil.getConnection();
            List<Photos> photosList = photoDao.queryPhotosList(conn);
            req.getServletContext().setAttribute("photosList",photosList);
            req.getRequestDispatcher("/pages/admin/editPhotos.jsp").forward(req,resp);
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
        }
    }

    protected void addPhotos(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String title = null, type = null, source = null, content = null, imgPath = null, tips = null;

        boolean isMultipart = ServletFileUpload.isMultipartContent(req);
        if (isMultipart) {
            FileItemFactory factory = new DiskFileItemFactory();
            ServletFileUpload images = new ServletFileUpload(factory);
            try {
                List<FileItem> items = images.parseRequest(req);
                Iterator<FileItem> it = items.iterator();
                while (it.hasNext()) {
                    FileItem item = it.next();
                    String itemname = item.getFieldName();

                    if (item.isFormField()) {
                        if (itemname.equals("title")) {
                            title = item.getString("utf-8");
                        } else if (itemname.equals("type")) {
                            type = item.getString("utf-8");
                        } else if (itemname.equals("source")) {
                            source = item.getString("utf-8");
                        } else if (itemname.equals("content")) {
                            content = item.getString("utf-8");
//                            System.out.println(item.getString("utf-8"));
                        } else if (itemname.equals("tips")) {
                            tips = item.getString("utf-8");
                        }
                    } else {
                        String filename = item.getName();
//                        这里的文件要修改目录
//                        String path = "C:\\Users\\15312\\IdeaProjects\\myJava\\keshihua\\test1\\src\\main\\webapp\\static\\images";
                        String path = "C:\\Users\\15312\\IdeaProjects\\myJava\\keshihua\\photoShow\\src\\main\\webapp\\static\\img";
                        File fullFile = new File(filename);
                        File savedFile = new File(path, fullFile.getName());
                        imgPath = "static/img/" + fullFile.getName();
                        if (savedFile.exists()) {
                            System.out.println("已经存在重复文件");
                        } else {
                            item.write(savedFile);
                            System.out.println(filename + "上传成功!!!");
                        }
                    }

                }
            } catch (FileUploadException e) {
                e.printStackTrace();
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
        Date date = new Date();
        String getDate = String.format("%tc", date);
        Photos photos = new Photos();
        photos.setContent(content);
        photos.setDate(getDate);
        photos.setImgPath(imgPath);
        photos.setSource(source);
        photos.setTips(tips);
        photos.setTitle(title);
        photos.setType(type);
        System.out.println(photos);

        Connection conn = null;
        try {
            conn = DBUtil.getConnection();
            PhotoDao photoDao = new PhotoDaoImpl();
            if (photoDao.addPhotos(conn,photos) > -1) {
                System.out.println("成功！");
                req.getRequestDispatcher("/pages/admin/addPhotos.jsp?error=yes").forward(req, resp);
            } else {
                req.getRequestDispatcher("/pages/admin/addPhotos.jsp?error=no").forward(req, resp);
            }
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
//            DBUtil.close();
        }
    }

    protected void keyShow(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String keyWords = req.getParameter("keyWords");
        System.out.println(keyWords);
        Connection conn=null;
        PhotoDao photoDao = new PhotoDaoImpl();
        try {
            conn = DBUtil.getConnection();
            List<Photos> keyPhotosList = photoDao.queryPhotosListByKeyWords(conn, "%"+keyWords+"%");
            req.getSession().setAttribute("keyPhotosList",keyPhotosList);
            req.getRequestDispatcher("/pages/user/keyShow.jsp?keyWords="+keyWords).forward(req,resp);
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
        }
    }
}
