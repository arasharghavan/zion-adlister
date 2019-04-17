import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;
import java.io.*;

@WebServlet(urlPatterns = "/hello")
public class HelloWorldServlet extends HttpServlet {
int counter = 0;

    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws IOException, ServletException {
        System.out.println("in HelloWorldServlet.doGet()");

        counter++;
        String name = request.getParameter("name");
        if (name == null) name = "World";

//        res.setContentType("text/html");
//        PrintWriter out = res.getWriter();
//        String message = "Hello " + name + "!";
//        out.println(message);

        request.setAttribute("name", name);
        request.setAttribute("count", counter);
        request.getRequestDispatcher("/hello.jsp").forward(request, response);
    }
}
