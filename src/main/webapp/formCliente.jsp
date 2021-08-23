<%--
  Created by IntelliJ IDEA.
  User: Usuario
  Date: 11/08/2021
  Time: 09:38 a. m.
  por el momento esta interfaz esta descartada
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
=======
   <head>
    <title>Registro Cliente</title>
    <link rel="stylesheet" href="static/css/formClient.css">
    <link rel="stylesheet" href="static/css/bootstrap.css">
</head>
<body>
        <h1>${mensaje}</h1>
        <div class="wrapper fadeInDown">
            <div id="formContent">
                <h1><i>Inicio de sesión</i></h1>
                <h2>Ingresa tus datos para el registro</h2>
                <form action="ServletCliente" method="post">
                    <label for="name">
                            <input type="text" id="name" class="fadeIn third" name="name" placeholder="Nombre">
                        </label>
                        <label for="lastname">
                            <input type="text" id="lastname" class="fadeIn third" name="lastname"
                                   placeholder="Apellido Paterno">
                        </label>
                        <label for="secondlastname">
                            <input type="text" id="secondlastname" class="fadeIn second" name="secondlastname" placeholder="Apellido Materno">
                        </label>
                        <label for="pass">
                            <input type="password" id="pass" class="fadeIn third" name="pass"
                                   placeholder="Password">
                        </label>
                        <label for="eml">
                            <input type="email" id="eml" class="fadeIn third" name="email" placeholder="Correo">
                        </label><br>
                        <label for="telf">
                            <input type="number" id="telf" class="fadeIn third" name="telf" placeholder="Telefono">
                        </label><br>
                        <label for="dir">
                            <input type="text" id="dir" class="fadeIn third" name="dir" placeholder="Dirección">
                        </label><br>
                        <input type="submit" class="fadeIn fourth" value="Registrar">
                </form>
</html>