package dbconnection;

import java.io.File;
import java.io.FileReader;
import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.util.Properties;

public class ConnectionToDatabase {

    private Connection connection;

    public Connection getConnection() {
        Properties properties = new Properties();
        File file = new File("C:\\Users\\m.ulvi\\IdeaProjects\\myshop1\\src\\main\\webapp\\WEB-INF\\application.properties");
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            FileReader fileReader = new FileReader(file);
            properties.load(fileReader);
            this.connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/mycustomshop", properties);
        } catch (ClassNotFoundException | SQLException | IOException e) {
            e.printStackTrace();
        }
        return this.connection;
    }
}
