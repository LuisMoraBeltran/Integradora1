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
<form action="ServletCliente" method="post">


    <label>
        <select name="tipoTalla">
            <jsp:useBean id="talla" scope="request" type="java.util.List"/>
            <c:forEach var="talla" items="${talla}">
                <jsp:useBean id="selectedTalla" scope="request"/>

                <option value="${talla.key}" ${talla.key == selectedTalla ? 'selected="Seleccionar talla"' : ''}>${talla.value}</option>
            </c:forEach>
        </select>
    </label>

    <label>
        <select name="tipoProduct">
            <jsp:useBean id="tiproduct" scope="request" type="java.util.List"/>
            <c:forEach var="tiproduct" items="${tiproduct}">
                <jsp:useBean id="selectedTiproduct" scope="request"/>
                <option value="${tiproduct.key}" ${tiproduct.key == selectedTiproduct ? 'selected="Seleccionar producto"' : ''}>${tiproduct.value}</option>
            </c:forEach>
        </select>
    </label>

</form>

</body>
</html>
