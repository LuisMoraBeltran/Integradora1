<%--
  Created by IntelliJ IDEA.
  User: maurombc
  Date: 07/07/2021
  Time: 10:51 a. m.
  To change this template use File | Settings | File Templates.
--%>

<%@ page import="mx.edu.utez.crud.modelo.Usuario" %>
<%@page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<html>
    <head>
        <title>Title</title>
    </head>
    <body>
        <h1>Modificar el usuario: </h1>
        <%Usuario user = (Usuario)request.getAttribute("user");%>
        <form action="ServletAcciones" method="post">
            <h2>Modificar el registro No. ${user.id}</h2>
            <input type="hidden" name="id" value="${user.id}">
            <h4>Usuario: </h4><input type="text" name="user" value="${user.user}">
            <h4>Password: </h4><input type="password" name="pass" value="${user.pass}">
            <input type="submit" value="Actualizar">
            Usuario: <%=user.getUser()%>
            Contraseña: <%=user.getPass()%>
        </form>




    </body>
</html>
