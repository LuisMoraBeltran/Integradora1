package mx.edu.utez.crud.modelo;

import com.mysql.cj.protocol.Resultset;
import mx.edu.utez.crud.util.ConexionMYSQL;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class DaoUsuario {

    Logger logger = LoggerFactory.getLogger(DaoUsuario.class);

    //Metodo para registrar en la tabla usuarios
    public boolean guardarUsuario(Usuario user) {
        try (Connection con = ConexionMYSQL.getConnection()) {
            try (PreparedStatement pstm = con.prepareStatement("insert into usuarios(user,pass) values(?,?)")) {
                pstm.setString(1, user.getUser());
                pstm.setString(2, user.getPass());
                return pstm.executeUpdate() == 1;
            } catch (Exception e) {
                logger.error(e.getMessage());
            }
        } catch (Exception e) {
            logger.error(e.getMessage());
        }
        return false;
    }

    //Metodo para consultar todos los registros de la tabla usuarios
    public List<Usuario> consultarTodos() {
        List<Usuario> listaUsuario = new ArrayList<>();
        try (
                Connection con = ConexionMYSQL.getConnection();
                Statement stm = con.createStatement();
                ResultSet rs = stm.executeQuery("SELECT * FROM usuarios");) {
            while (rs.next()) {
                Usuario user = new Usuario();
                user.setId(rs.getInt("idusuarios"));
                user.setUser(rs.getString("user"));
                user.setPass(rs.getString("pass"));
                listaUsuario.add(user); //Falto esta linea
            }
        } catch (Exception e) {
            logger.error(e.getMessage());
        }
        return listaUsuario;

    }

    //Metodo para consultar por un ID
    public Usuario consultarID(int id) {
        Usuario user = new Usuario();
        try (Connection con = ConexionMYSQL.getConnection();
                PreparedStatement stm = con.prepareStatement("SELECT * FROM usuarios WHERE idusuarios=?");) {
            stm.setInt(1, id);
            try (ResultSet rs = stm.executeQuery();) {
                while (rs.next()) {
                    user.setId(rs.getInt("idusuarios"));
                    user.setUser(rs.getString("user"));
                    user.setPass(rs.getString("pass"));
                }

            } catch (Exception e) {
                logger.error(e.getMessage());
            }

        } catch (Exception e) {
            logger.error(e.getMessage());
        }
        return user;
    }

    //Metodo para modificar un registro
    public boolean actualizarUsuario(Usuario user) {
        boolean status = false;
        try {
            Connection con = ConexionMYSQL.getConnection();
            String sql = "UPDATE usuarios SET user=?, pass=? WHERE idusuarios=" + user.getId();
            PreparedStatement pstm = con.prepareStatement(sql);
            pstm.setString(1, user.getUser());
            pstm.setString(2, user.getPass());
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

    //Metodo para eliminar registros
    public boolean eliminarUsuario(Usuario user) {
        boolean status = false;
        try {
            Connection con = ConexionMYSQL.getConnection();
            String sql = "DELETE FROM usuarios WHERE idusuarios=" + user.getId();
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

    //Metodo para login usuario
    public boolean loginUsuario(Usuario user) {
        boolean status = false;
        try (Connection con = ConexionMYSQL.getConnection();
                PreparedStatement stm = con.prepareStatement("SELECT * FROM usuarios WHERE user=? AND pass=?");) {
            stm.setString(1, user.getUser());
            stm.setString(2, user.getPass());
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

    //Metodo para validar usuario
    public boolean existeUsuario(String user) {
        boolean status = false;
        try (Connection con = ConexionMYSQL.getConnection();
                PreparedStatement stm = con.prepareStatement("SELECT * FROM usuarios WHERE user=?");) {
            stm.setString(1, user);
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
