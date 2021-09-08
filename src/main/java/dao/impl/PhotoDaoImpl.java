package dao.impl;

import bean.Photos;
import dao.PhotoDao;

import java.sql.Connection;
import java.util.List;

/**
 * @author : author
 * @date : 14:55 2021/7/3
 */
public class PhotoDaoImpl extends BaseDao implements PhotoDao {
    @Override
    public List<Photos> queryPhotosList(Connection conn) {
        String sql = "select * from photos";
        return queryForList(conn, Photos.class, sql);
    }

    @Override
    public int addPhotos(Connection conn, Photos photos) {
        String sql = "insert into photos(`imgPath`,`content`,`title`,`type`,`tips`,`date`,`source`) values(?,?,?,?,?,?,?)";
        return update(conn, sql, photos.getImgPath(), photos.getContent(), photos.getTitle(), photos.getType(), photos.getTips(), photos.getDate(), photos.getSource());
    }

    @Override
    public int deletePhotosById(Connection conn, int id) {
        String sql = "delete from photos where id=?";
        return update(conn, sql, id);
    }

    @Override
    public Photos queryPhotosById(Connection conn, int id) {
        String sql = "select * from photos where id=?";
        return queryForOne(conn, Photos.class, sql, id);
    }

    @Override
    public Photos queryPhotosByImgPath(Connection conn, String imgPath) {
        String sql = "select * from photos where imgPath=?";
        return queryForOne(conn, Photos.class, sql, imgPath);
    }

    @Override
    public List<Photos> queryPhotosListByTips(Connection conn, String tips) {
        String sql = "select * from photos where tips=?";
        return queryForList(conn, Photos.class, sql, tips);
    }

    @Override
    public List<Photos> queryPhotosListByKeyWords(Connection conn, String keyWords) {
        String sql = "select * from photos where concat(title,type,tips,content) like ?";
        return queryForList(conn, Photos.class, sql, keyWords);
    }

    @Override
    public List<Photos> queryPhotosListBySearchKey(Connection conn, String searchKey) {
        String sql = "select * from photos where concat(tips,type,title) like ?";
        return queryForList(conn, Photos.class, sql, searchKey);
    }
}
