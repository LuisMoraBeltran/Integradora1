<%--
  Created by IntelliJ IDEA.
  User: Usuario
  Date: 15/08/2021
  Time: 05:13 p. m.
  To change this template use File | Settings | File Templates.
--%>
<%--@declare id="description"--%><%--@declare id="unidad"--%><%--@declare id="monto"--%>
<%--@declare id="marca"--%><%--@declare id="nombre producto"--%><%--@declare id="talla"--%>
<%@ page contentType="text/html;charset=UTF-8"%>
<html>
<head>
    <title>Registro Producto</title>
</head>
<body>

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
            <label for="Talla">
                <input type="text" id="tall" class="fadeIn third" name="tallaa" placeholder="Selecciona talla">
            </label>
            <label for="Color">
                <input type="text" id="color" class="fadeIn third" name="color" placeholder="Selecciona color">
            </label>
        <br>
        <input type="submit" class="fadeIn fourth" value="Registrar">

    </form>

</body>
</html>
