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
    <title>Lista de Tallas</title>
    <link rel="stylesheet" href="static/css/bootstrap.css">
    <link rel="stylesheet" href="static/css/login.css">
    <link rel="stylesheet" type="text/css" href="static/css/fondo.css">
</head>
    <body id="fondo">
    <h1>${mensaje}</h1>

    <table>
        <tr>
            <th>No.</th>
            <th>Color</th>
            <th>Acciones</th>
        </tr>
        <c:forEach items="${ListaColores}" var="color" varStatus="status">

            <tr>
                <td>${status.count}</td>
                <td>${color.name}</td>
                <td>
                    <form action="ServletColor" method="PUT">
                        <button type="submit" name="accion" value="Eliminar">Eliminar</button>
                        <input type="hidden" name="id" value="${color.id}">
                    </form>
                </td>
            </tr>
        </c:forEach>


    </table>
    <div id="formFooter">
        <a class="underlineHover" href="menuPrincipal.jsp" title="Menu Principal">Menu Principal</a>
        <a class="underlineHover" href="registroColor.jsp" title="Resgistro Colores">Resgistro Colores</a>
    </div>
    <script src="static/js/bootstrap.js"></script>
</body>
</html>