package mx.edu.utez.crud.controlador;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import mx.edu.utez.crud.dao.TipoProductoDao;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

@WebServlet(name = "ServletTipoProducto", value = "/ServletTipoProducto")
public class ServletTipoProducto extends HttpServlet {

    Logger logger = LoggerFactory.getLogger(ServletTipoProducto.class);

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        TipoProductoDao tipoProductoDao = new TipoProductoDao();
        if (request.getParameter("accion") != null) {
            int id = Integer.parseInt(request.getParameter("id"));

            if (tipoProductoDao.eliminarTipoProducto(id)) {
                logger.info("Registro Eliminado");
                request.setAttribute("mensaje", "Registro Eliminado");

            } else {
                logger.info("Error al eliminar");
                request.setAttribute("mensaje", "Error al eliminar");
            }
            request.setAttribute("ListaTiposProductos", tipoProductoDao.consultarTiposDeProductos());
            request.getRequestDispatcher("listaTiposProductos.jsp").forward(request, response);

        } else {
            request.setAttribute("ListaTiposProductos", tipoProductoDao.consultarTiposDeProductos());
            request.getRequestDispatcher("listaTiposProductos.jsp").forward(request, response);
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String name = request.getParameter("tipoProducto");
        TipoProductoDao tipoProductosDao = new TipoProductoDao();
        if (!tipoProductosDao.existeTipoProducto(name)) {
            if (tipoProductosDao.guardarTipoProducto(name)) {
                logger.info("El tipo de producto ha sido registrado");
                request.setAttribute("mensaje", "Tipo de producto Registrado");
                request.getRequestDispatcher("registroTipoProducto.jsp").forward(request, response);
            } else {
                logger.error("Error al registrar tipo producto");
                request.setAttribute("mensaje", "Error al registrar!");
                request.getRequestDispatcher("registroTipoProducto.jsp").forward(request, response);
            }
        } else {
            logger.error("Error el tipo de producto ya existe");
            request.setAttribute("mensaje", "El tipo de producto ya existe.");
            request.getRequestDispatcher("registroTipoProducto.jsp").forward(request, response);
        }
    }
}
