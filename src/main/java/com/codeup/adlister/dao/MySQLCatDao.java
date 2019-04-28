//package com.codeup.adlister.dao;
//
//        import com.codeup.adlister.Config;
//        import com.codeup.adlister.models.Ad;
//        import com.mysql.cj.jdbc.Driver;
//
//        import java.io.FileInputStream;
//        import java.io.IOException;
//        import java.io.InputStream;
//        import java.sql.*;
//        import java.util.ArrayList;
//        import java.util.List;
//
//public class  MySQLCatDao implements Cat {
//    private Connection connection = null;
//
//    public  MySQLCatDao(Config config) {
//        try {
//            DriverManager.registerDriver(new Driver());
//            connection = DriverManager.getConnection(
//                    config.getUrl(),
//                    config.getUser(),
//                    config.getPassword()
//            );
//        } catch (SQLException e) {
//            throw new RuntimeException("Error connecting to the database!", e);
//        }
//    }
//
//    @Override
//    public List<Cat> all() {
//        PreparedStatement stmt = null;
//        try {
//            stmt = connection.prepareStatement("SELECT * FROM categories");
//            ResultSet rs = stmt.executeQuery();
//            return createCatsFromResults(rs);
//        } catch (SQLException e) {
//            throw new RuntimeException("Error retrieving all ads.", e);
//        }
//    }
//
//    @Override
//    public Long insert(Cat cat) {
//        try {
//            String insertQuery = "INSERT INTO categories(ad_id, year, price, mileage, make, model, transmission, color, fule, carCondition, engineType) VALUES (?,?,?,?,?,?,?,?,?,?,?,?)";
//            PreparedStatement stmt = connection.prepareStatement(insertQuery, Statement.RETURN_GENERATED_KEYS);
//            stmt.setLong(1, Cat.);
//
//
//
//
//
//
//            stmt.executeUpdate();
//            ResultSet rs = stmt.getGeneratedKeys();
//            rs.next();
//            return rs.getLong(1);
//        } catch (SQLException e) {
//            throw new RuntimeException("Error creating a new ad.", e);
//        }
//    }
//
//    @Override
//    public List<Cat> search(Cat cat) {
//        return null;
//    }
//
//    @Override
//    public void updateCat(Cat cat) {
//
//    }
//
//    private Cat extractAd(ResultSet rs) throws SQLException {
//        return new Ad(
//
//                rs.getLong("ad_id"),
//                rs.getString("make"),
//                rs.getString("model")
//
//        );
//    }
//
//    private List<Ad> createAdsFromResults(ResultSet rs) throws SQLException {
//        List<Ad> ads = new ArrayList<>();
//        while (rs.next()) {
//            ads.add(extractAd(rs));
//        }
//        return ads;
//    }
//
//
//
//    @Override
//    public List<Cat> search(String input) {
//        PreparedStatement stmt = null;
//        try {
//            stmt = connection.prepareStatement("SELECT * FROM categories where ad_id LIKE ? or description like ?");
//            stmt.setString(1,"%"+input+"%");
//            stmt.setString(2,"%"+input+"%");
//
//            ResultSet rs = stmt.executeQuery();
//            return createAdsFromResults(rs);
//        } catch (SQLException e) {
//            throw new RuntimeException("Error retrieving all ads.", e);
//        }
//    }
//
//    public void updateAds(Ad ad){
//        String query = "update ads set title = ?, description = ? where user_id = ?";
//        try {
//            PreparedStatement stmt = connection.prepareStatement(query, Statement.RETURN_GENERATED_KEYS);
//            stmt.setLong(3, ad.getUserId());
//            stmt.setString(2, ad.getDescription());
//            stmt.setString(1, ad.getTitle());
////            stmt.setLong(4, ad.getId());
//            stmt.executeUpdate();
//            stmt.close();
//
//        } catch (SQLException e){
//            throw new RuntimeException("Error creating new user", e);
//        }
//    }
//
//
//
//}
