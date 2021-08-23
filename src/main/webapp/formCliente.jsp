<%--
  Created by IntelliJ IDEA.
  User: Usuario
  Date: 11/08/2021
  Time: 09:38 a. m.
  por el momento esta interfas esta descartada
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>Registro Cliente</title>
    <link rel="stylesheet" href="static/css/formClient.css">
    <link rel="stylesheet" href="static/css/bootstrap.css">
    <link rel="stylesheet" href="static/css/fondo.css">
</head>
<body>
<h1>${mensaje}</h1>
<div class="wrapper fadeInDown">
    <div id="formContent">
        <h1><i>Inicio de sesión</i></h1>
        <h4 id="texto">Ingresa tus datos para el registro</h4>
        <form action="ServletCliente" method="post">
            <label for="name">
                <div id="texto">Nombre(s):</div>
                <input type="text" id="name" class="fadeIn third" name="name" placeholder="Nombre">
            </label><br>
            <label for="lastname"><div id="texto">Apellido Paterno:</div>
                <input type="text" id="lastname" class="fadeIn third" name="lastname" placeholder="Apellid. Paterno">
            </label><br>
            <div id="texto">Apellido Materno:</div>
            <label for="secondlastname">
                <input type="text" id="secondlastname" class="fadeIn second" name="secondlastname"
                       placeholder="Apellid. Materno">
            </label><br>
            <label for="pass">
                <div id="texto">Contraseña:</div>
                <input type="password" id="pass" class="fadeIn third" name="pass" placeholder="Password">
            </label><br>
            <label for="eml">
                <div id="texto">Correo:</div>
                <input type="email" id="eml" class="fadeIn third" name="email" placeholder="Correo">
            </label><br>
            <label for="telf">
                <div id="texto">Teléfono:</div>
                <input type="number" id="telf" class="fadeIn third" name="telf" placeholder="Telefono">
            </label><br>
            <label for="dir">
                <div id="texto">Dirección:</div>
                <input type="text" id="dir" class="fadeIn third" name="dir" placeholder="Dirección">
            </label><br>
            <input type="submit" class="fadeIn fourth" value="Registrar">
            <div>
                <a class="underlineHover" href="pantallaInicio.jsp">Atras</a>
            </div>
        </form>
    </div></div>
    </body>
</html>
