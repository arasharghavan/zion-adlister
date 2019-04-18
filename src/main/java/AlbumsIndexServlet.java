import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "AlbumsIndexServlet", urlPatterns = "/albums")
public class AlbumsIndexServlet extends HttpServlet {
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setAttribute("albums", DaoFactory.getAlbumsDao().all());
        request.getRequestDispatcher("/WEB-INF/albums/index.jsp").forward(request, response);
    }
}