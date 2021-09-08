package servlet;

import com.mysql.cj.jdbc.Driver;
import org.junit.Test;

import java.sql.Connection;
import java.sql.SQLException;
import java.util.Properties;

/**
 * @author : author
 * @date : 20:10 2021/7/3
 */
public class test {
    @Test
    public void test() throws SQLException {
        Driver driver = new com.mysql.cj.jdbc.Driver();

        String url = "jdbc:mysql://localhost:3360/pictures";
        Properties info = new Properties();
        info.setProperty("user","root");
        info.setProperty("password","123456aaAA");
        Connection conn =driver.connect(url,info);
        System.out.println(conn);

    }
}
