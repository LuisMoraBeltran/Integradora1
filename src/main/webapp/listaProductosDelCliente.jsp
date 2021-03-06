<%--
  Created by IntelliJ IDEA.
  User: Usuario
  Date: 23/08/2021
  Time: 08:51 p. m.
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Lista Productos</title>
    <link rel="icon" type="image/jpg" href="imagen/logo.jpg">
    <link rel="stylesheet" href="static/css/bootstrap.css">
    <link rel="stylesheet" href="static/css/login.css">
    <link rel="stylesheet" type="text/css" href="static/css/fondo.css">
</head>
<body id="fondo">
<h1>${mensaje}</h1>

<table>
    <tr>
        <th>No.</th>
        <th>Tipo Producto</th>
        <th>Acciones</th>
    </tr>
    <c:forEach items="${ListaTiposProductos}" var="tipoProducto" varStatus="status">

        <tr>
            <td>${status.count}</td>
            <td>${tipoProducto.name}</td>
            <td>
                <form action="ServletTipoProducto" method="PUT">
                    <button type="submit" name="accion" value="Eliminar">Eliminar</button>
                    <input type="hidden" name="id" value="${tipoProducto.id}">
                </form>
            </td>
        </tr>
    </c:forEach>


</table>
<div id="formFooter">
    <a class="underlineHover" href="menuPrincipal.jsp" title="Salir">Menu Principal</a>
</div>
<script src="static/js/bootstrap.js"></script>
</body>
</html>
