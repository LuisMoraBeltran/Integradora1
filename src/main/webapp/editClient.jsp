<%@ page import="mx.edu.utez.crud.modelo.Cliente" %><%--
  Created by IntelliJ IDEA.
  User: Usuario
  Date: 14/08/2021
  Time: 10:51 p. m.
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Modificar Cliente</title>
</head>
<body>
    <h1>Modificar el usuario: </h1>
    <%Cliente client = (Cliente) request.getAttribute("client");%>
    <form action="ServletAcciones" method="post" enctype="multipart/form-data">
            <h2>Modificar el registro No. ${client.id}</h2>
            <input type="hidden" name="id" value="${client.id}">
            <h4>Correo: </h4><input type="email" name="email" value="${client.email}">
            <h4>Telefono: </h4><input type="text" name="telef" value="${client.telef}">
            <h4>Direccion: </h4><input type="text" name="direc" value="${client.direc}">
            <button type="submit" value="Actualizar">Actualizar</button>
            <h3>Correo: <%=client.getCorreo()%></h3>
            <h3>Telefono: <%=client.getTelefono()%></h3>
            <h3>Direccion: <%=client.getTelefono()%></h3>
    </form>

</body>
</html>
