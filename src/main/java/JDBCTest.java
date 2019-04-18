import com.mysql.cj.jdbc.Driver;

import java.sql.*;

public class JDBCTest {

    public static void main(String[] args) {

        try {
            DriverManager.registerDriver(new Driver());
            Connection connection = DriverManager.getConnection(
                    "jdbc:mysql://localhost/zion_test_db?serverTimezone=UTC&useSSL=false",
                    "root",
                    "codeup"
            );

            Statement stmt = connection.createStatement();

            // Pretend this vars come from the form submission
            String artist = "Nellys";
            String album = "Looses";
            String year = "2007";

            stmt.executeUpdate("INSERT INTO albums (artist, name, release_year, sales, genre) values('"+artist+"','"+album+"','"+year+"', 90, 'pop')");

            stmt.executeUpdate(String.format("INSERT INTO albums (artist, name, release_year, sales, genre) values('%s', '%s', '%s', 90, 'pop')", artist, album, year));

            ResultSet rs = stmt.executeQuery("select * from albums");

            while(rs.next()){
                System.out.println("id in table " + rs.getInt("id"));
                System.out.println("artist name " + rs.getString("artist"));
                System.out.println("album name " + rs.getString("name"));
            }



        } catch (SQLException e) {
            e.printStackTrace();
        }


    }

}
