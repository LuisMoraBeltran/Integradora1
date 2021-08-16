package mx.edu.utez.crud.controlador;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import mx.edu.utez.crud.dao.TallaDao;
import mx.edu.utez.crud.modelo.Talla;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

@WebServlet(name = "ServletTalla", value = "/ServletTalla")
public class ServletTalla extends HttpServlet {

    Logger logger = LoggerFactory.getLogger(ServletTalla.class);

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        TallaDao tallaDao = new TallaDao();
        if (request.getParameter("accion") != null) {
            int id = Integer.parseInt(request.getParameter("id"));

            if (tallaDao.eliminarTalla(id)) {
                logger.info("Registro Eliminado");
                request.setAttribute("mensaje", "Registro Eliminado");

            } else {
                logger.info("Error al eliminar");
                request.setAttribute("mensaje", "Error al eliminar");
            }
            request.setAttribute("ListaTallas", tallaDao.consultarTallas());
            request.getRequestDispatcher("listaTallas.jsp").forward(request, response);

        } else {
            request.setAttribute("ListaTallas", tallaDao.consultarTallas());
            request.getRequestDispatcher("listaTallas.jsp").forward(request, response);
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String name = request.getParameter("talla");
        TallaDao tallaDao = new TallaDao();
        if (!tallaDao.existeTalla(name)) {
            HttpSession sesionLogin = request.getSession();
            Talla talla = new Talla(name, (Integer) sesionLogin.getAttribute("id"));
            if (tallaDao.guardarTalla(talla)) {
                logger.info("La talla ha sido registrado");
                request.setAttribute("mensaje", "Talla Registrada");
                request.getRequestDispatcher("registroTalla.jsp").forward(request, response);
            } else {
                logger.error("Error al registrar talla");
                request.setAttribute("mensaje", "Error al registrar!");
                request.getRequestDispatcher("registroTalla.jsp").forward(request, response);
            }
        } else {
            logger.error("Error la talla ya existe");
            request.setAttribute("mensaje", "La talla ya existe.");
            request.getRequestDispatcher("registroTalla.jsp").forward(request, response);
        }
    }
}
