package com.codeup.adlister;

public class Config {
    private String url = "jdbc:mysql://localhost/zion_adlister_db?serverTimezone=UTC&useSSL=false";
    private String user = "zion";
    private String password = "password";

    public String getUrl() {
        return this.url;
    }

    public String getUser() {
        return user;
    }

    public String getPassword() {
        return password;
    }
}
