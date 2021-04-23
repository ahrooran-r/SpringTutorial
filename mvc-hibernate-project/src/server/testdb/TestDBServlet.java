package server.testdb;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

import java.sql.*;

@WebServlet(name = "TestDBServlet")
public class TestDBServlet extends HttpServlet {

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        // setup connection variables
        String user = "root";
        String pwd = "ahroo";

        String jdbcUrl = "jdbc:mysql://localhost:3306/web_customer_tracker";
        String driver = "com.mysql.jdbc.driver";

        // get connection to database
        try {

            Class.forName(driver);
            Connection conn = DriverManager.getConnection(jdbcUrl, user, pwd);
            conn.close();

            System.out.println("success");
        } catch (Exception e) {
            e.printStackTrace();
            throw new ServletException(e);
        }

    }
}
