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
        ProductoDao productoDao = new ProductoDao();
        HttpSession sesionLogin = request.getSession();
        Producto producto = new Producto(
                request.getParameter("product"),
                request.getParameter("descript"),
                Integer.parseInt(request.getParameter("unid")),
                Float.parseFloat(request.getParameter("cost")),
                request.getParameter("marc"),
                (Integer) sesionLogin.getAttribute("idCliente")
        );

        int idProducto = productoDao.guardarProducto(producto);
        if (idProducto != 0) {
            //Agregar el registro de la relacion de color producto
            String colores[] = request.getParameterValues("colores");
            for (String idColor : colores) {
                if (productoDao.guardarRelacionProductoColores(idProducto, Integer.parseInt(idColor))) {
                    logger.info("Relacion entre producto y colores registrada");
                    //QUITE EL DISPACHER POR QUE ESTAS EN UN CICLO Y SI MANDAS EL DISPACHER VAS A ROMPER EL CICLO Y NO VAS NI A TERMINAR DE GUARDAR TODO
                } else {
                    logger.error("Error al registrar relacion entre producto y color");
                    //AQUI DEBERIAS MANDARLO A EDITAR EL PRODUCTO, YA QUE SI PUDISTE GUARDAR EL PRODUCTO PERO NO LA RELACION.
                    //LA OTRA OPCION ES QUE ELIMENS EL PRODUCTO Y ENTONCES SI LO REDIRIJAS AL FORMULARIO DE REGISTRO PRODUCTO DE NUEVO
                    //PIENSA COMO VAS A TRATAR ESTO POR QUE ESTARIAS INTERRUMPIENDO TODO TE COMENTO EL DISPACHERT
                    //request.getRequestDispatcher("registroProduct.jsp").forward(request, response);
                }
            }
            
            
            //Agregar el registro de la relación talla producto
            String tallas[] = request.getParameterValues("tallas");
            for (String idTalla : tallas) {
                if (productoDao.guardarRelacionProductoTallas(idProducto, Integer.parseInt(idTalla))) {
                    logger.info("Relacion entre producto y tallas registrada");
                    //QUITE EL DISPACHER POR QUE ESTAS EN UN CICLO Y SI MANDAS EL DISPACHER VAS A ROMPER EL CICLO Y NO VAS NI A TERMINAR DE GUARDAR TODO
                } else {
                    logger.error("Error al registrar relacion entre producto y tallas");
                    //AQUI DEBERIAS MANDARLO A EDITAR EL PRODUCTO, YA QUE SI PUDISTE GUARDAR EL PRODUCTO PERO NO LA RELACION.
                    //LA OTRA OPCION ES QUE ELIMENS EL PRODUCTO Y ENTONCES SI LO REDIRIJAS AL FORMULARIO DE REGISTRO PRODUCTO DE NUEVO
                    //PIENSA COMO VAS A TRATAR ESTO POR QUE ESTARIAS INTERRUMPIENDO TODO TE COMENTO EL DISPACHERT
                    //request.getRequestDispatcher("registroProduct.jsp").forward(request, response);
                }
            }
            logger.info("EL producto ha sido registrado");
            request.setAttribute("mensaje", "Producto registrado");
        } else {
            logger.error("Error al registrar producto");
            request.setAttribute("mensaje", "Error al registrar producto");
        }
        request.getRequestDispatcher("registroProduct.jsp").forward(request, response);
    }
}
