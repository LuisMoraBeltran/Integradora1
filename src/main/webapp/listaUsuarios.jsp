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
                <th>Nombre</th>
                <th>Apellido</th>
                <th>Email</th>
                <th>Acciones</th>
            </tr>
            <c:forEach items="${ListaUsuarios}" var="user" varStatus="status">

                <tr>
                    <td>${status.count}</td>
                    <td>${user.user}</td>
                    <td>${user.pass}</td>
                    <td>${user.name}</td>
                    <td>${user.lastname}</td>
                    <td>${user.email}</td>
                    <td>
                        <form action="ServletUsuario" method="PUT">
                            <button type="submit" value="Modificar">Modificar</button>
                            <button type="submit" name="accion" value="Eliminar">Eliminar</button>
                            <input type="hidden" name="id" value="${user.id}">
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
