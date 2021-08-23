<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: Usuario
  Date: 14/08/2021
  Time: 10:45 p. m.
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8"%>
<html>
    <head>
        <title>Registro Tipos de Productos</title>
        <link rel="stylesheet" href="static/css/bootstrap.css">
        <link rel="stylesheet" href="static/css/login.css">
        <link rel="stylesheet" type="text/css" href="static/css/fondo.css">
    </head>
    <body>
    <div id="formContent">
        <h3>${mensaje}</h3>
        <form action="ServletTipoProducto" method="post">
            <label for="Tipo Producto">Tipo de Producto: </label>
            <input type="text" id="tipoProducto" class="fadeIn third" name="tipoProducto" placeholder="Playera|Pantalon|Ect...">
            <input type="submit" class="fadeIn fourth" value="Registrar">
        </form>
        <div id="formFooter">
            <a class="underlineHover" href="ServletTipoProducto" title="Lista de Tipos de Productos">Lista Tipos de Productos</a>
        </div>
    </div>
    </body>
</html>
