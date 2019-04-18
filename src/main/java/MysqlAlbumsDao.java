import com.mysql.cj.jdbc.Driver;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class MysqlAlbumsDao implements Albums {
    private List<Album> albums = new ArrayList<>();

    public List<Album> all() {
        try {
            DriverManager.registerDriver(new Driver());
            Connection connection = DriverManager.getConnection(
                    Config.getUrl(),
                    Config.getUsername(),
                    Config.getPassword()
            );

            Statement stmt = connection.createStatement();
            ResultSet rs = stmt.executeQuery("select * from albums");

            // TRANSLATING THE RESULTSET INTO A JAVA ARRAYLIST
            while(rs.next()){
                albums.add(
                        new Album(
                            rs.getInt("id"),
                            rs.getString("artist"),
                            rs.getString("name"),
                            rs.getString("release_year"),
                            rs.getDouble("sales"),
                            rs.getString("genre")
                        )
                );
                }

        } catch (SQLException e) {
            e.printStackTrace();
        }

        return albums;
    }

}
