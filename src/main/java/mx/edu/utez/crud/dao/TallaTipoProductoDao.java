package mx.edu.utez.crud.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;
import javax.servlet.annotation.WebServlet;

import mx.edu.utez.crud.modelo.Talla;
import mx.edu.utez.crud.modelo.TallaTipoProducto;
import mx.edu.utez.crud.modelo.TipoProducto;
import mx.edu.utez.crud.util.ConexionMYSQL;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

@WebServlet(name = "ServletTallaTipoProducto", value = "/ServletTallaTipoProducto")
public class TallaTipoProductoDao {
    Logger logger = LoggerFactory.getLogger(TallaDao.class);

    public boolean guardarRelacionTallaTipoProducto(int idTalla, int idTipoProducto) {
        try (Connection con = ConexionMYSQL.getConnection()) {
            try (PreparedStatement pstm = con.prepareStatement("insert into talla_has_tipoProducto (talla_id_talla, tipoProducto_idtipoProducto) values(?,?)")) {
                pstm.setInt(1, idTalla);
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
    
    public List<TallaTipoProducto> consultaTodasLasRelaciones() {
        List<TallaTipoProducto> listaRelacion = new ArrayList<>();
        try (
                Connection con = ConexionMYSQL.getConnection();
                Statement stm = con.createStatement();
                ResultSet rs = stm.executeQuery("SELECT id_talla, talla, idtipoProducto, tipo_producto "
                        + "FROM talla_has_tipoProducto "
                        + "INNER JOIN talla ON id_talla = talla_id_talla "
                        + "INNER JOIN tipoProducto ON idtipoProducto = tipoProducto_idtipoProducto");) {
            while (rs.next()) {
                TallaTipoProducto ttp = new TallaTipoProducto(rs.getInt("id_talla"), rs.getString("talla"), rs.getInt("idtipoProducto"), rs.getString("tipo_producto"));
                listaRelacion.add(ttp);
            }
        } catch (Exception e) {
            logger.error(e.getMessage());
        }
        return listaRelacion;
    }
    
    public boolean eliminarRelacion(int idTalla, int idTipoProducto) {
        boolean status = false;
        try {
            Connection con = ConexionMYSQL.getConnection();
            String sql = "DELETE FROM talla_has_tipoProducto WHERE talla_id_talla=" + idTalla + " AND tipoProducto_idtipoProducto=" + idTipoProducto;
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

    public List<Talla> consultaProductoTalla(int idTipoProducto) {
        List<Talla> listaRelacion = new ArrayList<>();
        try (
                Connection con = ConexionMYSQL.getConnection();
                Statement stm = con.createStatement();
                ResultSet rs = stm.executeQuery("SELECT id_talla, talla "
                        + "FROM talla_has_tipoProducto "
                        + "INNER JOIN talla ON id_talla = talla_id_talla "
                        + "WHERE tipoProducto_id_tipoProducto =" + idTipoProducto);) {
            while (rs.next()) {
                Talla talla = new Talla(rs.getInt("id_talla"), rs.getString("talla"));
                listaRelacion.add(talla);
            }
        } catch (Exception e) {
            logger.error(e.getMessage());
        }
        return listaRelacion;
    }
}
