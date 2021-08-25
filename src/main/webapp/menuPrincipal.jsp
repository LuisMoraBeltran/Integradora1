<%--
  Created by IntelliJ IDEA.
  User: Usuario
  Date: 01/08/2021
  Time: 08:09 p. m.
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Perfil del Administrador</title>
    <link rel="icon" type="image/jpg" href="imagen/logo.jpg">
    <link rel="stylesheet"  href="static/css/fondo.css">
    <link rel="stylesheet" href="static/css/bootstrap.css">
    <link rel="stylesheet" href="static/css/login.css">
</head>
<body id="fondo">
<h1 id="fondo2">Menú principal</h1>
<div class="list-group" >
    <a href="registro.jsp" class="list-group-item list-group-item-action " aria-current="true">
        <div class="d-flex w-100 justify-content-between">
            <h5 class="mb-1">°  Registro usuarios </h5>
        </div>
        <p class="mb-1">Está ingresando al registro de usuarios </p>
    </a>
</div>
<div class="list-group">
    <a href="ServletUsuario" class="list-group-item list-group-item-action " aria-current="true">
        <div class="d-flex w-100 justify-content-between">
            <h5 class="mb-1">°  Consulta usuarios </h5>
        </div>
        <p class="mb-1">Está ingresando a consultar los usuarios registrados</p>
    </a>
</div>
<div class="list-group">
    <a href="formCliente.jsp" class="list-group-item list-group-item-action " aria-current="true">
        <div class="d-flex w-100 justify-content-between">
            <h5 class="mb-1">°  Registro clientes</h5>
        </div>
        <p class="mb-1">Está ingresando al registro de clientes</p>
    </a>
</div>
<div class="list-group">
    <a href="ServletCliente" class="list-group-item list-group-item-action " aria-current="true">
        <div class="d-flex w-100 justify-content-between">
            <h5 class="mb-1">°  Consulta clientes</h5>
        </div>
        <p class="mb-1">Está ingresando a consultar los usuarios registrados</p>
    </a>
</div>
<div class="list-group">
    <a href="registroTalla.jsp" class="list-group-item list-group-item-action " aria-current="true">
        <div class="d-flex w-100 justify-content-between">
            <h5 class="mb-1">°  Resgistro tallas</h5>
        </div>
        <p class="mb-1">Está ingresando al registro de tallas </p>
    </a>
</div>
<div class="list-group">
    <a href="registroColor.jsp" class="list-group-item list-group-item-action " aria-current="true">
        <div class="d-flex w-100 justify-content-between">
            <h5 class="mb-1">°  Registro colores</h5>
        </div>
        <p class="mb-1">Está ingresando al registro de colores </p>
    </a>
</div>
<div class="list-group">
    <a href="registroTipoProducto.jsp" class="list-group-item list-group-item-action " aria-current="true">
        <div class="d-flex w-100 justify-content-between">
            <h5 class="mb-1">°  Registro tipos de productos</h5>
        </div>
        <p class="mb-1">Está ingresando al registro de productos </p>
    </a>
</div>
<div class="list-group">
    <a href="registroTalla_TipoProducto.jsp" class="list-group-item list-group-item-action " aria-current="true">
        <div class="d-flex w-100 justify-content-between">
            <h5 class="mb-1">°  Registro tipo producto-talla</h5>
        </div>
        <p class="mb-1">Está ingresando al registro de productos y talla</p>
    </a>
</div>


<br><br><br>
<div id="formFooter">
    <a class="underlineHover" href="pantallaInicio.jsp">Atras</a>
</div>


</body>
</html>
