package mx.edu.utez.crud.dao;

import mx.edu.utez.crud.util.ConexionMYSQL;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;
import mx.edu.utez.crud.modelo.Talla;

public class TallaDao {

    Logger logger = LoggerFactory.getLogger(TallaDao.class);

    public boolean guardarTalla(Talla talla) {
        try (Connection con = ConexionMYSQL.getConnection()) {
            try (PreparedStatement pstm = con.prepareStatement("insert into talla (talla, usuarios_idusuarios) values(?,?)")) {
                pstm.setString(1, talla.getName());
                pstm.setInt(2, talla.getIdUsuario());

                return pstm.executeUpdate() == 1;
            } catch (Exception e) {
                logger.error(e.getMessage());
            }
        } catch (Exception e) {
            logger.error(e.getMessage());
        }
        return false;
    }

    public List<Talla> consultarTallas() {
        List<Talla> listaTallas = new ArrayList<>();
        try (
                Connection con = ConexionMYSQL.getConnection();
                Statement stm = con.createStatement();
                ResultSet rs = stm.executeQuery("SELECT * FROM talla");) {
            while (rs.next()) {
                Talla talla = new Talla(rs.getInt("id_talla"), rs.getString("talla"), rs.getInt("usuarios_idusuarios"));
                listaTallas.add(talla);
            }
        } catch (Exception e) {
            logger.error(e.getMessage());
        }
        return listaTallas;

    }

    public boolean eliminarTalla(int idTalla) {
        boolean status = false;
        try {
            Connection con = ConexionMYSQL.getConnection();
            String sql = "DELETE FROM talla WHERE id_talla=" + idTalla;
            PreparedStatement pstm = con.prepareStatement(sql);
            if (pstm.executeUpdate() == 1) {
                status = true;
            }
            pstm.close();
            con.close();
        } catch (SQLException e) {
            logger.error(e.getMessage());
        }

        return status;
    }

    public boolean existeTalla(String talla) {
        boolean status = false;
        try (Connection con = ConexionMYSQL.getConnection();
                PreparedStatement stm = con.prepareStatement("SELECT * FROM talla WHERE talla=?");) {
            stm.setString(1, talla);
            try (ResultSet rs = stm.executeQuery();) {
                while (rs.next()) {
                    status = true;
                }
            } catch (Exception e) {
                logger.error(e.getMessage());
            }
        } catch (Exception e) {
            logger.error(e.getMessage());
        }

        return status;
    }
}
