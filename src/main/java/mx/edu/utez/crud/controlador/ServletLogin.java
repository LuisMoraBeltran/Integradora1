package mx.edu.utez.crud.controlador;

import mx.edu.utez.crud.modelo.DaoUsuario;
import mx.edu.utez.crud.modelo.Usuario;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "ServletLogin", value="/ServletLogin")
public class ServletLogin  extends HttpServlet {
    Logger logger= LoggerFactory.getLogger(ServletLogin.class);

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String user=request.getParameter("user");
        String pass=request.getParameter("pass");
        Usuario usuario=new Usuario(user, pass);
        DaoUsuario userDao=new DaoUsuario();
        if(userDao.loginUsuario(usuario)){
            logger.info("Login exitoso");
            request.setAttribute("mensaje","Login Exitoso");
            request.setAttribute("ListaUsuarios", userDao.consultarTodos()) ;
            request.getRequestDispatcher("listaUsuarios.jsp").forward(request,response);

        }else{
            logger.error("Error al logear");
            request.setAttribute("mensaje","Los datos ingresados no son validos.");
            request.getRequestDispatcher("login.jsp").forward(request,response);
        }
    }
}
