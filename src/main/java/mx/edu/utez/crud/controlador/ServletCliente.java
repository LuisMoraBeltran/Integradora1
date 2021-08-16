package mx.edu.utez.crud.controlador;

import mx.edu.utez.crud.modelo.Cliente;
import mx.edu.utez.crud.modelo.DaoCliente;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet(name = "ServletCliente", value = "/ServletCliente")
public class ServletCliente extends HttpServlet {

    Logger logger = LoggerFactory.getLogger(ServletUsuario.class);

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        DaoCliente daoCliente = new DaoCliente();
        if (request.getParameter("accion") != null) {
            int id = Integer.parseInt(request.getParameter("id"));
            Cliente cliente = new Cliente(id);

            if (daoCliente.eliminarCliente(cliente)) {
                logger.info("Registro Eliminado");
                request.setAttribute("mensaje", "Registro Eliminado");

            } else {
                logger.info("Error al eliminar");
                request.setAttribute("mensaje", "Error al eliminar");
            }
            request.setAttribute("ListaClientes", daoCliente.consultarClientes());
            request.getRequestDispatcher("listaClient.jsp").forward(request, response);

        } else if (request.getParameter("id") != null) {
            int id = Integer.parseInt((request.getParameter("id")));
            request.setAttribute("client", daoCliente.consultarID(id));
            request.getRequestDispatcher("editClient.jsp").forward(request, response);
        } else {
            request.setAttribute("ListaClientes", daoCliente.consultarClientes());
            request.getRequestDispatcher("listaClient.jsp").forward(request, response);
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String name = request.getParameter("nombre");
        String pater = request.getParameter("patern");
        String mater = request.getParameter("matern");
        String correo = request.getParameter("email");
        String telef = request.getParameter("telef");
        String direc = request.getParameter("direc");

        Cliente cliente = new Cliente(name,pater,mater,correo,telef,direc);
       DaoCliente clientDao = new DaoCliente();
        if (!clientDao.existeClient(correo,telef)) {
            if (clientDao.guardarCliente(cliente)) {
                logger.info("El cliente ha sido registrado");
                request.setAttribute("mensaje", "Tus datos han sido registrados");

                request.getRequestDispatcher("menuPrincipal.jsp").forward(request, response);
            } else {
                logger.error("Error al registrar datos");
                request.setAttribute("mensaje", "Error al registrar!");
                request.getRequestDispatcher("formCliente.jsp").forward(request, response);
            }
        } else {
            logger.error("Error los datos ya existen");
            request.setAttribute("mensaje", "Los datos ya existen.");
            request.getRequestDispatcher("formCliente.jsp").forward(request, response);
        }
        doGet(request, response);

    }
    }
