package mx.edu.utez.crud.controlador;

import mx.edu.utez.crud.dao.ColorTipoProdcutoDao;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet(name = "ServletColorTipoProducto", value = "/ServletColorTipoProducto")
public class ServletColorTipoProducto extends HttpServlet {
    Logger logger = LoggerFactory.getLogger(ServletColorTipoProducto.class);

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        ColorTipoProdcutoDao ttpd = new ColorTipoProdcutoDao();
        if (request.getParameter("accion") != null) {
            int idColor = Integer.parseInt(request.getParameter("idColor"));
            int idTipoProducto = Integer.parseInt(request.getParameter("idTipoProducto"));

            if (ttpd.eliminarRelacion(idColor, idTipoProducto)) {
                logger.info("Registro Eliminado");
                request.setAttribute("mensaje", "Registro Eliminado");

            } else {
                logger.info("Error al eliminar");
                request.setAttribute("mensaje", "Error al eliminar");
            }
            request.setAttribute("ListaColorTipoProducto", ttpd.consultaTodasLasRelaciones());
            request.getRequestDispatcher("listaTiposProductos_Color.jsp").forward(request, response);

        } else {
            request.setAttribute("ListaColorTipoProducto", ttpd.consultaTodasLasRelaciones());
            request.getRequestDispatcher("listaTiposProductos_Color.jsp").forward(request, response);
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        int idColor = Integer.parseInt(request.getParameter("colorProducto"));
        int idTipoProducto = Integer.parseInt(request.getParameter("tipoProducto"));
        ColorTipoProdcutoDao ttpd = new ColorTipoProdcutoDao();
        if (ttpd.guardarRelacionColorTipoProducto(idColor, idTipoProducto)) {
            logger.info("Relacion entre color y tipo de producto registrada");
            request.setAttribute("mensaje", "Relacion entre color y tipo de producto registrada");
            request.getRequestDispatcher("registroColor_TipoProdcuto.jsp").forward(request, response);
        } else {
            logger.error("Error al registrar relacion entre color y tipo de producto");
            request.setAttribute("mensaje", "Error al registrar relacion entre color y tipo de producto");
            request.getRequestDispatcher("registrocolor_tipoProducto.jsp").forward(request, response);
        }
    }
}
