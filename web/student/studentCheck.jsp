<%-- 
    Document   : studentCheck
    Created on : Jun 13, 2019, 12:03:21 AM
    Author     : KaizoDono
--%>

<%@page import="javabean.booking"%>
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
            <table>
                <%
                    String status = (String)request.getAttribute("status");
                    if(status.equals("0"))
                    {
                %>
                <tr>
                    <td><h3 align="center">You don't have any propose title</h3></td>
                </tr>
                <%
                    }
                    else
                    {
                        booking b = (booking)request.getAttribute("studentBooking");
                %>
                <tr>
                    <td colspan="2"><h2><u>Booking Status</u></h2></td>
                </tr>                
                <tr>
                    <td>Supervisor Name:<b><%=b.getSupervisorname()%></b></td>
                    <td>Booking Date:<b><%=b.getBookingdate()%></b></td>
                </tr>
                <tr>
                    <td colspan="2">Propose Title:<b><%=b.getTitle()%></b></td>
                </tr>
                <tr>    
                    <td colspan="2">Status:
                        <%
                            if (b.getStatus().equals("Pending")) 
                            {
                                out.println("<font style='color: #c8a404;font-weight:bold; '>" + b.getStatus() + "</font>");
                            } 
                            else if (b.getStatus().equals("Approved")) 
                            {
                                out.println("<font style='color: green;font-weight:bold; '>" + b.getStatus() + "</font>");
                            } 
                            else if (b.getStatus().equals("Rejected")) 
                            {
                                out.println("<font style='color: red;font-weight:bold; '>" + b.getStatus() + "</font>");
                            }
                        %>
                    </td>
                </tr>
                <tr>
                    <td colspan="2">Notes<br><textarea rows="7" cols="80" readonly><%=b.getNotes()%></textarea></td>
                </tr>
                <%
                    }
                %>
            </table>
        </div>
    </body>
</html>
