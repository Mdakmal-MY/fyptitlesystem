<%-- 
    Document   : side-header
    Created on : Jun 9, 2019, 8:18:19 PM
    Author     : KaizoDono
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>side-header</title>
    </head>
    <body>
        <div class="sidebar" id="sidebarstudent">
            <div class="sidebar-content" id="sidebarstudent-content">
                <p align="center">Student</p>
            </div>
            <a href="./checktitleServlet"><img src="./images/success.png" class="icons"/>Check Status</a>
            <a href="./proposetitleServlet"><img src="./images/briefing.png" class="icons"/>Propose Title</a>
            <a href="./updateaccServlet"><img src="./images/002-settings.png" class="icons"/>Update Account</a>
            <a href="./logoutServlet"><img src="./images/005-logout.png" class="icons"/>Logout</a>
        </div>
    </body>
</html>
