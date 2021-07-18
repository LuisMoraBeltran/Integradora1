<%--
  Created by IntelliJ IDEA.
  User: ivanbn
  Date: 17/07/21
  Time: 17:44
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
    <head>
        <title>Login</title>
        <link rel="stylesheet" href="static/css/bootstrap.css">
        <link rel="stylesheet" href="static/css/login.css">
    </head>
    <body>
        
        <div class="wrapper fadeInDown">
            <div id="formContent">

                <!-- Login Form -->
                <form action="ServletLogin" method="post">
                    <input type="text" id="login" class="fadeIn second" name="user" placeholder="login">
                    <input type="text" id="password" class="fadeIn third" name="pass" placeholder="password">
                    <input type="submit" class="fadeIn fourth" value="Log In">
                </form>
                <h2>${mensaje}</h2>
                <!-- Remind Passowrd -->
                <div id="formFooter">
                    <a class="underlineHover" href="registro.jsp">Registrate</a>
                </div>

            </div>
        </div>
        <script src="static/js/bootstrap.js"></script>
    </body>
</html>
