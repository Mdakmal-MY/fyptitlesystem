<%-- 
    Document   : adminHome2
    Created on : Jun 11, 2019, 11:43:17 AM
    Author     : KaizoDono
--%>

<%@page import="javabean.booking"%>
<%@page import="javabean.users"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Title proposed</title>
        <link rel="stylesheet" type="text/css" href="style/style.css" />
    </head>
    <body>
        <%
            booking b = (booking)request.getAttribute("supervise");
        %>
        <div class="approvecontainer" id="approvecontainer2">
            
        <form action="./actionbookServelt1" method="post" class="approveForm" id="confirmbooking">
            <span class="closeApprove"><a href="./requesttitleServlet">&times;</a></span> 
            <table>
                <tr>
                    <td colspan="2"><h3>Booking Title: <%=b.getTitle()%></h3></td>
                </tr>    
                <tr>
                    <td>Student ID: <%=b.getStudentid()%> </td>
                    <td>Booking Date: <%=b.getBookingdate()%></td>
                </tr>
                <tr>
                    <td colspan="2">Student Name: <%=b.getStudentname()%> </td>
                </tr>
                <tr>
                    <td colspan="2">Notes:<br><textarea readonly rows="5" cols="50"><%=b.getNotes()%></textarea></td>
                </tr> 
                <tr>
                    <td colspan="2">
                        <input type="hidden" value="<%=b.getBookingid()%>" name="bookid"/>
                        Reason:<br><textarea rows="5" cols="50" name="reason"></textarea></td>
                </tr>                  
                <tr>
                    <td align="center" colspan="2">
                        <input type="submit" value="Approve" name="action" id="approve">
                        <input type="submit" value="Reject" name="action" id="reject">
                    </td>
                </tr>
            </table>
        </form>              
        </div>
        
    </body>
</html>
