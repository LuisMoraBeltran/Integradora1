<%--
  Created by IntelliJ IDEA.
  User: Usuario
  Date: 14/08/2021
  Time: 07:44 p. m.
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Listado de Clientes</title>
    <link rel="icon" type="image/jpg" href="imagen/logo.jpg">
    <link rel="stylesheet"  href="static/css/fondo.css">
    <link rel="stylesheet" href="static/css/bootstrap.css">
    <link rel="stylesheet" href="static/css/login.css">
</head>
<body id="fondo">
<h1>${mensaje}</h1>

<table>
    <tr>
        <th>No.</th>
        <th>Nombre</th>
        <th>Apellido Paterno</th>
        <th>Apellido Materno</th>
        <th>Correo</th>
        <th>Telefono</th>
        <th>Direccion</th>
        <th>Contraseña</th>
        <th>Acciones</th>
    </tr>
    <c:forEach items="${ListaClientes}" var="client" varStatus="status">
        <tr>
            <td>${status.count}</td>
            <td>${client.name}</td>
            <td>${client.pater}</td>
            <td>${client.mater}</td>
            <td>${client.correo}</td>
            <td>${client.telefono}</td>
            <td>${client.direccion}</td>
            <td>${client.pass}</td>
            <td>

                <form action="ServletCliente" method="PUT">
                    <button type="submit" value="Modificar">Modificar</button>
                    <button type="submit" name="accion" value="Eliminar">Eliminar</button>
                    <input type="hidden" name="id" value="${client.id}">
                </form>
            </td>
        </tr>
    </c:forEach>


</table>
<div id="formFooter">
    <a class="underlineHover" href="menuPrincipal.jsp" title="Salir">Salir</a>
</div>

<script src="static/js/bootstrap.js"></script>
</body>
</html>
