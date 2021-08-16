package mx.edu.utez.crud.dao;

import mx.edu.utez.crud.util.ConexionMYSQL;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;
import mx.edu.utez.crud.modelo.TipoProducto;

public class TipoProductoDao {

    Logger logger = LoggerFactory.getLogger(TipoProductoDao.class);

    public boolean guardarTipoProducto(String tipoProducto) {
        try (Connection con = ConexionMYSQL.getConnection()) {
            try (PreparedStatement pstm = con.prepareStatement("insert into tipoProducto (tipo_producto) values(?)")) {
                pstm.setString(1, tipoProducto);

                return pstm.executeUpdate() == 1;
            } catch (Exception e) {
                logger.error(e.getMessage());
            }
        } catch (Exception e) {
            logger.error(e.getMessage());
        }
        return false;
    }

    public List<TipoProducto> consultarTiposDeProductos() {
        List<TipoProducto> listaTipoProductos = new ArrayList<>();
        try (
                Connection con = ConexionMYSQL.getConnection();
                Statement stm = con.createStatement();
                ResultSet rs = stm.executeQuery("SELECT * FROM tipoProducto");) {
            while (rs.next()) {
                TipoProducto tipoProducto = new TipoProducto(rs.getInt("idtipoProducto"), rs.getString("tipo_producto"));
                listaTipoProductos.add(tipoProducto);
            }
        } catch (Exception e) {
            logger.error(e.getMessage());
        }
        return listaTipoProductos;

    }

    public boolean eliminarTipoProducto(int idTipoProducto) {
        boolean status = false;
        try {
            Connection con = ConexionMYSQL.getConnection();
            String sql = "DELETE FROM tipoProducto WHERE id_tipoProducto=" + idTipoProducto;
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

    public boolean existeTipoProducto(String tipoProducto) {
        boolean status = false;
        try (Connection con = ConexionMYSQL.getConnection();
                PreparedStatement stm = con.prepareStatement("SELECT * FROM tipoProducto WHERE tipo_producto=?");) {
            stm.setString(1, tipoProducto);
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
