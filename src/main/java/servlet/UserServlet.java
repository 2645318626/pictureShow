package servlet;

import bean.Admin;
import dao.AdminDao;
import dao.impl.AdminDaoImpl;
import dbutil.DBUtil;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.lang.reflect.Method;
import java.sql.Connection;

/**
 * @author : author
 * @date : 11:18 2021/7/3
 */
@WebServlet(name = "UserServlet", value = "/userServlet")
public class UserServlet extends HttpServlet {
    @Override
    public void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
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

    @Override
    public void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        doPost(req,resp);
    }

    public void login(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String logUsername = req.getParameter("logUsername");
        String logPassword = req.getParameter("logPassword");
        AdminDao adminDao = new AdminDaoImpl();
        Connection conn=null;
        try {
            conn = DBUtil.getConnection();
            if (adminDao.queryAdminByUsername(conn,logUsername) == null) {
                req.getRequestDispatcher("/index.jsp?error=no").forward(req, resp);
            }
            if (adminDao.queryAdminByUsernameAndPassword(conn,logUsername,logPassword) != null) {
                req.getSession().setAttribute("username",logUsername);
                req.getRequestDispatcher("/index.jsp?error=yes").forward(req, resp);
            } else {
                req.getRequestDispatcher("/index.jsp?error=exist").forward(req, resp);
            }
        } catch (ServletException e) {
            e.printStackTrace();
        } catch (IOException e) {
            e.printStackTrace();
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
        }
    }


    public void register(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String regUsername = req.getParameter("regUsername");
        String regPassword = req.getParameter("regPassword");
        AdminDao adminDao = new AdminDaoImpl();
        System.out.println("注册");
        Connection conn = null;
        Admin admin = new Admin();
        admin.setUsername(regUsername);
        admin.setPassword(regPassword);
        System.out.println(admin);
        try {
            conn = DBUtil.getConnection();
            if (adminDao.queryAdminByUsername(conn,regUsername) != null) {
                req.getRequestDispatcher("/index.jsp?error=no").forward(req, resp);
            } else {
                adminDao.saveAdmin(conn,admin);
                System.out.println("注册成功");
                req.getRequestDispatcher("/index.jsp").forward(req, resp);
            }
        } catch (ServletException e) {
            e.printStackTrace();
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
        }
    }

}

