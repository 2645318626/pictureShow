package com.example.phtoShow;

import bean.Admin;
import dao.AdminDao;
import dao.impl.AdminDaoImpl;
import dbutil.DBUtil;

import java.sql.Connection;

/**
 * @author : author
 * @date : 18:05 2021/7/3
 */
public class test {

    public static void main(String[] args) {
        try {
            Connection conn = DBUtil.getConnection();
            AdminDao adminDao = new AdminDaoImpl();
            Admin user = adminDao.queryAdminByUsername(conn, "小明");
            System.out.println(user);
            System.out.println(conn.getSchema());
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
        }
    }
}
