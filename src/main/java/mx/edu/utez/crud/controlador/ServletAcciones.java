package mx.edu.utez.crud.controlador;

import mx.edu.utez.crud.dao.UsuarioDao;
import mx.edu.utez.crud.modelo.Usuario;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;
import java.io.IOException;
import java.io.InputStream;

@WebServlet(name = "ServletAcciones", value = "/ServletAcciones")
@MultipartConfig
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


        UsuarioDao userDao = new UsuarioDao();
        if (userDao.actualizarUsuario(usuario)) {
            logger.info("Actualizado correctamente");
            request.setAttribute("mensaje", "Actualizado correctamente");

        } else {
            logger.error("Error al actualizar");
            request.setAttribute("mensaje", "Error al actualizar");
        }
        request.setAttribute("ListaUsuarios", new UsuarioDao().consultarTodos());
        request.getRequestDispatcher("listaUsuarios.jsp").forward(request, response);

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
