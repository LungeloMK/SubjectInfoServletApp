/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package za.ac.tut.web;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class PolokwaneLecturersServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        
        String lect1Name = getServletConfig().getInitParameter("lect1_name");
        String lect1Email = getServletConfig().getInitParameter("lect1_email");
        String lect2Name = getServletConfig().getInitParameter("lect2_name");
        String lect2Email = getServletConfig().getInitParameter("lect2_email");
        String lect3Name = getServletConfig().getInitParameter("lect3_name");
        String lect3Email = getServletConfig().getInitParameter("lect3_email");
        
        
        request.setAttribute("lect1Name", lect1Name);
        request.setAttribute("lect1Email",lect1Email );
        request.setAttribute("lect2Name", lect2Name);
        request.setAttribute("lect2Email",lect2Email );
        request.setAttribute("lect3Name", lect3Name);
        request.setAttribute("lect3Email",lect3Email );
        
        RequestDispatcher disp = request.getRequestDispatcher("pokwane_outcome.jsp");
        disp.forward(request, response);
    }

    

}
