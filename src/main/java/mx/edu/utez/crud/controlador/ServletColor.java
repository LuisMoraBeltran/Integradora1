package mx.edu.utez.crud.controlador;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import mx.edu.utez.crud.dao.ColorDao;
import mx.edu.utez.crud.modelo.Color;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

@WebServlet(name = "ServletColor", value = "/ServletColor")
public class ServletColor extends HttpServlet {

    Logger logger = LoggerFactory.getLogger(ServletColor.class);

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        ColorDao colorDao = new ColorDao();
        if (request.getParameter("accion") != null) {
            int id = Integer.parseInt(request.getParameter("id"));

            if (colorDao.eliminarColor(id)) {
                logger.info("Registro Eliminado");
                request.setAttribute("mensaje", "Registro Eliminado");

            } else {
                logger.info("Error al eliminar");
                request.setAttribute("mensaje", "Error al eliminar");
            }
            request.setAttribute("ListaColores", colorDao.consultarColores());
            request.getRequestDispatcher("listaColoress.jsp").forward(request, response);

        } else {
            request.setAttribute("ListaColores", colorDao.consultarColores());
            request.getRequestDispatcher("listaColores.jsp").forward(request, response);
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String name = request.getParameter("color");
        ColorDao colorDao = new ColorDao();
        if (!colorDao.existeColor(name)) {
            HttpSession sesionLogin = request.getSession();
            Color color = new Color(name, (Integer) sesionLogin.getAttribute("id"));
            if (colorDao.guardarColor(color)) {
                logger.info("El color ha sido registrado");
                request.setAttribute("mensaje", "Color Registrado");
                request.getRequestDispatcher("registroColor.jsp").forward(request, response);
            } else {
                logger.error("Error al registrar color");
                request.setAttribute("mensaje", "Error al registrar!");
                request.getRequestDispatcher("registroColor.jsp").forward(request, response);
            }
        } else {
            logger.error("Error el color ya existe");
            request.setAttribute("mensaje", "El color ya existe.");
            request.getRequestDispatcher("registroColor.jsp").forward(request, response);
        }
    }
}
