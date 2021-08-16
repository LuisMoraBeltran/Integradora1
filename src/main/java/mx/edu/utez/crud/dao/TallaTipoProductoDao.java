package mx.edu.utez.crud.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import javax.servlet.annotation.WebServlet;
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
}
