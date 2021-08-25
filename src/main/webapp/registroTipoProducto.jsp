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
        <link rel="icon" type="image/jpg" href="imagen/logo.jpg">
        <link rel="stylesheet" href="static/css/bootstrap.css">
        <link rel="stylesheet" href="static/css/login.css">
        <link rel="stylesheet" type="text/css" href="static/css/fondo.css">
    </head>
    <body id="fondo">
    <div class="wrapper fadeInDown">
    <div id="formContent">
        <h3>${mensaje}</h3>
        <h1><i>Registro de tipos de producto</i></h1><br>
        <form action="ServletTipoProducto" method="post">
            <label for="Tipo Producto"> </label>
            <input type="text" id="tipoProducto" class="fadeIn third" name="tipoProducto" placeholder="Playera|Pantalon|Ect...">
            <input type="submit" class="fadeIn fourth" value="Registrar">
        </form>
        <div id="formFooter">
            <a class="underlineHover" href="ServletTipoProducto" title="Lista de Tipos de Productos">Lista Tipos de Productos</a>
        </div>
        <div id="formFooter">
            <a class="underlineHover" href="menuPrincipal.jsp" title="Menu Principal">Atras</a>
        </div>
    </div></div>
    </body>
</html>
