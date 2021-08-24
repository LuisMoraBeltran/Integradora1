<%@ page
        contentType="text/html;charset=UTF-8" %>
<%@taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%--registra a los usuarios --%>
<html>
    <head>
        <title>Registro</title>
        <link rel="stylesheet" href="static/css/bootstrap.css">
        <link rel="stylesheet" href="static/css/login.css">
        <link rel="stylesheet"  href="static/css/fondo.css">
    </head>
    <body>
        <div class="wrapper fadeInDown">
            <div id="formContent1">
                <h1><i>Inicio de sesión</i></h1>
                <h2 id="texto">Ingresa datos para el registro</h2>
                <form action="ServletUsuario" method="post">

                    <label for="Name">
                        <input type="text" id="name" class="fadeIn third" name="name" placeholder="Nombre">
                    </label>
                    <label for="Lastname">
                        <input type="text" id="lastname" class="fadeIn third" name="lastname" placeholder="Apellido">
                    </label>
                    <label for="Usuario">
                        <input type="text" id="usuario" class="fadeIn second" name="user" placeholder="Usuario">
                    </label>
                    <label for="Password">
                        <input type="password" id="password" class="fadeIn third" name="pass" placeholder="Password">
                    </label>
                    <label for="Email">
                        <input type="email" id="email" class="fadeIn third" name="email" placeholder="Correo">
                    </label><br>
                    <input type="submit" class="fadeIn fourth" value="Registrar" >
                    <div id="formFooter">
                        <a class="underlineHover" href="login.jsp" title="Salir">Salir</a>
                    </div>
                </form>
            </div>
        </div>
        <script src="static/js/bootstrap.js"></script>
    </body>
</html>
