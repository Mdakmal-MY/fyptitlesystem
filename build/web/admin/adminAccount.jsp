<%-- 
    Document   : adminAccount
    Created on : Jun 12, 2019, 7:57:28 PM
    Author     : KaizoDono
--%>
<%@page import="javabean.users"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
            users s = (users)request.getAttribute("userInfo");
        %>        
        <div class="content-account">
            <div class="content-account-main">
                <p id="displayName">Welcome, <%@include file="sessionAdmin.jsp"%> </p>
            </div>
            <p id="tajukaccount">Account Information</p>
            <form action="./updateaccServlet2" method="POST" class="updateaccForm">
                <table>
                    <tr>
                        <td>User ID: <b><%=s.getUserid()%></b></td>
                        <td><input type="hidden" name="userid" value="<%=s.getUserid()%>"></td>
                    <tr>
                    <tr>
                        <td>
                            First Name:<br/><input type="text" value="<%=s.getFname()%>" name="Fname" size="30" required/> 
                        </td>
                        <td>
                            Last Name:<br/><input type="text" value="<%=s.getLname()%>" name="Lname" size="30" required/> 
                        </td>
                    </tr>
                    <tr>
                        <td>
                            Username:<br/><input type="text" value="<%=s.getUsername()%>" name="Uname" size="20" required/> 
                        </td>
                        <td>
                            Password:<br/><input type="password" value="<%=s.getPasswords()%>" name="passwords" size="20" required/> 
                        </td>
                    </tr>
                    <tr>
                        <td>
                            Gender*:<br/><input type="radio" name="Gender" value="Male"/>Male
                            <input type="radio" name="Gender" value="Female" />Female
                        </td>
                        <td>
                            Email Address:<br/><input type="email" value="<%=s.getEmail()%>" name="eAddress" size="35" required/>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            Address:<br/><textarea name="address" rows="5" cols="30"/><%=s.getAddress()%></textarea> 
                        </td>
                        <td>
                            Phone Number:<br/><input type="text" value="<%=s.getPhonenum()%>" name="phoneNum" size="15" required/> 
                        </td>
                    </tr>
                    <tr>
                        <td colspan="2"><center>
                        <input type="submit" value="Saved" id="update"/> 
                        <input type="reset" value="Clear" class="resetBtn"/>
                    </center></td>
                    </tr>  
                </table>    
            </form>    
        </div>
    </body>
</html>
