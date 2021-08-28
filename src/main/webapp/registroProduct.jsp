<%--
  Created by IntelliJ IDEA.
  User: Usuario
  Date: 15/08/2021
  Time: 05:13 p. m.
  To change this template use File | Settings | File Templates.
--%>
<%@page import="mx.edu.utez.crud.modelo.Color"%>
<%@page import="mx.edu.utez.crud.modelo.Talla"%>
<%@page import="mx.edu.utez.crud.modelo.TipoProducto"%>
<%@page import="java.util.List"%>
<%--@declare id="description"--%><%--@declare id="unidad"--%><%--@declare id="monto"--%>
<%--@declare id="marca"--%><%--@declare id="nombre producto"--%><%--@declare id="talla"--%>
<%@ page contentType="text/html;charset=UTF-8"%>
<jsp:useBean id="tpDao" class="mx.edu.utez.crud.dao.TipoProductoDao" scope="page"></jsp:useBean>
<jsp:useBean id="cDao" class="mx.edu.utez.crud.dao.ColorDao" scope="page"></jsp:useBean>
    <html>
        <head>
            <title>Registro Producto</title>
            <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
            <link rel="icon" type="image/jpg" href="imagen/logo.jpg">
            <link rel="stylesheet" href="static/css/bootstrap.css">
            <link rel="stylesheet" href="static/css/login.css">
            <link rel="stylesheet" type="text/css" href="static/css/fondo.css">
            <script>
            function cargaTallas() {
                $.post("checkboxTallasPorTipoProducto.jsp", $("#data").serialize(), function (data){
                    $("#tallas").html(data);
                });
            }
            </script>
        </head>
        <body id="fondo">
            <div id="formContent">
                <form action="ServletProducto" method="post" id="data">

                    <label for="Nombre Producto">
                        <input type="text" id="product" class="fadeIn third" name="product" placeholder="Nombre del Producto">
                    </label>
                    <label for="Description">
                        <input type="text" id="descript" class="fadeIn third" name="descript" placeholder="Descripción del Producto">
                    </label>
                    <label for="Unidades">
                        <input type="number" id="unid" class="fadeIn second" name="unid" placeholder="Unidades" min="1">
                    </label>
                    <label for="Precio">
                        <input type="text" id="cost" class="fadeIn third" name="cost" placeholder="Precio" pattern="^[0-9]+(\.?[0-9]{1,2})$">
                    </label>
                    <label for="Marca">
                        <input type="text" id="marc" class="fadeIn third" name="marc" placeholder="Escribe tu Marca">
                    </label>
                    <label>Colores:</label>
                    <% for (Color colorproducto : cDao.consultarColores()) {%>
                    <input type="checkbox" name="colores" value="<%=colorproducto.getId() %>"> <label for="colores"><%=colorproducto.getName() %> </label><br>
                    <%}%>

                <label id="texto">Tipo de Producto:</label>
                <select name="tipoProducto" id="tipoProducto" onchange="cargaTallas()">
                    <option value="0">Seleccione Tipo de producto</option>
                    <% for (TipoProducto tipoProducto : tpDao.consultarTiposDeProductos()) {%>
                    <option value="<%=tipoProducto.getId() %>"><%=tipoProducto.getName() %></option>
                    <%}%>
                </select><br>

                <label>Tallas: </label>
                <div id="tallas">
                </div>


                <input type="submit" class="fadeIn fourth" value="Registrar">

            </form>
        </div>
    </body>
</html>
