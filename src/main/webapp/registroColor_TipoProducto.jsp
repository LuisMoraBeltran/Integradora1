<%@ page import="mx.edu.utez.crud.modelo.Color" %>
<%@ page import="mx.edu.utez.crud.dao.TipoProductoDao" %>
<%@ page import="mx.edu.utez.crud.modelo.TipoProducto" %>
<%@ page import="java.util.List" %>
<%@ page import="mx.edu.utez.crud.dao.ColorDao" %><%--
  Created by IntelliJ IDEA.
  User: Usuario
  Date: 22/08/2021
  Time: 07:59 p. m.
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Registro Colores Productos</title>
</head>
<body>
<h1>${mensaje}</h1>
<form action="ServletTallaTipoProducto" method="post">

    <%
        List<TipoProducto> listaTipoProductos = new TipoProductoDao().consultarTiposDeProductos();
        List<Color> listaColores = new ColorDao().consultarColores();
    %>
    <label>Tipo de Producto:</label>
    <label>
        <select name="tipoProducto">
            <option>Seleccione Tipo de producto</option>
            <% for (TipoProducto tipoProducto : listaTipoProductos) {%>
            <option value="<%=tipoProducto.getId() %>"><%=tipoProducto.getName() %></option>
            <%}%>
        </select>
    </label>

    <label>Talla: </label>
    <label>
        <select name="colorProducto">
            <option>Seleccione Color</option>
            <% for (Color color : listaColores) {%>
            <option value="<%=color.getId() %>" ><%=color.getName() %></option>
            <%}%>
        </select>
    </label>
    <input type="submit" class="fadeIn fourth" value="Registrar">
</form>
<div id="formFooter">
    <a class="underlineHover" href="ServletColorTipoProducto" title="Lista Tipo producto-Color">Lista Tipo producto-Color</a>
</div>

</body>
</html>
