<%-- 
    Document   : adminHome2
    Created on : Jun 11, 2019, 11:43:17 AM
    Author     : KaizoDono
--%>

<%@page import="javabean.users"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Setting up FYP</title>
        <link rel="stylesheet" type="text/css" href="style/style.css" />
    </head>
    <body>
        <%
            users u = (users)request.getAttribute("typeOfuser");
            String s = (String)request.getAttribute("supervisorlist");
            String l = (String)request.getAttribute("superviselist");
        %>
        <div class="approvecontainer" id="approvecontainer2">
            
        <form action="./setupfypServlet" method="post" class="approveForm">
            <span class="closeApprove"><a href="./reqregisterServlet">&times;</a></span> 
            <table>
                <tr>
                    <td colspan="2"><h2><u>Final Year Project Registration</u></h2></td>
                </tr>    
                <%
                    if (u.getUserlevel().equals("Lecturer")) 
                    {
                        out.println("<tr>");
                        out.println("<td>Supervisor : <input type='hidden' name='type' value='Lecturer'></td>");
                        out.println("<td><input type='hidden' name='id' value="+u.getUserid()+">" + u.getUsername() + "</td>");                        
                        out.println("</tr>");
                        out.println("<tr>");
                        out.println("<td>Supervise : </td>");
                        out.println("<td>"+l+"</td>");
                        out.println("</tr>");
                        out.println("<tr>");
                        out.println("<td>Faculty: </td>");
                        out.println("<td><input type='text' size ='80' name='faculty' placeholder='ex: FACULTY INFORMATICS' required></td>");
                        out.println("</tr>");
                        out.println("<tr>");
                        out.println("<td>Program: </td>");
                        out.println("<td><input type='text' size ='80' name='program' placeholder='ex: SOFTWARE ENG' required></td>");
                        out.println("</tr>");                        
                    } 
                    else if (u.getUserlevel().equals("Student")) 
                    {
                        out.println("<tr>");
                        out.println("<td>Supervise :<input type='hidden' name='type' value='Student'></td>");
                        out.println("<td><input type='hidden' name='id' value="+u.getUserid()+">" + u.getUsername() + "</td>");  
                        out.println("</tr>");
                        out.println("<tr>");
                        out.println("<td>Supervisor : </td>");
                        out.println("<td>"+s+"</td>");
                        out.println("</tr>");
                        out.println("<tr>");
                        out.println("<td>Faculty: </td>");
                        out.println("<td><input type='text' size ='80' name='faculty' placeholder='ex: FACULTY INFORMATICS' required></td>");
                        out.println("</tr>");
                        out.println("<tr>");
                        out.println("<td>Program: </td>");
                        out.println("<td><input type='text' size='80' name='program' placeholder='ex: SOFTWARE ENG' required></td>");
                        out.println("</tr>"); 
                    }

                %>
                      
                <tr>
                    <td align="center" colspan="2"><input type="submit" value="Submit" class="approveBtn"></td>
                </tr>
            </table>
        </form>              
        </div>
        
    </body>
</html>
