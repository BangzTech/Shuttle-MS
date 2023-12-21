package backend;

import java.io.IOException;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet(name = "Driver", urlPatterns = {"/driver"})
public class Driver extends HttpServlet {
    
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String source = request.getParameter("source");
        String url = "/index.jsp";
        String info = "";
        HttpSession session = request.getSession();
        switch(source){
            case "signin":
                url = "/signin.jsp";
                String l_phone = request.getParameter("phone");
                String psw = request.getParameter("psw");
                User user = new User();
                try {
                    user = Conductor.signIn(l_phone,psw);
                } catch (ClassNotFoundException ex) {
                    user.setState("error");
                    Logger.getLogger(Driver.class.getName()).log(Level.SEVERE, null, ex);
                }
                switch(user.getState()){
                    case "valid":
                        url = "/dashboard.jsp";
                        session.setAttribute("user", user);
                        break;
                    case "invalid":
                        info = "Invalid credentials.";
                        break;
                    case "nil":
                        info = "No such account exists.";
                        break;
                    default:
                        info = "Oops! Something went wrong.";
                        break;
                }
                break;
            case "signup":
                String name = request.getParameter("name");
                String phone = request.getParameter("phone");
                String password = request.getParameter("psw");
                String type = request.getParameter("type");
                try {
                    Conductor.signUp(name, phone, password, type);
                } catch (ClassNotFoundException ex) {
                    Logger.getLogger(Driver.class.getName()).log(Level.SEVERE, null, ex);
                }
                url = "/signin.jsp";
                break;
            default:
                break;
        }
        request.setAttribute("info", info);
        getServletContext().getRequestDispatcher(url).forward(request, response);
    }
    
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        doPost(request, response);
    }
}
