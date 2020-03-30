<%-- 
    Document   : adminHome
    Created on : Jun 10, 2019, 10:17:11 PM
    Author     : KaizoDono
--%>

<%@page import="java.util.ArrayList"%>
<%@page import="javabean.users"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>        
        <div class="content-home">
            <div class="content-home-main">
                <p id="displayName">Welcome, <%@include file="sessionAdmin.jsp"%> </p>
            </div>
            <p id="tajuk">Registered User</p>
        <% ArrayList<users> u = (ArrayList)request.getAttribute("userlist");%>
        <table>
        <tr>
        <th>User ID</th>
        <th>Username</th>
        <th>User Level</th>
        <th>Status</th>
        <th>Action</th>
        </tr>
        
        <%
         for(int i=0; i<u.size(); i++)
        {

        %>
            <tr>
                <td><%=u.get(i).getUserid()%></td>
                <td><%=u.get(i).getUsername()%></td>
                <td><%=u.get(i).getUserlevel()%></td>
                <%
                if(u.get(i).getStatus().equals("Pending"))
                {
                    out.println("<td style='color: #c8a404;font-weight:bold; '>"+u.get(i).getStatus()+"</td>");
                }
                else if(u.get(i).getStatus().equals("Approved"))
                {
                    out.println("<td style='color: green;font-weight:bold; '>"+u.get(i).getStatus()+"</td>");    
                }
                else if(u.get(i).getStatus().equals("Rejected"))
                {
                    out.println("<td style='color: red;font-weight:bold; '>"+u.get(i).getStatus()+"</td>");    
                }
                %>
                <td>
                    <a href="./actionreqServlet?approve=<%=u.get(i).getUserid()%>"><button id="approve">Approve</button></a> |
                    <a href="./actionreqServlet2?reject=<%=u.get(i).getUserid()%>"><button id="reject">Reject</button></a> | 
                    <a href="./actionreqServlet3?delete=<%=u.get(i).getUserid()%>">
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
