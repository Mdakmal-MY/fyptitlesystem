<%-- 
    Document   : login
    Created on : Apr 11, 2019, 12:00:26 AM
    Author     : KaizoDono
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Login Page</title>
    </head>
    <body>
        <div class="logincontainer" id="logincontainer2">
        <form action="loginServlet" method="post" class="loginForm">
            <span class="closeLogin" id="closeloginBtn">&times;</span> 
            <table>
                <tr>
                    <td>User ID   :</td>
                    <td><input type="text" name="userid" placeholder="Key in User ID" required/></td>
                </tr>
                <tr>
                    <td>Password    :</td>
                    <td><input type="password" name="password" /></td>
                </tr>
                <tr>
                    <td align="center" colspan="2"><input type="submit" value="Login" class="loginBtn" required /></td>
                </tr>
                <tr>
                    <td align="center" colspan="2"><a href="register.jsp">Register Account</a></td>
                </tr>
            </table>
        </form>              
        </div>   
    </body>
</html>
