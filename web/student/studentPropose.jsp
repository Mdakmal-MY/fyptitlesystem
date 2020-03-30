<%-- 
    Document   : studentPropose
    Created on : Jun 13, 2019, 2:39:40 AM
    Author     : KaizoDono
--%>

<%@page import="javabean.fyp"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <div class="content-home" id="content-home1">
            <div class="content-home-main" id="content-home-main1">
                <p id="displayName">Welcome, <%@include file="sessionStudent.jsp"%> </p>
            </div>
            <p id="tajukPropose">Book FYP Title</p>
            <form action="./proposeNow" method="POST" class="bookForm">
            <table id="proposeTable">
                <%
                    fyp f = (fyp)request.getAttribute("fypInformation");
                %>
                <tr>
                    <td>Supervisor Name: 
                        <input type="hidden" value="<%=f.getFypid()%>" name="fypid"><b><%=f.getSupervisorname()%><b></td>
                </tr>
                <tr>
                    <td>Propose Title:<br><input type="text" name="title" size="100" required=""/></td>
                </tr>
                <tr>
                    <td >Notes<br><textarea  rows="6" cols="50" name="notes"></textarea></td>
                </tr>
                <tr>
                    <td><input type="submit" value="Book Now" class="approveBtn"></td>
                </tr>                
            </table>
            </form>
        </div>  
    </body>
</html>
