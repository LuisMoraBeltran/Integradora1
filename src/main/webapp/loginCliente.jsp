<%--
  Created by IntelliJ IDEA.
  User: Usuario
  Date: 22/08/2021
  Time: 07:57 p. m.
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Login Cliente</title>
    <link rel="icon" type="image/jpg" href="imagen/logo.jpg">
    <link rel="stylesheet" href="static/css/bootstrap.css">
    <link rel="stylesheet" href="static/css/login.css">
    <link rel="stylesheeth" href="static/css/fondo.css">
</head>
<body id="fondo">

<div class="wrapper fadeInDown">
    <div id="formContent">

        <!-- Login Form -->
        <form action="ServletLoginCliente" method="post">
            <h1><i>Inicio de sesión</i></h1>
            <label for="email"><input type="email" id="email" class="fadeIn second" name="user" placeholder="Ingresa tu correo"></label>
            <label for="pass"><input type="password" id="pass" class="fadeIn third" name="pass" placeholder="Ingresa tu contraseña"></label>
            <input type="hidden" value="inicioSesion" name="accion">
            <input type="submit" class="fadeIn fourth" value="Log In">
        </form>
        <h2>${mensaje}</h2>
        <!-- Remind Password -->
        <div id="formFooter2">
            <a class="underlineHover" href="formCliente.jsp">Registrate</a>
        </div>
        <div id="formFooter">
            <a class="underlineHover" href="pantallaInicio.jsp">Iniciar sin Usuario</a>
        </div>

    </div>
</div>
<script src="static/js/bootstrap.js"></script>
</body>
</html>
