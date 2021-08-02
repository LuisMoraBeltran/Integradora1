<%--
  Created by IntelliJ IDEA.
  User: maurombc
  Date: 07/07/2021
  Time: 11:07 a. m.
  To change this template use File | Settings | File Templates.
--%>
<%@ page import="mx.edu.utez.crud.modelo.Usuario" %>
<%@page contentType="text/html;charset=UTF-8" %>
<%@taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<html>
    <head>
        <title>Title</title>
    </head>
    <body>
        <h1>Eliminar el usuario: </h1>
        <%Usuario user = (Usuario)request.getAttribute("user");%>

        <form>

            <input type="text" value="${user.id}">
            <p>ID: ${user.id}</p>
            <p>Usuario: ${user.user}</p>
            <p>Contraseña: ${user.pass}</p>
            Datos del usuario:
            Identificador: <%=user.getId()%>
            Usuario: <%=user.getUser()%>
            Contraseña: <%=user.getPass()%>
        </form>

    </body>
</html>
