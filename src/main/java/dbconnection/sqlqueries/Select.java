package dbconnection.sqlqueries;

import dbconnection.ConnectionToDatabase;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class Select {
    //Object ile istifade etmek olar parametr gondermekcun


    public boolean hasUserOnDb(String username, String email) {
        String selectUserQuery = "Select username, email FROM user where username=? and email=?";
        boolean isUserOnDB = false;
        Connection connection = new ConnectionToDatabase().getConnection();

        try {
            PreparedStatement preparedStatement
                    = connection.prepareStatement(selectUserQuery);
            preparedStatement.setString(1, username);
            preparedStatement.setString(2, email);
            preparedStatement.execute();
            String usernameFromDB = null;
            String emailFromDB = null;

            ResultSet set = preparedStatement.executeQuery();
            for (int i = 1; set.next(); i++) {
                switch (i) {
                    case 1:
                        usernameFromDB = set.getString(i);
                        break;
                    case 2:
                        emailFromDB = set.getString(i);
                        break;
                    default:
                        isUserOnDB = false;
                        break;
                }
            }
            if (email.equals(emailFromDB) || username.equals(usernameFromDB)) {
                isUserOnDB = true;
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return isUserOnDB;
    }

    public boolean forLogin(String email, String password) {
        String selectUserQuery = "Select password, email FROM user where password=? and email=?";
        boolean isUserOnDB = false;
        Connection connection = new ConnectionToDatabase().getConnection();

        try {
            PreparedStatement preparedStatement
                    = connection.prepareStatement(selectUserQuery);
            preparedStatement.setString(1, password);
            preparedStatement.setString(2, email);
            preparedStatement.execute();
            String passwordFromDB = null;
            String emailFromDB = null;

            ResultSet set = preparedStatement.executeQuery();
            for (int i = 1; set.next(); i++) {
                switch (i) {
                    case 1:
                        passwordFromDB = set.getString(i);
                        break;
                    case 2:
                        emailFromDB = set.getString(i);
                        break;
                    default:
                        isUserOnDB = false;
                        break;
                }
            }
            if (email.equals(emailFromDB) || password.equals(passwordFromDB)) {
                isUserOnDB = true;
            }
            connection.close();
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return isUserOnDB;
    }

}
