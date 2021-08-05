package dbconnection.sqlqueries;

import dbconnection.ConnectionToDatabase;
import webservlets.TempUserDetails;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class Select {
    //Object ile istifade etmek olar parametr gondermekcun
    public boolean hasUserOnDb(String username, String email) {
        String selectUserQuery = "Select username, email FROM user where username=? or email=?";
        boolean isUserOnDB = false;
        Connection connection = new ConnectionToDatabase().getConnection();

        try {
            PreparedStatement preparedStatement
                    = connection.prepareStatement(selectUserQuery);
            preparedStatement.setString(1, username);
            preparedStatement.setString(2, email);
            preparedStatement.execute();

            ResultSet resultSet = preparedStatement.executeQuery();
            while (resultSet.next()) {

                if (resultSet.getString("username").equals(username)) {
                    isUserOnDB = true;
                    System.out.println("isUserOnDB : " + isUserOnDB);
                } else if (resultSet.getString("email").equals(email)) {
                    isUserOnDB = true;
                    System.out.println("isUserOnDB : " + isUserOnDB);
                }
            }
            preparedStatement.close();
            resultSet.close();
            connection.close();
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return isUserOnDB;
    }

    public boolean forLogin(String email, String password) {
        TempUserDetails t1 = TempUserDetails.tempUserDetails();
        String selectUserQuery = "Select userID, username, email, password" +
                " FROM user where password=? and email=?";
        boolean isUserOnDB = false;
        Connection connection = new ConnectionToDatabase().getConnection();

        try {
            PreparedStatement preparedStatement
                    = connection.prepareStatement(selectUserQuery);
            preparedStatement.setString(1, password);
            preparedStatement.setString(2, email);
            preparedStatement.execute();

            ResultSet set = preparedStatement.executeQuery();
            String usernameFromDB = null;
            String passwordFromDB = null;
            int userIDFromDb = 0;
            String emailFromFromDB = null;
            while (set.next()) {
                userIDFromDb = set.getInt("userID");
                usernameFromDB = set.getString("username");
                emailFromFromDB = set.getString("email");
                passwordFromDB = set.getString("password");
            }

            //|| de ola biler

            if (email.equals(emailFromFromDB) && password.equals(passwordFromDB)) {
                isUserOnDB = true;
                t1.setEmail(emailFromFromDB);
                t1.setUsername(usernameFromDB);
                t1.setId(userIDFromDb);
                t1.setPassword(passwordFromDB);
            }
            preparedStatement.close();
            set.close();
            connection.close();
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return isUserOnDB;
    }
}
