package mx.edu.utez.crud.util;

import org.slf4j.LoggerFactory;
import org.slf4j.Logger;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class ConexionMYSQL {
    public static Connection getConnection() throws SQLException{
        DriverManager.registerDriver(new com.mysql.cj.jdbc.Driver());
        return DriverManager.getConnection("jdbc:mysql://localhost:3306/crudUsuarios","root","lebel02308");
    }

    public static void main(String[] args) {
        Logger logger = LoggerFactory.getLogger(ConexionMYSQL.class);
        try{
            logger.info("Abriendo conexion");
            Connection con =ConexionMYSQL.getConnection();
            logger.info("Conexión establecida");
            con.close();
            logger.info("Conexion Finalizada");
        }catch(Exception e){
            logger.error(e.getMessage());
        }

    }




}
