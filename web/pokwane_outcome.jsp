<%-- 
    Document   : pokwane_outcome
    Created on : 11 Mar 2026, 11:09:10 PM
    Author     : CASH
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Polokwane Lectures Page</title>
    </head>
    <body>
        <h1>Polokwane lectures</h1>
        <p>
            Below are the details of Polokwane lectures:
        </p>
         <%
         String name1 = (String)request.getAttribute("lect1Name");
         String email1 = (String)request.getAttribute("lect1Email");
         
         String name2 = (String)request.getAttribute("lect2Name");
         String email2 = (String)request.getAttribute("lect3Email"); 
         
         String name3 = (String)request.getAttribute("lect3Name");
         String email3 = (String)request.getAttribute("lect3Email"); 
         %>
        <table border = "1">
            <tr>
                <th>Name</th>
                <th>Email address</th>
            </tr>
            <tr>
                <td><%=name1%></td>
                <td><%=email1%></td>
            </tr>
            <tr>
                <td><%=name2%></td>
                <td><%=email2%></td>

            </tr>
            <tr>
                <td><%=name3%></td>
                <td><%=email3%></td>

            </tr>
        </table>
                
                <p>
                    Click <a href="index.html">here</a> to go back to the main page
                </p>
    </body>
</html>
