package dbconnection;

import java.io.File;
import java.io.FileReader;
import java.io.IOException;
import java.util.Properties;

public class DatabaseConnectionParser {
    private String user;
    private String password;
    private String url;

    public void parseFromFile() {
        Properties properties = new Properties();
        File file = new File("C:\\Users\\m.ulvi\\IdeaProjects\\myshop1\\src\\main\\webapp\\application.properties");

        try {
            FileReader fileReader = new FileReader(file);
            properties.load(fileReader);

        } catch (IOException e) {
            e.printStackTrace();
        }
        this.url = properties.getProperty("url");
        this.user = properties.getProperty("user");
        this.password = properties.getProperty("password");
    }

    public String getUser() {
        return user;
    }

    public String getPassword() {
        return password;
    }

    public String getUrl() {
        return url;
    }
}
