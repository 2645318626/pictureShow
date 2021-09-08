package dao.impl;


import bean.Admin;
import dao.AdminDao;

import java.sql.Connection;

public class AdminDaoImpl extends BaseDao implements AdminDao {
    @Override
    public Admin queryAdminByUsername(Connection conn, String username) {
        String sql = "select `id`,`username`,`password` from admin where username = ?";
        return queryForOne(conn,Admin.class, sql, username);
    }

    @Override
    public Admin queryAdminByUsernameAndPassword(Connection conn,String username,String password) {
        String sql = "select `id`,`username`,`password` from admin where username = ? and password = ?";
        return queryForOne(conn,Admin.class, sql, username,password);
    }

    @Override
    public int saveAdmin(Connection conn, Admin admin) {
        String sql = "insert into admin(`username`,`password`) values(?,?)";
        return update(conn,sql, admin.getUsername(),admin.getPassword());
    }

}
