<%@ page import="mx.edu.utez.crud.dao.TipoProductoDao" %>
<%@ page import="mx.edu.utez.crud.modelo.Talla" %>
<%@ page import="mx.edu.utez.crud.modelo.TipoProducto" %>
<%@ page import="mx.edu.utez.crud.dao.ColorDao" %>
<%@ page import="mx.edu.utez.crud.modelo.Color" %>
<%@ page import="java.util.List" %>
<%@ page import="mx.edu.utez.crud.dao.TallaDao" %><%--
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
</head>
<body>

<%
    List<Color> listaColores = new ColorDao().consultarColores();
    List<Talla> listaTallas = new TallaDao().consultarTallas();
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

    <label>Colores:</label>
    <label>
        <select name="color">
            <option>Selecciona un color</option>
            <% for (Color colorproducto : listaColores) {%>
            <option value="<%=colorproducto.getId() %>"><%=colorproducto.getName() %></option>
            <%}%>
        </select>
    </label>

    <label>Talla: </label>
    <label>
        <select name="tallaProducto">
            <option>Seleccione Talla</option>
            <% for (Talla talla : listaTallas) {%>
            <option value="<%=talla.getId() %>" ><%=talla.getName() %></option>
        <%}%>
        </select>
    </label>

    <input type="submit" class="fadeIn fourth" value="Publicar">
</body>
</html>
