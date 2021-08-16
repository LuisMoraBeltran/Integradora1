<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: Usuario
  Date: 14/08/2021
  Time: 10:46 p. m.
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>Registro Colores</title>
</head>
<body>
<form action="ServletCliente" method="post">

    <label>
        <select name="tipoColor">
            <jsp:useBean id="color" scope="request" type="java.util.List"/>
            <c:forEach var="color" items="${color}">
                <jsp:useBean id="selectedColor" scope="request"/>
            <option value="${color.key}" ${color.key == selectedColor ? 'selected="Seleccionar color"' : ''}>${color.value}</option>
            </c:forEach>
        </select>
    </label>

</form>

</body>
</html>
