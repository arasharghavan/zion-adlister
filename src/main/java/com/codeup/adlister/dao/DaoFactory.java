package com.codeup.adlister.dao;

import com.codeup.adlister.Config;
//import Config;

public class DaoFactory {
    private static Ads adsDao;
    private static Users usersDao;
    private static Config config = new Config();
    private static Cat catDao;

    public static Ads getAdsDao() {
        if (adsDao == null) {
            adsDao = new MySQLAdsDao(config);
        }
        return adsDao;
    }

    public static Users getUsersDao() {
        if (usersDao == null) {
            usersDao = new MySQLUsersDao(config);
        }
        return usersDao;
    }

//    public static Cat getCatsDao(){
//        if (catDao == null){
//            catDao = new MySQLCatDao(config);
//        }
//        return catDao;
//    }
}
