<%--
  Created by IntelliJ IDEA.
  User: maurombc
  Date: 07/07/2021
  Time: 10:21 a. m.
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" %>
<%@taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>

<html>
    <head>
        <title>Lista de Tipos de Productos</title>
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
                <th>Talla</th>
                <th>Acciones</th>
            </tr>
            <c:forEach items="${ListaTallasTipoProducto}" var="ttp" varStatus="status">

                <tr>
                    <td>${status.count}</td>
                    <td>${ttp.nameTipoProducto}</td>
                    <td>${ttp.nameTalla}</td>
                    <td>
                        <form action="ServletTallaTipoProducto" method="PUT">
                            <button type="submit" name="accion" value="Eliminar">Eliminar</button>
                            <input type="hidden" name="idTalla" value="${ttp.idTalla}">
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
