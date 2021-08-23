<%--
  Created by IntelliJ IDEA.
  User: Usuario
  Date: 15/08/2021
  Time: 05:13 p. m.
  To change this template use File | Settings | File Templates.
--%>
<%@page import="mx.edu.utez.crud.dao.ColorDao"%>
<%@page import="mx.edu.utez.crud.modelo.Color"%>
<%@page import="mx.edu.utez.crud.dao.TallaDao"%>
<%@page import="mx.edu.utez.crud.modelo.Talla"%>
<%@page import="mx.edu.utez.crud.dao.TipoProductoDao"%>
<%@page import="mx.edu.utez.crud.modelo.TipoProducto"%>
<%@page import="java.util.List"%>
<%--@declare id="description"--%><%--@declare id="unidad"--%><%--@declare id="monto"--%>
<%--@declare id="marca"--%><%--@declare id="nombre producto"--%><%--@declare id="talla"--%>
<%@ page contentType="text/html;charset=UTF-8"%>
<html>
    <head>
        <title>Registro Producto</title>
        <link rel="stylesheet" href="static/css/bootstrap.css">
        <link rel="stylesheet" href="static/css/login.css">
    </head>
    <body>
    <div id="formContent">
        <form action="ServletCliente" method="post">

            <label for="Nombre Producto">
                <input type="text" id="product" class="fadeIn third" name="product" placeholder="Nombre del Producto">
            </label>
            <label for="Description">
                <input type="text" id="descript" class="fadeIn third" name="descript" placeholder="Descripción del Producto">
            </label>
            <label for="Unidad">
                <input type="text" id="unid" class="fadeIn second" name="unid" placeholder="Unidad">
            </label>
            <label for="Monto">
                <input type="text" id="cost" class="fadeIn third" name="cost" placeholder="Monto">
            </label>
            <label for="Marca">
                <input type="text" id="marc" class="fadeIn third" name="marc" placeholder="Escribe tu Marca">
            </label>
            <%
                List<TipoProducto> listaTipoProductos = new TipoProductoDao().consultarTiposDeProductos();
            %>
            <label>Tipo de Producto:</label>
            <select name="tipoProducto">
                <option>Seleccione Tipo de producto</option>
                <% for (TipoProducto tipoProducto : listaTipoProductos) {%>
                <option value="<%=tipoProducto.getId() %>"><%=tipoProducto.getName() %></option>
                <%}%>
            </select>

            <%
                //Buscar como agregar el id del producto y pasar en e parameetro para remplazar el 1
                List<Talla> listaTallas = new TallaDao().consultarTallasPorTipoProducto(1);
            %>
            <label>Talla: </label>
            <select name="tallaProducto">
                <option>Seleccione Talla</option>
                <% for (Talla talla : listaTallas) {%>
                <option value="<%=talla.getId() %>" ><%=talla.getName() %></option>
                <%}%>
            </select>
            <%
                List<Color> listaColores = new ColorDao().consultarColores();
            %>
            <label>Talla: </label>
            <select name="color">
                <option>Seleccione Talla</option>
                <% for (Color color : listaColores) {%>
                <option value="<%=color.getId() %>" ><%=color.getName() %></option>
                <%}%>
            </select>
            <br>
            <input type="submit" class="fadeIn fourth" value="Registrar">

        </form>
    </div>
    </body>
</html>
