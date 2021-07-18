<html>
    <body>
        <h1>Registrate</h1>
        <h2>Ingresa datos para el registro</h2>

        <form action="ServletUsuario" method="post">
            <label for="">Usuario:</label>
            <input type="text" name="user"/>
            <label for="">Password:</label>
            <input type="password" name="pass"/>
            <input type="submit" value="Registrar"/>

        </form>
        <h3>${mensaje}</h3>
    </body>
</html>
