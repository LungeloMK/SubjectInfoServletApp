<%-- 
    Document   : subject_details
    Created on : 20 Feb 2026, 10:32:15 AM
    Author     : CASH
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Subject Details Page</title>
    </head>
    <body>
        <h1>Subject details</h1>
        
        <%
        String subjectName = pageContext.getServletContext().getInitParameter("subject_name");
        String subjectCode = pageContext.getServletContext().getInitParameter("subject_code");
        String subjectHeadName = pageContext.getServletContext().getInitParameter("subject_head_name");
        String subjectHeadEmail = pageContext.getServletContext().getInitParameter("subject_head_email");
        Integer  numClassTests = Integer.parseInt(pageContext.getServletContext().getInitParameter("num_class_tests"));
        Integer numSemesterTests = Integer.parseInt(pageContext.getServletContext().getInitParameter("num_semester_tests"));
        Integer numQuizzes = Integer.parseInt(pageContext.getServletContext().getInitParameter("num_quizzes"));
        Integer numProjects = Integer.parseInt(pageContext.getServletContext().getInitParameter("num_projects"));
        %>
        
        <p>
            Below are the subject details:
        </p>
        
        <table border="1">
            <tr>
                <td>Subject name:</td>
                <td><%=subjectName%></td>
            </tr>
            
            <tr>
                <td>Subject code:</td>
                <td><%=subjectCode%></td>                
            </tr>
            
            <tr>
                <td>Subject head name:</td>
                <td><%=subjectHeadName%></td>                
            </tr>
            
            <tr>
                <td>Subject head email:</td>
                <td><%=subjectHeadEmail%></td>                
            </tr>
            
            <tr>
                <td>Number of Class Tests:</td>
                <td><%=numClassTests%></td>                
            </tr>
            
            <tr>
                <td>Number of Semester tests:</td>
                <td><%=numSemesterTests%></td>                
            </tr>
            
            <tr>
                <td>Number of Quizzes:</td>
                <td><%=numQuizzes%></td>                
            </tr>
            
            <tr>
                <td>Number of Projects:</td>
                <td><%=numProjects%></td>                
            </tr>

           
        </table>
            <p>
                Click <a href="index.html">here</a> to go back to the main page.
            </p>
    </body>
</html>
