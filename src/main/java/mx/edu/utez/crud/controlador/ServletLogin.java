package mx.edu.utez.crud.controlador;

import mx.edu.utez.crud.dao.UsuarioDao;
import mx.edu.utez.crud.modelo.Usuario;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

@WebServlet(name = "ServletLogin", value="/ServletLogin")
@MultipartConfig
public class ServletLogin  extends HttpServlet {
    Logger logger= LoggerFactory.getLogger(ServletLogin.class);

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String user = request.getParameter("user");
        String pass = request.getParameter("pass");

        String peticion = request.getParameter("accion");
        HttpSession sesionLogin;

        Usuario usuario = new Usuario(user, pass);
        UsuarioDao userDao = new UsuarioDao();

        switch (peticion) {
            case "inicioSesion":
                sesionLogin =request.getSession(true);
                usuario = userDao.loginUsuario(usuario);
                if (null != usuario) {
                    sesionLogin.setAttribute("user", usuario.getUser());
                    sesionLogin.setAttribute("pass",usuario.getPass());
                    sesionLogin.setAttribute("id",usuario.getId());
                    logger.info("Login exitoso");
                    request.setAttribute("mensaje", "Bienvenido al Sistema");
                    request.setAttribute("ListaUsuarios", userDao.consultarTodos());
                    request.getRequestDispatcher("menuPrincipal.jsp").forward(request, response);


                } else {
                    logger.error("Error al logear");
                    request.setAttribute("mensaje", "Datos incorrectos, verifica tu usuario y/o contraseña.");
                    request.getRequestDispatcher("login.jsp").forward(request, response);
                }
                break;
            case "cerrarSesion":
            default:
                break;
        }
    }
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        //Metodos para el cerrar una sesion y destruir la sesion

        String mensaje="";
        RequestDispatcher dispatcher=null;
        HttpSession sessionLogin;

        sessionLogin=request.getSession(false);
        mensaje="Gracias por utilizar el sistema, Bye!";
        sessionLogin.removeAttribute("user");
        sessionLogin.removeAttribute("pass");
        sessionLogin.removeAttribute("id");
        sessionLogin.invalidate();
        dispatcher=request.getRequestDispatcher("login.jsp");
        request.setAttribute("mensaje",mensaje);
        dispatcher.forward(request,response);

    }
}
