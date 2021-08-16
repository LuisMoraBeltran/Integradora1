package mx.edu.utez.crud.controlador;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import mx.edu.utez.crud.dao.TallaTipoProductoDao;
import mx.edu.utez.crud.dao.TipoProductoDao;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

@WebServlet(name = "ServletTallaTipoProducto", value = "/ServletTallaTipoProducto")
public class ServletTallaTipoProducto extends HttpServlet {

    Logger logger = LoggerFactory.getLogger(ServletTallaTipoProducto.class);

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        
    }
    
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        int idTalla = Integer.parseInt(request.getParameter("id_talla"));
        int idTipoProducto = Integer.parseInt(request.getParameter("id_tipoProducto"));
        TallaTipoProductoDao ttpd = new TallaTipoProductoDao();
        if (ttpd.guardarRelacionTallaTipoProducto(idTalla, idTipoProducto)) {
            logger.info("Relacion entre talla y tipo de producto registrada");
            request.setAttribute("mensaje", "Relacion entre talla y tipo de producto registrada");
            request.getRequestDispatcher("registroTalla_TipoProducto.jsp").forward(request, response);
        } else {
            logger.error("Error al registrar relacion entre talla y tipo de producto");
            request.setAttribute("mensaje", "Error al registrar relacion entre talla y tipo de producto");
            request.getRequestDispatcher("registroTalla_TipoProducto.jsp").forward(request, response);
        }
    }
}
