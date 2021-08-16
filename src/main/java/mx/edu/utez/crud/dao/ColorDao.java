package mx.edu.utez.crud.dao;

import mx.edu.utez.crud.util.ConexionMYSQL;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;
import mx.edu.utez.crud.modelo.Color;

public class ColorDao {

    Logger logger = LoggerFactory.getLogger(ColorDao.class);

    public boolean guardarColor(Color color) {
        try (Connection con = ConexionMYSQL.getConnection()) {
            try (PreparedStatement pstm = con.prepareStatement("insert into color (color, usuarios_idusuarios) values(?,?)")) {
                pstm.setString(1, color.getName());
                pstm.setInt(2, color.getIdUsuario());

                return pstm.executeUpdate() == 1;
            } catch (Exception e) {
                logger.error(e.getMessage());
            }
        } catch (Exception e) {
            logger.error(e.getMessage());
        }
        return false;
    }

    public List<Color> consultarColores() {
        List<Color> listaColores = new ArrayList<>();
        try (
                Connection con = ConexionMYSQL.getConnection();
                Statement stm = con.createStatement();
                ResultSet rs = stm.executeQuery("SELECT * FROM color");) {
            while (rs.next()) {
                Color color = new Color(rs.getInt("id_color"), rs.getString("color"), rs.getInt("usuarios_idusuarios"));
                listaColores.add(color);
            }
        } catch (Exception e) {
            logger.error(e.getMessage());
        }
        return listaColores;

    }

    public boolean eliminarColor(int idColor) {
        boolean status = false;
        try {
            Connection con = ConexionMYSQL.getConnection();
            String sql = "DELETE FROM color WHERE id_color=" + idColor;
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

    public boolean existeColor(String color) {
        boolean status = false;
        try (Connection con = ConexionMYSQL.getConnection();
                PreparedStatement stm = con.prepareStatement("SELECT * FROM color WHERE color=?");) {
            stm.setString(1, color);
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
