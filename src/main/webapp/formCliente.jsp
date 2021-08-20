<%--
  Created by IntelliJ IDEA.
  User: Usuario
  Date: 11/08/2021
  Time: 09:38 a. m.
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" %>
<html>
    <head>
        <title>Registro Cliente</title>
        <link rel="stylesheet" href="static/css/formClient.css">
    </head>
    <body>
        <h1>${mensaje}</h1>
        <div class="wrapper fadeInDown">
            <div id="formContent1">
            <form action="ServletCliente" method="post">
                Nombre(S):
                <label for=nom><input type="text" id="nom" class="fadeIn second" name="nombre" placeholder="Escribe tu nombre">
                </label><br>
                Apellido Paterno:
                <label for="pater"><label for="pater"></label><input type="text" id="pater" class="fadeIn second" name="patern" placeholder="Escribe tu apellido paterno">
                </label><br>
                Apellido Materno:
                <label for="matern"><input type="text" id="matern" class="fadeIn second" name="matern" placeholder="Escribe tu apellido paterno">
                </label><br>
                Contraseña:
                <label for="pass"><input type="password" id="pass" class="fadeIn second" name="pass" placeholder="Escribe tu contraseña">
                </label><br>
                Correo:
                    <label for="eml"><input type="email" id="eml" class="fadeIn second" name="email" placeholder="Escribe tu correo">
                    </label><br>
                Telefono:
                    <label for="telf"><input type="number" id="telf" class="fadeIn second" name="telef" placeholder="Escribe tu telefono">
                    </label><br>
                Dirección:
                    <label for="dir"><input type="text" id="dir" class="fadeIn second" name="direc" placeholder="Escribe tu direccion">
                    </label><br>
                <input type="submit" class="fadeIn fourth" value="Registrar">
        </form>
            </div>
        </div>
    </body>
</html>
