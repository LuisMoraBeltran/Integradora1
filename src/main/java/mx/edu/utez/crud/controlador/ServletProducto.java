package mx.edu.utez.crud.controlador;

import mx.edu.utez.crud.dao.ProductoDao;
import mx.edu.utez.crud.dao.TallaDao;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet(name = "ServletProducto", value = "/ServletProducto")
public class ServletProducto extends HttpServlet {
    Logger logger = LoggerFactory.getLogger(ServletProducto.class);
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        ProductoDao tallaDao = new ProductoDao();
        if (request.getParameter("accion") != null) {
            int id = Integer.parseInt(request.getParameter("id"));

            if (tallaDao.eliminarProducto(id)) {
                logger.info("Registro Eliminado");
                request.setAttribute("mensaje", "Registro Eliminado");

            } else {
                logger.info("Error al eliminar");
                request.setAttribute("mensaje", "Error al eliminar");
            }

        }
        request.setAttribute("ListaTiposProducto", tallaDao.consultarTiposDeProductos());
        request.getRequestDispatcher("listaTiposProductos.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
