<%--
  Created by IntelliJ IDEA.
  User: Usuario
  Date: 23/08/2021
  Time: 08:55 a. m.
  To change this template use File | Settings | File Templates.
--%>
<%--@declare id="producto"--%><%--@declare id="descripcion"--%><%--@declare id="unidades"--%>
<%--@declare id="monto"--%><%--@declare id="costo"--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<html>
<head>
    <title>Producto</title>
</head>
<body>



    <label for="Producto">Nombre del producto:</label>
    <input type="text" id="product" class="fadeIn third" name="product" placeholder="Nombre del producto"><br>

    <label for="Descripcion">Descripción:</label>
    <input type="text" id="descrip" class="fadeIn third" name="descrip" placeholder="Descripcion del producto"><br>

    <label for="Unidades">Unidades:</label>
    <input type="text" id="unid" class="fadeIn third" name="unid" placeholder="Unidades disponibles"><br>

    <label for="Monto">Monto:</label>
    <input type="text" id="mont" class="fadeIn third" name="mont" placeholder="Monto del producto"><br>

    <label for="Costo">Costo:</label>
    <input type="text" id="cost" class="fadeIn third" name="cost" placeholder="Costo producto"><br>

    <input type="submit" class="fadeIn fourth" value="Publicar">
</body>
</html>
