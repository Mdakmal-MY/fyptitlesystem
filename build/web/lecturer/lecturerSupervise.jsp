<%-- 
    Document   : lecturerSupervise
    Created on : Jun 13, 2019, 5:45:32 PM
    Author     : KaizoDono
--%>

<%@page import="java.util.ArrayList"%>
<%@page import="javabean.fyp"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <div class="content-home" id="content-lecturer-home">
            <div class="content-home-main" id="content-lecturer-main">
                <p id="displayName">Welcome, <%@include file="sessionLecturer.jsp"%> </p>
            </div>
                <%
                    ArrayList<fyp> f = (ArrayList)request.getAttribute("viewsupervise");
                %>
            <table>
                <tr>
                    <td colspan="4"><p style="align:center;font-size: 25px;">Supervise Students</td>
                <tr>  
                <tr>
                    <th>Student ID</th>
                    <th>Student Name</th>
                    <th>Program</th>
                    <th>Faculty</th>
                </tr>
                <%
                    for(int i=0;i<f.size();i++)
                    {
                %>
                <tr>
                    <td><%=f.get(i).getSuperviseid()%></td>
                    <td><%=f.get(i).getSupervisename()%></td>
                    <td><%=f.get(i).getProgram()%></td>
                    <td><%=f.get(i).getFaculty()%></td>
                </tr> 
                <%
                    }
                %>
                
            </table>    
        </div>    
    </body>
</html>
