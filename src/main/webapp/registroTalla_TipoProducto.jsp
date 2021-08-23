<%@page import="mx.edu.utez.crud.dao.TallaDao"%>
<%@page import="mx.edu.utez.crud.modelo.Talla"%>
<%@page import="mx.edu.utez.crud.dao.TipoProductoDao"%>
<%@page import="mx.edu.utez.crud.modelo.TipoProducto"%>
<%@page import="java.util.List"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: Usuario
  Date: 14/08/2021
  Time: 10:45 p. m.
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8"%>
<html>
    <head>
        <title>Registro Tallas</title>
        <link rel="stylesheet" href="static/css/bootstrap.css">
        <link rel="stylesheet" href="static/css/login.css">
    </head>
    <body>
    <div id="formContent">
        <h1>${mensaje}</h1>
        <form action="ServletTallaTipoProducto" method="post">

            <%
                    List<TipoProducto> listaTipoProductos = new TipoProductoDao().consultarTiposDeProductos();
                    List<Talla> listaTallas = new TallaDao().consultarTallas();
            %>
            <label id="texto">Tipo de Producto:</label>
            <select name="tipoProducto">
                <option>Seleccione Tipo de producto</option>
                <% for (TipoProducto tipoProducto : listaTipoProductos) {%>
                <option value="<%=tipoProducto.getId() %>"><%=tipoProducto.getName() %></option>
                <%}%>
            </select>

            <label id="texto">Talla: </label>
            <select name="tallaProducto">
                <option>Seleccione Talla</option>
                <% for (Talla talla : listaTallas) {%>
                <option value="<%=talla.getId() %>" ><%=talla.getName() %></option>
                <%}%>
            </select>
            <input type="submit" class="fadeIn fourth" value="Registrar">
        </form>
        <div id="formFooter">
            <a class="underlineHover" href="ServletTallaTipoProducto" title="Lista Tipo producto-Talla">Lista Tipo producto-Talla</a>
        </div>
    </div>

    </body>
</html>
