package TestProject;

import java.sql.Connection;
import java.sql.DriverManager;

public class connectConfig {

    public static Connection getConnection() {
        Connection connection = null;

        try {
            Class.forName("com.mysql.jdbc.Driver");
            connection = (Connection) DriverManager.getConnection("jdbc:mysql://localhost:3306/hospital", "root", "");
            System.out.println("Connected");
        } catch (Exception e) {
            e.printStackTrace();
        }

        return connection;
    }


}