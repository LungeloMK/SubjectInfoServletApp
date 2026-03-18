<%-- 
    Document   : sosh_lecs
    Created on : 20 Feb 2026, 11:36:11 AM
    Author     : CASH
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Soshanguve Lecturers Page</title>
    </head>
    <body>
        <h1>Soshanguve lecturers</h1>
        
        <%
            String firstLecturerName = (String) request.getAttribute("firstLecturerName");
            String firstLecturerEmail = (String) request.getAttribute("firstLecturerEmail");
            String secondLecturerName = (String) request.getAttribute("secondLecturerName");
            String secondLecturerEmail = (String) request.getAttribute("secondLecturerEmail");
            String thirdLecturerName = (String) request.getAttribute("thirdLecturerName");
            String thirdLecturerEmail = (String) request.getAttribute("thirdLecturerEmail");
        %>
        
        <p>
            Below are the details of Soshanguve lecturers:
        </p>

        <table border="1">
            <tr>
                <th><b>Name</b></th>
                <th><b>Email address</b></th>
            </tr>

            <tr>
                <td><%=firstLecturerName%></td>
                <td><%=firstLecturerEmail%></td>
            </tr>
            
            <tr>
                <td><%=secondLecturerName%></td>
                <td><%=secondLecturerEmail%></td>
            </tr>
            
            <tr>
                <td><%=thirdLecturerName%></td>
                <td><%=thirdLecturerEmail%></td>
            </tr>
        </table>
            
        <p>
            Click <a href="index.html">here</a> to go back to the main page.
        </p>
    </body>
</html>