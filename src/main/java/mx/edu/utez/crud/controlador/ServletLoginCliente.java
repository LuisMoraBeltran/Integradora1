package mx.edu.utez.crud.controlador;

import mx.edu.utez.crud.dao.ClienteDao;
import mx.edu.utez.crud.modelo.Cliente;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet(name = "ServletLoginCliente", value = "/ServletLoginCliente")
public class ServletLoginCliente extends HttpServlet {
    Logger logger= LoggerFactory.getLogger(ServletLoginCliente.class);
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String correo = request.getParameter("correo");
        String pass = request.getParameter("pass");

        String peticion = request.getParameter("accion");
        HttpSession sesionLogin;

        Cliente cliente = new Cliente(correo, pass);
        ClienteDao clienteDao = new ClienteDao();

        switch (peticion) {
            case "inicioSesion":
                sesionLogin =request.getSession(true);
                cliente = clienteDao.loginCliente(cliente);
                if (null != cliente) {
                    sesionLogin.setAttribute("email", cliente.getCorreo());
                    sesionLogin.setAttribute("pass",cliente.getPass());
                    sesionLogin.setAttribute("idCliente",cliente.getId());
                    logger.info("Login exitoso");
                    request.setAttribute("mensaje", "Bienvenido al Sistema");
                    request.setAttribute("ListaClientes", clienteDao.consultarClientes());
                    request.getRequestDispatcher("menuPrincipal.jsp").forward(request, response);


                } else {
                    logger.error("Error al logear");
                    request.setAttribute("mensaje", "Datos incorrectos, verifica tu correo y/o contraseña.");
                    request.getRequestDispatcher("loginCliente.jsp.jsp").forward(request, response);
                }
                break;
            case "cerrarSesion":
            default:
                break;
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        //Metodos para el cerrar una sesion y destruir la sesion
        String mensaje="";
        RequestDispatcher dispatcher=null;
        HttpSession sessionLogin;

        sessionLogin=request.getSession(false);
        mensaje="Gracias por utilizar el sistema, Bye!";
        sessionLogin.removeAttribute("correo");
        sessionLogin.removeAttribute("pass");
        sessionLogin.removeAttribute("idCliente");
        sessionLogin.invalidate();
        dispatcher=request.getRequestDispatcher("loginCliente.jsp");
        request.setAttribute("mensaje",mensaje);
        dispatcher.forward(request,response);
    }
}
