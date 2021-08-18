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
        <link rel="stylesheet" type="text/css" href="static/css/fondo.css">
        <link rel="stylesheet" type="text/css" href="static/css/login.css">
        <link rel="stylesheet" href="static/css/bootstrap.css">
        <title id="pie">Registro Cliente</title>
    </head>
    <body>
<div class="container-fluid">
    <div class="align-content-center">
    <div id="formContent">

        <h1>${mensaje}</h1>
        <form action="ServletCliente" method="post" >
            <h1><i>Registro</i></h1>
            <div id="texto">Nombre(s):</div>
            <input type="text" id="nom" class="fadeIn second" name="nombre" placeholder="Escribe tu nombre">
            <br>
            <div id="texto">Apellido Paterno:</div>
            <input type="text" id="pater" class="fadeIn second" name="patern" placeholder="Escribe tu apellido paterno">
            <br>
            <div id="texto">Apellido Materno:</div>
            <input type="text" id="matern" class="fadeIn second" name="matern" placeholder="Escribe tu apellido paterno">
            <br>
            <div id="texto">Contraseña:</div>
            <input type="password" id="pass" class="fadeIn second" name="pass" placeholder="Escribe tu contraseña">
            <br>
            <div id="texto">Correo:</div>
            <input type="email" id="eml" class="fadeIn second" name="email" placeholder="Escribe tu correo">
            <br>
            <div id="texto">Telefono:</div>
            <input type="tel" id="telf" class="fadeIn second" name="telef" placeholder="Escribe tu telefono">
            <br>
            <div id="texto"> Dirección:</div>
            <input type="text" id="dir" class="fadeIn second" name="direc" placeholder="Escribe tu direccion">
            <br>
            <input type="submit" class="fadeIn fourth" value="Registrar">
            <div id="formFooter">
                <a class="underlineHover" href="pantallaInicio.jsp">Atras</a>
            </div>
        </form></div>
    </div></div>
    </body>
</html>
