<%@ page contentType="text/html;charset=UTF-8" %>
<%@taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<html>
    <head>
        <title>Registro</title>
        <link rel="stylesheet" href="static/css/bootstrap.css">
        <link rel="stylesheet" href="static/css/login.css">
    </head>
    <body>

        <h1>Registrate</h1>
        <h2>Ingresa datos para el registro</h2>

        <div class="wrapper fadeInDown">
            <div id="formContent1">
                <form action="ServletUsuario" method="post">
                    <label for="Usuario">
                        <input type="text" id="usuario" class="fadeIn second" name="user" placeholder="usuario">
                    </label>
                    <label for="Password">
                        <input type="password" id="password" class="fadeIn third" name="pass" placeholder="password">
                    </label>
                    <input type="submit" class="fadeIn fourth" value="Registrar">
                </form>
                <h3>${mensaje}</h3>
            </div>
            <div id="formFooter">
                <a class="underlineHover" href="menuPrincipal.jsp" title="Salir">Salir</a>
            </div>
        </div>
        <script src="static/js/bootstrap.js"></script>
    </body>
</html>
