<%--
  Created by IntelliJ IDEA.
  User: Usuario
  Date: 14/08/2021
  Time: 10:45 p. m.
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8"%>
<%@page import="mx.edu.utez.crud.modelo.Talla"%>
<%@page import="mx.edu.utez.crud.modelo.TipoProducto"%>
<%@page import="java.util.List"%>
<jsp:useBean id="tpDao" class="mx.edu.utez.crud.dao.TipoProductoDao" scope="page"></jsp:useBean>
<jsp:useBean id="tDao" class="mx.edu.utez.crud.dao.TallaDao" scope="page"></jsp:useBean>
<html>
    <head>
        <title>Registro Tallas Productos</title>
        <link rel="icon" type="image/jpg" href="imagen/logo.jpg">
        <link rel="stylesheet" href="static/css/bootstrap.css">
        <link rel="stylesheet" href="static/css/login.css">
        <link rel="stylesheet"  href="static/css/fondo.css">
    </head>
    <body id="fondo">
    <div class="wrapper fadeInDown">
        <div id="formContent">
        <h1>${mensaje}</h1>
            <h1><i id="texto">Tipo y Talla</i></h1><br>
        <form action="ServletTallaTipoProducto" method="post">
            <label id="texto">Tipo de Producto:</label>
            <label>
                <select name="tipoProducto">
                    <option>Seleccione Tipo de producto</option>
                    <% for (TipoProducto tipoProducto : tpDao.consultarTiposDeProductos()) {%>
                    <option value="<%=tipoProducto.getId() %>"><%=tipoProducto.getName() %></option>
                    <%}%>
                </select>
            </label>

            <label id="texto">Talla: </label>
            <label>
                <select name="tallaProducto">
                    <option>Seleccione Talla</option>
                    <% for (Talla talla : tDao.consultarTallas()) {%>
                    <option value="<%=talla.getId() %>" ><%=talla.getName() %></option>
                    <%}%>
                </select>
            </label>
            <br><br>
            <input type="submit" class="fadeIn fourth" value="Registrar">
        </form>
        <div id="formFooter">
            <a class="underlineHover" href="ServletTallaTipoProducto" title="Lista Tipo producto-Talla">Lista Tipo producto-Talla</a>
        </div>
            <div id="formFooter">
                <a class="underlineHover" href="menuPrincipal.jsp" title="Salir">Salir</a>
            </div>
        </div>
    </div>
    </body>
</html>
