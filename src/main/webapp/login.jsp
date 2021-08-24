<%--
  Created by IntelliJ IDEA.
  User: ivanbn
  Date: 17/07/21
  Time: 17:44
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" %>
<%@taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<html>
    <head>
        <title>Login</title>
        <link rel="icon" type="image/jpg" href="imagen/logo.jpg">
        <link rel="stylesheet" href="static/css/bootstrap.css">
        <link rel="stylesheet" href="static/css/login.css">
        <link rel="stylesheet" href="static/css/fondo.css">
    </head>
    <body id="fondo">
        
        <div class="wrapper fadeInDown">
            <div id="formContent">

                <!-- Login Form -->
                <form action="ServletLogin" method="post">

                    <h1><i>Inicio de Sesión</i></h1>
                    <label for="login"><input type="text" id="login" class="fadeIn second" name="user" placeholder="Ingresa tu usuario"></label>
                    <label for="pass"><input type="password" id="pass" class="fadeIn third" name="pass" placeholder="Ingresa tu contraseña"></label>
                    <input type="hidden" value="inicioSesion" name="accion">
                    <input type="submit" class="fadeIn fourth" value="Iniciar Sesión">
                    </form>
                <h2>${mensaje}</h2>
                <!-- Remind Password -->
                <div id="formFooter">
                    <a class="underlineHover" href="registro.jsp">Registrate</a>
                </div>
                <div id="formFooter">
                    <a class="underlineHover" href="pantallaInicio.jsp">Iniciar sin Usuario</a>
                </div>
            </div>
        </div>
        <script src="static/js/bootstrap.js"></script>
    </body>
</html>
