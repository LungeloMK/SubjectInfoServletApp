<%-- 
    Document   : emalahleni_outcome
    Created on : 11 Mar 2026, 11:52:32 PM
    Author     : CASH
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>eMalahleni Lectures Page</title>
    </head>
    <body>
        <h1>eMalahleni lectures</h1>
        <p>Below are details of eMalahleni lectures</p>
        <%
        String lnam1 = (String) request.getAttribute("name1");
        String lemail1 = (String) request.getAttribute("email1");
        String lnam2 = (String) request.getAttribute("name2");
        String lemail2 = (String) request.getAttribute("email2");
        String lnam3 = (String) request.getAttribute("name3");
        String lemail3 = (String) request.getAttribute("email3");        
        %>
        
        <table border = "1">
            <tr>
                <th>Name</th>
                <th>Email address</th>
            </tr>
            
            <tr>
                <td><%=lnam1%></td>
                <td><%=lemail1%></td>
            </tr>
            
            <tr>
                <td><%=lnam2%></td>
                <td><%=lemail2%></td>
            </tr>
            
            <tr>
                <td><%=lnam3%></td>
                <td><%=lemail3%></td>    
            </tr>
        </table>
                
                <p>
                    Click <a href="index.html">here</a> to go back to the main main page .
                </p>
    </body>
</html>
