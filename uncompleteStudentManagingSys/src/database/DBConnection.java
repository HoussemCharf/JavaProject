package database;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

/**
 * Created by TekSliver
 */


/*private String url = "jdbc:mysql://localhost:3306/uiuStudentRecordSystem";
    private String user = "root";
    private String pass = "1234";*/




public class DBConnection {
    private Connection connection;
    private String url = "jdbc:mysql://localhost:3306/StudentRecSys";
    private String user = "root";
    private String pass = "";

    public Connection getConnection() throws SQLException {
        connection = DriverManager.getConnection(url,user,pass);
        return connection;
    }

}
