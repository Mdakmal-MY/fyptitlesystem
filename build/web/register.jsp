<%-- 
    Document   : register
    Created on : Apr 11, 2019, 4:17:13 AM
    Author     : KaizoDono
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>FYP Title Booking | Registration</title>
        <link rel="stylesheet" type="text/css" href="style/style.css" />
    </head>
    <body>
        <%@ include file="header.jsp"%>
        <div class="registerContainer">
                <h2>User Registration</h2>
                <form action="registerServlet" method="post">
                    <table>
                        <tr>
                            <td>
                                User ID:<br><input type="text" name="userid" size="30" required/> 
                            </td>
                            <td>
                                User:<br/>
                                <select name="userlevel">
                                    <option value="Student">Student</option>
                                    <option value="Lecturer">Lecturer</option>
                                </select>    
                            </td>
                        </tr>
                        <tr>
                            <td>
                                First Name:<br/><input type="text" name="Fname" size="30" required/> 
                            </td>
                            <td>
                                Last Name:<br/><input type="text" name="Lname" size="30" required/> 
                            </td>
                        </tr>
                        <tr>
                            <td>
                                Username:<br/><input type="text" name="Uname" size="20" required/> 
                            </td>
                            <td>
                                Password:<br/><input type="password" name="passwords" size="20" required/> 
                            </td>
                        </tr>
                        <tr>
                            <td>
                                Gender:<br/><input type="radio" name="Gender" value="Male"/>Male
                                <input type="radio" name="Gender" value="Female"/>Female
                            </td>
                            <td>
                                Email Address:<br/><input type="email" name="eAddress" size="35" required/>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                Address<br/><textarea name="address" rows="5" cols="30"/></textarea> 
                            </td>
                            <td>
                                Phone Number:<br/><input type="text" name="phoneNum" size="15" required/> 
                            </td>
                        </tr>
                        <tr>
                            <td colspan="2"><center>
                                <input type="submit" value="Register" class="regBtn"/> 
                                <input type="reset" value="Clear" class="resetBtn"/>
                            </center></td>
                        </tr>                         
                    </table>
                </form>
        </div>
        <%@ include file="footer.jsp"%>
    </body>
</html>
