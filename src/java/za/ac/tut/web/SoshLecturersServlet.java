package za.ac.tut.web;

import java.io.IOException;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class SoshLecturersServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        String firstLecturerName = getServletConfig().getInitParameter("lec1_name");
        String firstLecturerEmail = getServletConfig().getInitParameter("lec1_email");
        String secondLecturerName = getServletConfig().getInitParameter("lec2_name");
        String secondLecturerEmail = getServletConfig().getInitParameter("lec2_email");
        String thirdLecturerName = getServletConfig().getInitParameter("lec3_name");
        String thirdLecturerEmail = getServletConfig().getInitParameter("lec3_email");
        
        System.out.println("sosh lecturers" + "\n" + "====================");
        System.out.println("name " + firstLecturerName);
        System.out.println("email " + firstLecturerEmail);
        System.out.println("");
        System.out.println("name " + secondLecturerName);
        System.out.println("email " + secondLecturerEmail);
        System.out.println("");
        System.out.println("name " + thirdLecturerName);
        System.out.println("email " + thirdLecturerEmail);
        System.out.println("");

        request.setAttribute("firstLecturerName", firstLecturerName);
        request.setAttribute("firstLecturerEmail", firstLecturerEmail);
        request.setAttribute("secondLecturerName", secondLecturerName);
        request.setAttribute("secondLecturerEmail", secondLecturerEmail);
        request.setAttribute("thirdLecturerName", thirdLecturerName);
        request.setAttribute("thirdLecturerEmail", thirdLecturerEmail);
       
        RequestDispatcher disp = request.getRequestDispatcher("sosh_lecs.jsp");
        disp.forward(request, response);
    }
}