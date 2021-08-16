<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: Usuario
  Date: 14/08/2021
  Time: 10:46 p. m.
  To change this template use File | Settings | File Templates.
--%><%--@declare id="nombre color"--%>
<%@ page contentType="text/html;charset=UTF-8" %>
<html>
    <head>
        <title>Registro Colores</title>
    </head>
    <body>
        <h3>${mensaje}</h3>
        <form action="ServletColor" method="post">
            <label for="Nombre Color">Color: </label>
            <input type="text" id="color" class="fadeIn third" name="color" placeholder="Nombre del Color">
            <input type="submit" class="fadeIn fourth" value="Registrar">
        </form>
        <div id="formFooter">
            <a class="underlineHover" href="ServletColor" title="Lista Colores">Lista Colores</a>
        </div>
    </body>
</html>
