package mx.edu.utez.crud.controlador;

import mx.edu.utez.crud.modelo.DaoUsuario;
import mx.edu.utez.crud.modelo.Usuario;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "ServletUsuario", value = "/ServletUsuario")
@MultipartConfig
public class ServletUsuario extends HttpServlet {

    Logger logger = LoggerFactory.getLogger(ServletUsuario.class);

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        DaoUsuario daoUser = new DaoUsuario();
        if (request.getParameter("accion") != null) {
            int id = Integer.parseInt(request.getParameter("id"));
            Usuario user = new Usuario(id);

            if (daoUser.eliminarUsuario(user)) {
                logger.info("Registro Eliminado");
                request.setAttribute("mensaje", "Registro Eliminado");

            } else {
                logger.info("Error al eliminar");
                request.setAttribute("mensaje", "Error al eliminar");
            }
            request.setAttribute("ListaUsuarios", daoUser.consultarTodos());
            request.getRequestDispatcher("listaUsuarios.jsp").forward(request, response);

        } else if (request.getParameter("id") != null) {
            int id = Integer.parseInt((request.getParameter("id")));
            request.setAttribute("user", daoUser.consultarID(id));
            request.getRequestDispatcher("usuario.jsp").forward(request, response);
        } else {
            request.setAttribute("ListaUsuarios", daoUser.consultarTodos());
            request.getRequestDispatcher("listaUsuarios.jsp").forward(request, response);
        }

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String pass = request.getParameter("pass");
        String user = request.getParameter("user");
        String name = request.getParameter("name");
        String lastname = request.getParameter("lastname");
        String email = request.getParameter("email");



        Usuario usuario = new Usuario(user, pass, name, lastname,email);
        DaoUsuario userDao = new DaoUsuario();
        if (!userDao.existeUsuario(user)) {
            if (userDao.guardarUsuario(usuario)) {
                logger.info("El usuario ha sido registrado");
                request.setAttribute("mensaje", "Persona registrada");
                request.setAttribute("ListaUsuarios", userDao.consultarTodos());
                request.getRequestDispatcher("menuPrincipal.jsp").forward(request, response);
            } else {
                logger.error("Error al registrar usuario");
                request.setAttribute("mensaje", "Error al registrar!");
                request.getRequestDispatcher("registro.jsp").forward(request, response);
            }
        } else {
            logger.error("Error el usuario ya existe");
            request.setAttribute("mensaje", "El usuario ya existe.");
            request.getRequestDispatcher("registro.jsp").forward(request, response);
        }
        doGet(request, response);

    }

}
