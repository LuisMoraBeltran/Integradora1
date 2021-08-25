<%@ page import="mx.edu.utez.crud.modelo.Cliente" %><%--
  Created by IntelliJ IDEA.
  User: Usuario
  Date: 14/08/2021
  Time: 10:51 p. m.
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8"%>
<html>
    <head>
        <title>Modificar Cliente</title>
        <link rel="icon" type="image/jpg" href="imagen/logo.jpg">
        <link rel="stylesheet" type="text/css" href="static/css/fondo.css">
        <link rel="stylesheet" href="static/css/bootstrap.css">
    </head>
    <body id="fondo">
        <h1>Modificar el cliente: </h1>
        <%Cliente client = (Cliente) request.getAttribute("client");%>
        <form action="ServletCliente" method="post" >

            <h2>Modificar el registro No. ${client.id}</h2>
            <input type="hidden" name="id" value="${client.id}">
            <h4>Correo: </h4>
            <label>
                <input type="email" name="email" value="${client.correo}">
            </label>
            <h4>Telefono: </h4>
            <label>
                <input type="number" name="telef" value="${client.telefono}">
            </label>
            <h4>Direccion: </h4>
            <label>
                <input type="text" name="direc" value="${client.direccion}">
            </label>
            <h4>Contraseña: </h4>
            <label>
                <input type="password" name="pass" value="${client.pass}">
            </label>
            <button type="submit" value="Actualizar">Actualizar</button>

        </form>

    </body>
</html>
