
package za.ac.tut.web;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


public class eMalahleniLecturersServlet extends HttpServlet {

  
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
      
        String name1 = getServletConfig().getInitParameter("l1_name");
        String email1 = getServletConfig().getInitParameter("l1_email");
        String name2 = getServletConfig().getInitParameter("l2_name");
        String email2 = getServletConfig().getInitParameter("l2_email");
        String name3 = getServletConfig().getInitParameter("l3_name");
        String email3 = getServletConfig().getInitParameter("l3_email");

        
        request.setAttribute("name1",name1 );
        request.setAttribute("email1", email1);
        request.setAttribute("name2", name2);
        request.setAttribute("email2", email2);
        request.setAttribute("name3",name3 );
        request.setAttribute("email3",email3 );
        
        RequestDispatcher disp = request.getRequestDispatcher("emalahleni_outcome.jsp");
        disp.forward(request, response);
    }

    

}
