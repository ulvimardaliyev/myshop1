package dbconnection.sqlqueries;


import dbconnection.ConnectionToDatabase;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

public class Insert {
    private String sqlQuery = "Insert into user (username, email, password) values (?, ?, ?)";

    public boolean isNewUser(String username, String password, String email) {
        boolean isCreated = false;
        Connection connection = new ConnectionToDatabase().getConnection();

        try {
            PreparedStatement preparedStatement = connection.prepareStatement(sqlQuery);
            preparedStatement.setString(1, username);
            preparedStatement.setString(2, email);
            preparedStatement.setString(3, password);
            int result = preparedStatement.executeUpdate();
            if (result == 1) {
                isCreated = true;
            }
            preparedStatement.close();
            connection.close();
        } catch (SQLException e) {
            e.printStackTrace();
        }

        return isCreated;
    }
}
