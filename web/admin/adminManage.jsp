<%-- 
    Document   : adminManage
    Created on : Jun 12, 2019, 3:06:11 PM
    Author     : KaizoDono
--%>

<%@page import="java.util.ArrayList"%>
<%@page import="javabean.fyp"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title></title>
        <link rel="stylesheet" type="text/css" href="style/style.css" />
    </head>
    <body>
    <div class="content-manage">
            <div class="content-manage-main">
                <p id="displayName">Welcome, <%@include file="sessionAdmin.jsp"%> </p>
            </div>
            <p id="tajukmanage">FYP Information</p>
        <% ArrayList<fyp> u = (ArrayList)request.getAttribute("fyplist");%>
        <table>
        <tr>
        <th>Supervisor ID</th>
        <th>Supervisor Name</th>
        <th>Student ID</th>
        <th>Student Name</th>
        <th>Faculty</th>
        <th>Action</th>
        </tr>
        
        <%
         for(int i=0; i<u.size(); i++)
        {

        %>
            <tr>
                <td><%=u.get(i).getSuperivorid()%></td>
                <td><%=u.get(i).getSupervisorname()%></td>
                <td><%=u.get(i).getSuperviseid()%></td>
                <td><%=u.get(i).getSupervisename()%></td>
                <td><%=u.get(i).getFaculty()%></td>       
                <td>
                    <a href="./addfypServlet?add=<%=u.get(i).getSuperivorid()%>"><button id="approve">Add</button></a> |
                    <a href="./updatefypServlet?update=<%=u.get(i).getFypid()%>"><button id="update">Update</button></a> |
                    <a href="./deletefypServlet?delete=<%=u.get(i).getFypid()%>">
                        <button id="deleteUser"><img src="./images/010-rubbish-bin.png" class="icons"/></button></a>                 
                </td>
            </tr>
        <%
        }
        %>
        </table>
        </div>
    </body>
</html>
