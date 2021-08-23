package mx.edu.utez.crud.dao;

import mx.edu.utez.crud.modelo.ColorTipoProducto;
import mx.edu.utez.crud.util.ConexionMYSQL;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class ColorTipoProdcutoDao {

    Logger logger = LoggerFactory.getLogger(ColorDao.class);

    public boolean guardarRelacionColorTipoProducto(int idColor, int idTipoProducto) {
        try (Connection con = ConexionMYSQL.getConnection()) {
            try (PreparedStatement pstm = con.prepareStatement("insert into color_has_tipoProducto (color_id_color, producto_id_producto) values(?,?)")) {
                pstm.setInt(1, idColor);
                pstm.setInt(2, idTipoProducto);

                return pstm.executeUpdate() == 1;
            } catch (Exception e) {
                logger.error(e.getMessage());
            }
        } catch (Exception e) {
            logger.error(e.getMessage());
        }
        return false;
    }

    public List<ColorTipoProducto> consultaTodasLasRelaciones() {
        List<ColorTipoProducto> listaRelacion = new ArrayList<>();
        try (
                Connection con = ConexionMYSQL.getConnection();
                Statement stm = con.createStatement();
                ResultSet rs = stm.executeQuery("SELECT id_color, color, idtipoProducto, tipo_producto "
                        + "FROM color_has_tipoProducto "
                        + "INNER JOIN color ON id_color = color_id_color "
                        + "INNER JOIN tipoProducto ON idtipoProducto = tipoProducto_idtipoProducto")) {
            while (rs.next()) {
                ColorTipoProducto ttp = new ColorTipoProducto(rs.getInt("id_color"), rs.getString("color"), rs.getInt("idtipoProducto"), rs.getString("tipo_producto"));
                listaRelacion.add(ttp);
            }
        } catch (Exception e) {
            logger.error(e.getMessage());
        }
        return listaRelacion;
    }

    public boolean eliminarRelacion(int idColor, int idTipoProducto) {
        boolean status = false;
        try {
            Connection con = ConexionMYSQL.getConnection();
            String sql = "DELETE FROM color_has_tipoProducto WHERE color_id_color=" + idColor + " AND tipoProducto_idtipoProducto=" + idTipoProducto;
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
}
