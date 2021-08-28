<%--
  Created by IntelliJ IDEA.
  User: Usuario
  Date: 15/08/2021
  Time: 05:13 p. m.
  To change this template use File | Settings | File Templates.
--%>
<%@page import="mx.edu.utez.crud.modelo.Talla"%>
<%@page import="java.util.List"%>
<jsp:useBean id="ttpDao" class="mx.edu.utez.crud.dao.TallaTipoProductoDao" scope="page"></jsp:useBean>
<%
    int idTipoProducto = Integer.parseInt(request.getParameter("tipoProducto"));
    List<Talla> listaTallas = ttpDao.consultaTallasPorTipoProducto(idTipoProducto);
for (Talla talla: listaTallas) {%>
    <input type="checkbox" name="tallas" value="<%=talla.getId() %>"> <label for="tallas"><%=talla.getName() %> </label><br>
<%}%>
