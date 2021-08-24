package mx.edu.utez.crud.controlador;

import mx.edu.utez.crud.dao.ProductoDao;
import mx.edu.utez.crud.dao.TallaDao;
import mx.edu.utez.crud.modelo.Producto;
import mx.edu.utez.crud.modelo.Talla;
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
        ProductoDao productoDao = new ProductoDao();
        if (request.getParameter("accion") != null) {
            int id = Integer.parseInt(request.getParameter("id"));

            if (productoDao.eliminarProducto(id)) {
                logger.info("Registro Eliminado");
                request.setAttribute("mensaje", "Registro Eliminado");

            } else {
                logger.info("Error al eliminar");
                request.setAttribute("mensaje", "Error al eliminar");
            }

        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String name = request.getParameter("nombre");
        ProductoDao productoDao = new ProductoDao();

            HttpSession sesionLogin = request.getSession();
            Producto producto = new Producto();//((Integer) sesionLogin.getAttribute("id"));
            int idProducto = productoDao.guardarProducto(producto);
            if (idProducto != 0) {
                //Agregar el registro de la relación color producto

                //Agregar el registro de la relacion de tallas producto
                logger.info("EL producto ha sido registrado");
                request.setAttribute("mensaje", "Talla Registrada");
            } else {
                logger.error("Error al registrar talla");
                request.setAttribute("mensaje", "Error al registrar!");
            }
        request.getRequestDispatcher("registroTalla.jsp").forward(request, response);
    }
}
