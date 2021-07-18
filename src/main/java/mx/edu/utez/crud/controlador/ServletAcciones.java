package mx.edu.utez.crud.controlador;

import mx.edu.utez.crud.modelo.DaoUsuario;
import mx.edu.utez.crud.modelo.Usuario;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "ServletAcciones", value = "/ServletAcciones")
public class ServletAcciones extends HttpServlet {

    Logger logger = LoggerFactory.getLogger(ServletUsuario.class);

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String user = request.getParameter("user");
        String pass = request.getParameter("pass");
        int id = Integer.parseInt(request.getParameter("id"));
        Usuario usuario = new Usuario();
        usuario.setUser(user);
        usuario.setPass(pass);
        usuario.setId(id);
        DaoUsuario userDao = new DaoUsuario();
        if (userDao.actualizarUsuario(usuario)) {
            logger.info("Actualizado correctamente");
            request.setAttribute("mensaje", "Actualizado correctamente");
            request.setAttribute("ListaUsuarios", new DaoUsuario().consultarTodos());
            request.getRequestDispatcher("listaUsuarios.jsp").forward(request, response);

        } else {
            logger.error("Error al actualizar");
            request.setAttribute("mensaje", "Error al actualizar");
            request.setAttribute("ListaUsuarios", new DaoUsuario().consultarTodos());
            request.getRequestDispatcher("listaUsuarios.jsp").forward(request, response);
        }

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
