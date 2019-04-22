import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "HelloServlet", urlPatterns = "/hello")
public class HelloServlet extends HttpServlet {
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
        String name = request.getParameter("name");
        if (name == null) {
            name = "World";
            Cookie[] cookies = request.getCookies();
            for (Cookie cookie : cookies ) {
                if (cookie.getName().equals("name")) {
                    name = cookie.getValue();
                }
            }
        } else
            response.addCookie(new Cookie("name", name));

//        String newCookieName = request.getParameterMap().keySet().toArray()[0].toString();
//
//        String newCookieValue = request.getParameter(newCookieName);
//        response.addCookie(new Cookie(newCookieName, newCookieValue));

        response.getWriter().println("<h1>Hello, "+name+"!</h1>");
    }
}
