<%--
  Created by IntelliJ IDEA.
  User: Usuario
  Date: 23/08/2021
  Time: 08:35 a. m.
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <head>
        <title>Lista de Tipos de Productos</title>
        <link rel="stylesheet" href="static/css/bootstrap.css">
        <link rel="stylesheet" href="static/css/login.css">
    </head>
<body>
<h1>${mensaje}</h1>

<table>
    <tr>
        <th>No.</th>
        <th>Tipo Producto</th>
        <th>Colores</th>
        <th>Acciones</th>
    </tr>
    <c:forEach items="${ListaColorTipoProducto}" var="ttp" varStatus="status">

        <tr>
            <td>${status.count}</td>
            <td>${ttp.nameTipoProducto}</td>
            <td>${ttp.nameColor}</td>
            <td>
                <form action="ServletTallaTipoProducto" method="PUT">
                    <button type="submit" name="accion" value="Eliminar">Eliminar</button>
                    <input type="hidden" name="idColor" value="${ttp.idColor}">
                    <input type="hidden" name="idTipoProducto" value="${ttp.idTipoProducto}">
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
