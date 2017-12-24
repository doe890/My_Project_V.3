/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Model;

/**
 *
 * @author admin
 */
public class Users {
    private long userID;
    private String userName;
    private String userEmail;
    private String userpass;
    private boolean userRole;

    public Users() {
    }

    public Users(long userID, String userName, String userEmail, String userpass, boolean userRole) {
        this.userID = userID;
        this.userName = userName;
        this.userEmail = userEmail;
        this.userpass = userpass;
        this.userRole = userRole;
    }

    public long getUserID() {
        return userID;
    }

    public void setUserID(long userID) {
        this.userID = userID;
    }

    public String getUserName() {
        return userName;
    }

    public void setUserName(String userName) {
        this.userName = userName;
    }

    public String getUserEmail() {
        return userEmail;
    }

    public void setUserEmail(String userEmail) {
        this.userEmail = userEmail;
    }

    public String getUserpass() {
        return userpass;
    }

    public void setUserpass(String userpass) {
        this.userpass = userpass;
    }

    public boolean isUserRole() {
        return userRole;
    }

    public void setUserRole(boolean userRole) {
        this.userRole = userRole;
    }

 
    
}
