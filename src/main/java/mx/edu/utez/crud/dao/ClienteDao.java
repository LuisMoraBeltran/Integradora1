package mx.edu.utez.crud.dao;

import mx.edu.utez.crud.util.ConexionMYSQL;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;
import mx.edu.utez.crud.modelo.Cliente;

public class ClienteDao {
    Logger logger = LoggerFactory.getLogger(ClienteDao.class);

    public boolean guardarCliente(Cliente client) {
        try (Connection con = ConexionMYSQL.getConnection()) {
            try (PreparedStatement pstm = con.prepareStatement("insert into cliente(nombre,paterno,materno,correo,telefono,direccion,pass) values(?,?,?,?,?,?,?)")) {
                pstm.setString(1, client.getName());
                pstm.setString(2, client.getPater());
                pstm.setString(3, client.getMater());
                pstm.setString(4,client.getCorreo());
                pstm.setString(5, client.getTelefono());
                pstm.setString(6, client.getDireccion());
                pstm.setString(7,client.getPass());
                return pstm.executeUpdate() == 1;
            } catch (Exception e) {
                logger.error(e.getMessage());
            }
        } catch (Exception e) {
            logger.error(e.getMessage());
        }
        return false;
    }

    //Metodo para login usuario
    public Cliente loginCliente(Cliente cliente) {

        try (Connection con = ConexionMYSQL.getConnection();
             PreparedStatement stm = con.prepareStatement("SELECT * FROM cliente WHERE correo=? AND pass=?")) {
            stm.setString(1, cliente.getCorreo());
            stm.setString(2, cliente.getPass());
            try (ResultSet rs = stm.executeQuery()) {
                while (rs.next()) {
                    cliente.setId(rs.getInt("idclientes"));
                    return cliente;
                }
            } catch (Exception e) {
                logger.error(e.getMessage());
            }
        } catch (Exception e) {
            logger.error(e.getMessage());
        }
        return null;
    }

    //Metodo para validar cliente
    public boolean existeClient(String correo, String telef) {
        boolean status = false;
        try (Connection con = ConexionMYSQL.getConnection();
             PreparedStatement stm = con.prepareStatement("SELECT * FROM cliente WHERE correo=? AND telefono=?")) {
            stm.setString(1, correo);
            stm.setString(2,telef);
            try (ResultSet rs = stm.executeQuery()) {
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

    public List<Cliente> consultarClientes() {
        List<Cliente> listaCliente = new ArrayList<>();
        try (
                Connection con = ConexionMYSQL.getConnection();
                Statement stm = con.createStatement();
                ResultSet rs = stm.executeQuery("SELECT * FROM cliente")) {
            while (rs.next()) {
                Cliente client = new Cliente();
                client.setId(rs.getInt("id_cliente"));
                client.setName(rs.getString("nombre"));
                client.setPater(rs.getString("paterno"));
                client.setMater(rs.getString("materno"));
                client.setCorreo(rs.getString("correo"));
                client.setTelefono(rs.getString("telefono"));
                client.setDireccion(rs.getString("direccion"));
                client.setPass(rs.getString("pass"));


                listaCliente.add(client); //Falto esta linea
            }
        } catch (Exception e) {
            logger.error(e.getMessage());
        }
        return listaCliente;

    }

    //Metodo para consultar por un ID
    public Cliente consultarID(int id) {
        Cliente client = new Cliente(id);
        try (Connection con = ConexionMYSQL.getConnection();
             PreparedStatement stm = con.prepareStatement("SELECT * FROM cliente WHERE id_cliente=?")) {
            stm.setInt(1, id);
            try (ResultSet rs = stm.executeQuery()) {
                while (rs.next()) {
                    client.setId(rs.getInt("id_cliente"));
                    client.setCorreo(rs.getString("correo"));
                    client.setTelefono(rs.getString("telefono"));
                    client.setDireccion(rs.getString("direccion"));
                    client.setPass(rs.getString("pass"));
                }

            } catch (Exception e) {
                logger.error(e.getMessage());
            }

        } catch (Exception e) {
            logger.error(e.getMessage());
        }
        return client;
    }

    //Metodo para modificar un registro
    public boolean actualizarCliente(Cliente cliente) {
        boolean status = false;
        try {
            Connection con = ConexionMYSQL.getConnection();
            String sql = "UPDATE cliente SET correo=?, telefono=?, direccion=?, pass=? WHERE id_cliente=" + cliente.getId();
            PreparedStatement pstm = con.prepareStatement(sql);
            pstm.setString(1, cliente.getCorreo());
            pstm.setString(2,cliente.getTelefono());
            pstm.setString(3,cliente.getDireccion());
            pstm.setString(4, cliente.getPass());
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
    public boolean eliminarCliente(Cliente cliente) {
        boolean status = false;
        try {
            Connection con = ConexionMYSQL.getConnection();
            String sql = "DELETE FROM cliente WHERE id_cliente=" + cliente.getId();
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
