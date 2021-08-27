package mx.edu.utez.crud.util;

import org.slf4j.LoggerFactory;
import org.slf4j.Logger;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class ConexionMYSQL {
    public static Connection getConnection() throws SQLException{
        DriverManager.registerDriver(new com.mysql.cj.jdbc.Driver());
        return DriverManager.getConnection("jdbc:mysql://lemb-bd02.cynquo1fkeqo.us-east-1.rds.amazonaws.com:3306/crudusuarios","admin","L23Bel08");
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
