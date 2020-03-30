<%-- 
    Document   : sessionAdmin
    Created on : Jun 11, 2019, 1:26:13 AM
    Author     : KaizoDono
--%>

<%@page import="javabean.users"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <% 
            if(session != null) 
            {
                if(session.getAttribute("CurrentUser") != null) 
                {
                    String[] u =  (String[])session.getAttribute("CurrentUser");
                    out.print("<font style='color:white;'>"+u[3]+" !</font>");
                }
                else 
                {
                    response.sendRedirect("./index.jsp");
                }
            }
        %>
    </body>
</html>
