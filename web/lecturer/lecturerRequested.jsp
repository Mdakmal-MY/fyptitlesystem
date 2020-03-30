<%-- 
    Document   : lecturerRequested
    Created on : Jun 13, 2019, 1:44:04 PM
    Author     : KaizoDono
--%>

<%@page import="java.util.ArrayList"%>
<%@page import="javabean.booking"%>
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
            <table>
                <%
                    String status = (String)request.getAttribute("status");
                    if(status.equals("0"))
                    {
                %>
                <tr>
                    <td colspan="5"><h3 align="center">Not Book Title Yet</h3></td>
                </tr>
                <%
                    }
                    else if(status.equals("1"))
                    {
                        ArrayList<booking> b = (ArrayList)request.getAttribute("superviseList");
                %>
                <tr>
                    <th>Student ID</th>
                    <th>Student Name</th>
                    <th>Book Title</th>
                    <th>Status</th>
                    <th>Action</th>
                </tr>
                <%
                        
                        for(int i=0; i<b.size();i++)
                        {
 
                %>
                <tr>
                    <td><%=b.get(i).getStudentid()%></td>
                    <td><%=b.get(i).getStudentname()%></td>
                    <td><%=b.get(i).getTitle()%></td>
                    <td>
                        <%
                            if (b.get(i).getStatus().equals("Pending")) 
                            {
                                out.println("<font style='color: #c8a404;font-weight:bold; '>" + b.get(i).getStatus() + "</font>");
                            } 
                            else if (b.get(i).getStatus().equals("Approved")) 
                            {
                                out.println("<font style='color: green;font-weight:bold; '>" + b.get(i).getStatus() + "</font>");
                            } 
                            else if (b.get(i).getStatus().equals("Rejected")) 
                            {
                                out.println("<font style='color: red;font-weight:bold; '>" + b.get(i).getStatus() + "</font>");
                            }
                        %>
                    </td>
                    <td>
                        <a href="./actionbookServlet?approve=<%=b.get(i).getBookingid()%>"><button id="approve">view</button></a> |
                        <a href="./actionbookServlet2?delete=<%=b.get(i).getBookingid()%>">
                            <button id="deleteUser"><img src="./images/010-rubbish-bin.png" class="icons"/></button></a> 
                    </td>
                </tr>   
                <%
                        }
                    }
                %>
            </table>
        </div>
    </body>
</html>
