package dao;

import bean.Photos;

import java.sql.Connection;
import java.util.List;

/**
 * @author : author
 * @date : 14:50 2021/7/3
 */
public interface PhotoDao {
    /**
     * 查询信息所有信息
     *
     * @return 如果返回null, 说明没有新闻。反之亦然
     */
    public List<Photos> queryPhotosList(Connection conn);

    /**
     * 图片上传
     *
     * @param Photos
     * @return 返回-1表示操作失败，其他是sql语句影响的行数
     */
    public int addPhotos(Connection conn, Photos Photos);

    /**
     * 删除图片
     *
     * @param id
     * @return 返回-1表示操作失败，其他是sql语句影响的行数
     */
    public int deletePhotosById(Connection conn, int id);

    /**
     * 根据图片id查询一条信息
     *
     * @param id
     * @return 如果返回null, 说明没有新闻。反之亦然
     */
    public Photos queryPhotosById(Connection conn, int id);

    /**
     * 根据图片路径查询信息
     *
     * @param imgPath
     * @return 如果返回null, 说明没有新闻。反之亦然
     */
    public Photos queryPhotosByImgPath(Connection conn, String imgPath);

    /**
     * 根据图片关键词查询新闻信息
     * @param keyWords
     * @return 如果返回null, 说明没有新闻。反之亦然
     */
    public List<Photos> queryPhotosListByKeyWords(Connection conn, String keyWords);

    /**
     * 根据图片关键词查询新闻信息
     * @param keyWords
     * @return 如果返回null, 说明没有新闻。反之亦然
     */
    public List<Photos> queryPhotosListByTips(Connection conn, String keyWords);

    /**
     * 根据搜索词模糊查询图片信息
     * @param searchKey
     * @return 如果返回null, 说明没有新闻。反之亦然
     */
    public List<Photos> queryPhotosListBySearchKey(Connection conn, String searchKey);

}
