<%--
  Created by IntelliJ IDEA.
  User: maurombc
  Date: 07/07/2021
  Time: 10:51 a. m.
  To change this template use File | Settings | File Templates.
--%>

<%@ page import="mx.edu.utez.crud.modelo.Usuario" %>
<%@page contentType="text/html;charset=UTF-8" %>
<%@taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<html>
    <head>
        <title>Modificacion Usuario</title>
        <link rel="stylesheet" href="static/css/usuario.css">

    </head>
    <body>
        <h1>Modificar el usuario: </h1>
        <%Usuario user = (Usuario)request.getAttribute("user");%>
        <form action="ServletAcciones" method="post">
            <h2>Modificar el registro No. ${user.id}</h2>
            <input type="hidden" name="id" value="${user.id}">
            <h4>Usuario: </h4><input type="text" name="user" value="${user.user}">
            <h4>Password: </h4><input type="password" name="pass" value="${user.pass}">
            <button type="submit" value="Actualizar">Actualizar</button>
            <h3>Usuario: <%=user.getUser()%></h3>
            <h3>Contraseña: <%=user.getPass()%></h3>
        </form>
        <script src="static/js/bootstrap.js"></script>
    </body>
</html>
