<%-- 
    Document   : adminManage2
    Created on : Jun 12, 2019, 6:44:07 PM
    Author     : KaizoDono
--%>

<%@page import="javabean.fyp"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Update FYP Information</title>
        <link rel="stylesheet" type="text/css" href="style/style.css" />
    </head>
    <body>
        <%
            fyp f = (fyp)request.getAttribute("fypinfo");
            String s = (String)request.getAttribute("supervisorlist");
            String l = (String)request.getAttribute("superviselist");
        %>
        <div class="approvecontainer" id="approvecontainer2">
            
        <form action="./updatefypServlet2" method="post" class="approveForm">
            <span class="closeApprove"><a href="./managefypServlet">&times;</a></span> 
            <table>
                <tr>
                    <td colspan="2"><h2><u>Final Year Project Update</u></h2></td>
                </tr>    
                <%
                        out.println("<tr>");
                        out.println("<td>Supervisor :<input type='hidden' name='id' value='"+f.getFypid()+"'></td>");
                        out.println("<td>"+s+"</td>");                        
                        out.println("</tr>");
                        out.println("<tr>");
                        out.println("<td>Supervise : </td>");
                        out.println("<td>"+l+"</td>");
                        out.println("</tr>");
                        out.println("<tr>");
                        out.println("<td>Faculty: </td>");
                        out.println("<td><input type='text' size ='80' name='faculty' value='"+f.getFaculty()+"' required></td>");
                        out.println("</tr>");
                        out.println("<tr>");
                        out.println("<td>Program: </td>");
                        out.println("<td><input type='text' size ='80' name='program' value='"+f.getProgram()+"' required></td>");
                        out.println("</tr>");                        
                %>
                      
                <tr>
                    <td align="center" colspan="2"><input type="submit" value="Update" id="update"></td>
                </tr>
            </table>
        </form>              
        </div>
    </body>
</html>
