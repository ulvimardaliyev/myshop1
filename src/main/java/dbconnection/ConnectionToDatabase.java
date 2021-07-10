package dbconnection;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class ConnectionToDatabase{

    private Connection connection;


    public Connection getConnection() {
        DatabaseConnectionParser dbDetails = new DatabaseConnectionParser();
        dbDetails.parseFromFile();
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            this.connection = DriverManager.getConnection(dbDetails.getUrl(),
                    dbDetails.getUser(), dbDetails.getPassword());

        } catch (ClassNotFoundException | SQLException e) {
            e.printStackTrace();
        }
        return this.connection;
    }
}
