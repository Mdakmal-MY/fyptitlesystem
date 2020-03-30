<%-- 
    Document   : header
    Created on : Apr 10, 2019, 10:33:29 PM
    Author     : KaizoDono
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Header</title>
    </head>
    <body>
        <div class="header">
            <ul class="menu">
                <li><a href="approvedServlet" id="logo">FYP Title Booking  System</a></li>
                <li class="menu-option"><a href="#" class="menu-line" id="signinBtn">Sign In</a></li>
                <li class="menu-option"><a href="register.jsp" class="menu-line">Register</a></li>
            </ul>
        </div>
        <%@ include file="login.jsp"%>
        <script src="js/script.js"></script>
    </body>
</html>
