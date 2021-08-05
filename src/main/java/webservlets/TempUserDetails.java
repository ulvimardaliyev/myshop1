package webservlets;

public class TempUserDetails {

    private static TempUserDetails tempUserDetails = null;
    private int id;
    private String username;
    private String email;
    private String password;
    private String userSessionID;

    private TempUserDetails() {

    }

    public static TempUserDetails tempUserDetails() {
        if (tempUserDetails == null) {
            tempUserDetails = new TempUserDetails();
        }
        return tempUserDetails;
    }

    public void setId(int id) {
        this.id = id;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public void setUserSessionID(String userSessionID) {
        this.userSessionID = userSessionID;
    }

    public int getId() {
        return id;
    }

    public String getUsername() {
        return username;
    }

    public String getEmail() {
        return email;
    }

    public String getPassword() {
        return password;
    }

    public String getUserSessionID() {
        return userSessionID;
    }
}
