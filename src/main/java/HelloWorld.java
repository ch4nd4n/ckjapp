import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.*;
import org.eclipse.jetty.server.Server;
import org.eclipse.jetty.servlet.*;
import java.util.Date;
public class HelloWorld extends HttpServlet {

    @Override
    public void doGet(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {
        System.out.println(req);
        System.out.println(new Date());
        try{
          Thread.currentThread().sleep(5000);
        }catch(Exception e)
        {System.out.println("I still failed");}
        System.out.println(req + " over");
        System.out.println(new Date());
        resp.getWriter().print("Hello from Java!\n");
    }

    public static void main(String[] args) throws Exception{
        Server server = new Server(Integer.valueOf(System.getenv("PORT")));
        ServletContextHandler context = new ServletContextHandler(ServletContextHandler.SESSIONS);
        context.setContextPath("/");
        server.setHandler(context);
        context.addServlet(new ServletHolder(new HelloWorld()),"/*");
        server.start();
        server.join();
    }
}
