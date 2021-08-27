<%@ page import="mx.edu.utez.crud.dao.TipoProductoDao" %>
<%@ page import="mx.edu.utez.crud.modelo.Talla" %>
<%@ page import="mx.edu.utez.crud.modelo.TipoProducto" %>
<%@ page import="mx.edu.utez.crud.dao.ColorDao" %>
<%@ page import="mx.edu.utez.crud.modelo.Color" %>
<%@ page import="java.util.List" %>
<%@ page import="mx.edu.utez.crud.dao.TallaDao" %>
<%@ page import="mx.edu.utez.crud.dao.TallaTipoProductoDao" %><%--
  Created by IntelliJ IDEA.
  User: Usuario
  Date: 23/08/2021
  Time: 08:55 a. m.
  To change this template use File | Settings | File Templates.
--%>
<%--@declare id="producto"--%><%--@declare id="descripcion"--%><%--@declare id="unidades"--%>
<%--@declare id="monto"--%><%--@declare id="costo"--%>
<%@ page contentType="text/html;charset=UTF-8" language="" %>

<html>
<head>
    <title>Registro de Producto</title>
    <link rel="icon" type="image/jpg" href="imagen/logo.jpg">
</head>
<body id="fondo">

<%
    List<Color> listaColores = new ColorDao().consultarColores();

    List<TipoProducto> listaTipoProductos = new TipoProductoDao().consultarTiposDeProductos();
%>

    <label for="product">Nombre del producto:</label>
    <input type="text" id="product" class="fadeIn third" name="product" placeholder="Nombre del producto"><br>

    <label for="descrip">Descripción:</label>
    <input type="text" id="descrip" class="fadeIn third" name="descrip" placeholder="Descripcion del producto"><br>

    <label for="unid">Unidades:</label>
    <input type="text" id="unid" class="fadeIn third" name="unid" placeholder="Unidades disponibles"><br>

    <label for="mont">Monto:</label>
    <input type="text" id="mont" class="fadeIn third" name="mont" placeholder="Monto del producto"><br>

    <label for="cost">Costo:</label>
    <input type="text" id="cost" class="fadeIn third" name="cost" placeholder="Costo producto"><br>

    <label id="texto">Tipo de Producto:</label>
    <label>
        <select name="tipoProducto">
            <option>Seleccione Tipo de producto</option>
            <% for (TipoProducto tipoProducto : listaTipoProductos) {%>
            <option value="<%=tipoProducto.getId() %>"><%=tipoProducto.getName() %></option>
            <%}%>
        </select>
    </label>

<%--<label>Talla: </label>
<label>
        <option>Seleccione Talla</option>
        <%
            List<Talla> listaTallas = new TallaTipoProductoDao();
            for (Talla talla: listaTallas) {%>
       <input type="checkbox" name="talla" value="<%=talla.getId() %>"> <%=talla.getName() %> <BR>
    <%}%>
</label>--%>

<label>Colores:</label>
<label>
        <% for (Color colorproducto : listaColores) {%>
    <input type="checkbox" name="colores" value="<%=colorproducto.getId() %>"> <%=colorproducto.getName() %> <BR>
        <%}%>
</label>

<input type="submit" class="fadeIn fourth" value="Publicar">
</body>
</html>
