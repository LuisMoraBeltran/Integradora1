<%--
  Created by IntelliJ IDEA.
  User: Usuario
  Date: 11/08/2021
  Time: 09:38 a. m.
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" %>
<html>
    <head>
        <title>Registro Cliente</title>
    </head>
    <body>
        <h1>${mensaje}</h1>
        <form action="ServletCliente" method="post">
            Nombre(s):
            <input type="text" id="nom" class="fadeIn second" name="nombre" placeholder="Escribe tu nombre">
            <br>
            Apellido Paterno:
            <input type="text" id="pater" class="fadeIn second" name="patern" placeholder="Escribe tu apellido paterno">
            <br>
            Apellido Materno:
            <input type="text" id="matern" class="fadeIn second" name="matern" placeholder="Escribe tu apellido paterno">
            <br>
            Contraseña:
            <input type="password" id="pass" class="fadeIn second" name="pass" placeholder="Escribe tu contraseña">
            <br>
            Correo:
            <input type="email" id="eml" class="fadeIn second" name="email" placeholder="Escribe tu correo">
            <br>
            Telefono:
            <input type="tel" id="telf" class="fadeIn second" name="telef" placeholder="Escribe tu telefono">
            <br>
            Dirección:
            <input type="text" id="dir" class="fadeIn second" name="direc" placeholder="Escribe tu direccion">
            <br>
            <input type="submit" class="fadeIn fourth" value="Registrar">
        </form>

    </body>
</html>
