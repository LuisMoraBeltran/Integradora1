package mx.edu.utez.crud.controlador;

import mx.edu.utez.crud.dao.ProductoDao;
import mx.edu.utez.crud.modelo.Producto;
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
        String name = request.getParameter("product");
        ProductoDao productoDao = new ProductoDao();

            HttpSession sesionLogin = request.getSession();
            Producto producto = new Producto(name, (Integer) sesionLogin.getAttribute("id"));//((Integer) sesionLogin.getAttribute("id"));
            int idProducto = productoDao.guardarProducto(producto);
            if (idProducto != 0) {

                //Agregar el registro de la relación talla producto
                int idTalla = Integer.parseInt(request.getParameter("idProductoTalla"));
                ProductoDao pdt = new ProductoDao();
                if (pdt.guardarRelacionProductoTalla(idProducto, idTalla)) {
                    logger.info("Relacion entre producto y talla");
                    request.setAttribute("mensaje", "Relacion entre producto y talla");
                    request.getRequestDispatcher("producto.jsp").forward(request, response);
                } else {
                    logger.error("Error al registrar relacion producto y talla");
                    request.setAttribute("mensaje", "Error al registrar relacion producto y talla");
                    request.getRequestDispatcher("Producto.jsp").forward(request, response);
                }
                //Agregar el registro de la relacion de color producto
                String colores[] = request.getParameterValues("colores");
                //String select[] = request.getParameterValues("id");
                ProductoDao pdc = new ProductoDao();
                for (String color:colores) {

                    if (pdc.guardarRelacionProductoColor(idProducto,Integer.parseInt(color))) {
                        logger.info("Relacion entre producto y color registrada");
                        request.setAttribute("mensaje", "Relacion entre producto y color registrada");
                        request.getRequestDispatcher("Producto").forward(request, response);
                    } else {
                        logger.error("Error al registrar relacion entre producto y color");
                        request.setAttribute("mensaje", "Error al registrar relacion entre producto y color");
                        request.getRequestDispatcher("Producto.jsp").forward(request, response);
                    }

                }
                //
                logger.info("EL producto ha sido registrado");
                request.setAttribute("mensaje", "Producto registrado");
            } else {
                logger.error("Error al registrar talla");
                request.setAttribute("mensaje", "Error al registrar!");
            }
        request.getRequestDispatcher("Producto.jsp").forward(request, response);
    }
}
