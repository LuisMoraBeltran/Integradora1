<%--
  Created by IntelliJ IDEA.
  User: maurombc
  Date: 07/07/2021
  Time: 10:21 a. m.
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
    <head>
        <title>Usuarios del Sistema</title>
        <link rel="stylesheet" href="static/css/bootstrap.css">
        <link rel="stylesheet" href="static/css/login.css">
    </head>
    <body>
        <h1>${mensaje}</h1>

        <table>
            <tr>
                <th>No.</th>
                <th>Usuario</th>
                <th>Contraseña</th>
                <th>Acciones</th>
            </tr>
            <c:forEach items="${ListaUsuarios}" var="user" varStatus="status">
                <tr>
                    <td>${status.count}</td>
                    <td>${user.user}</td>
                    <td>${user.pass}</td>
                    <td>
                        <form action="ServletUsuario" method="PUT">
                            <button type="submit" value="Modificar">Modificar</button>
                            <input type="submit" name="accion" value="Eliminar">
                            <input type="hidden" name="id" value="${user.id}">
                        </form>
                    </td>
                </tr>
            </c:forEach>


        </table>
        <div id="formFooter">
            <a class="underlineHover" href="login.jsp" title="Salir">Salir</a>
        </div>
        <script src="static/js/bootstrap.js"></script>
    </body>
</html>
