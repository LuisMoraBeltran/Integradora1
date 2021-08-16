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
    </head>
    <body>
        <h3>${mensaje}</h3>
        <form action="ServletTalla" method="post">
            <label for="Talla">Talla: </label>
            <input type="text" id="talla" class="fadeIn third" name="talla" placeholder="Talla CH|M|G o 13|15|17 o 28|30|32">
            <input type="submit" class="fadeIn fourth" value="Registrar">
        </form>
        <div id="formFooter">
            <a class="underlineHover" href="ServletTalla" title="Lista Tallas">Lista Tallas</a>
            <a class="underlineHover" href="menuPrincipal.jsp" title="Menu Principal">Menu Principal</a>
        </div>
    </body>
</html>
