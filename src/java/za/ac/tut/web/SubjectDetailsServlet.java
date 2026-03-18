
package za.ac.tut.web;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


public class SubjectDetailsServlet extends HttpServlet {


    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String subjectName = (String)getServletContext().getInitParameter("subject_name");
        String subjectCode = (String)getServletContext().getInitParameter("subject_code");
        String subjectHeadName = (String)getServletContext().getInitParameter("subject_head_name");
        String subjectHeadEmail = (String)getServletContext().getInitParameter("subject_head_email");
        Integer numClassTests = Integer.parseInt(getServletContext().getInitParameter("num_class_tests"));
        Integer numSemesterTests = Integer.parseInt(getServletContext().getInitParameter("num_semester_tests"));
        Integer numQuizzes = Integer.parseInt(getServletContext().getInitParameter("num_quizzes"));
        Integer numProjects = Integer.parseInt(getServletContext().getInitParameter("num_projects"));
        

        RequestDispatcher disp = request.getRequestDispatcher("subject_details.jsp");
        disp.forward(request, response);
        
        
        
    }

    

}
