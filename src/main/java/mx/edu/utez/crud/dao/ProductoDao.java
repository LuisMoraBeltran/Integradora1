package mx.edu.utez.crud.dao;

import mx.edu.utez.crud.modelo.Producto;
import mx.edu.utez.crud.modelo.TipoProducto;
import mx.edu.utez.crud.util.ConexionMYSQL;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class ProductoDao {
    Logger logger = LoggerFactory.getLogger(ProductoDao.class);

    //Metodo para registrar en la tabla producto
    public int guardarProducto(Producto product) {
        try (Connection con = ConexionMYSQL.getConnection()) {
            try (PreparedStatement pstm = con.prepareStatement("insert into producto(nombre,descripcion,unidad,costo,marca) values(?,?,?,?,?)")) {
                pstm.setString(1, product.getNameProduct());
                pstm.setString(2, product.getDescrip());
                pstm.setInt(3, product.getUnid());
                pstm.setFloat(4,product.getCost());
                pstm.setString(5,product.getMarc());

                try (ResultSet rs = pstm.executeQuery()) {
                    while (rs.next()) {
                        return (rs.getInt("id_producto"));
                    }

                } catch (Exception e) {
                    logger.error(e.getMessage());
                }
            } catch (Exception e) {
                logger.error(e.getMessage());
            }
        } catch (Exception e) {
            logger.error(e.getMessage());
        }
        return 0;
    }

    //Metodo para consultar por un ID
    public Producto consultarProductoID(int id) {
        Producto producto = new Producto();
        try (Connection con = ConexionMYSQL.getConnection();
             PreparedStatement stm = con.prepareStatement("SELECT * FROM producto WHERE id_producto=?");) {
            stm.setInt(1, id);
            try (ResultSet rs = stm.executeQuery();) {
                while (rs.next()) {
                    producto.setId(rs.getInt("id_producto"));
                    producto.setNameProduct(rs.getString("nombre"));
                    producto.setDescrip(rs.getString("descripcion"));
                    producto.setUnid(rs.getInt("unidad"));
                    producto.setCost(rs.getFloat("costo"));
                    producto.setMarc(rs.getString("marca"));
                }

            } catch (Exception e) {
                logger.error(e.getMessage());
            }

        } catch (Exception e) {
            logger.error(e.getMessage());
        }
        return producto;
    }

    //Metodo para modificar un producto
    public boolean actualizarProdcuto(Producto producto) {
        boolean status = false;
        try {
            Connection con = ConexionMYSQL.getConnection();
            String sql = "UPDATE producto SET nombre=?, descripcion=?, undiad=?, costo=?, marca=? WHERE id_producto=" + producto.getId();
            PreparedStatement pstm = con.prepareStatement(sql);
            pstm.setString(1, producto.getNameProduct());
            pstm.setString(2, producto.getDescrip());
            pstm.setInt(3, producto.getUnid());
            pstm.setFloat(4, producto.getCost());
            pstm.setString(5, producto.getMarc());
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

    public List<Producto> consultarTodosProductos() {
        List<Producto> listaDeProductos = new ArrayList<>();

        try (
                Connection con = ConexionMYSQL.getConnection();
                Statement stm = con.createStatement();
                ResultSet rs = stm.executeQuery("SELECT * FROM producto WHERE id_producto");) {
            while (rs.next()) {
                Producto producto = new Producto();
                producto.setId(rs.getInt("id_producto"));
                producto.setNameProduct(rs.getString("nombre"));
                producto.setDescrip(rs.getString("descripcion"));
                producto.setUnid(rs.getInt("unidad"));
                producto.setCost(rs.getFloat("costo"));
                producto.setMarc(rs.getString("marca"));
                producto.setClienteId(rs.getInt("cliente_id_cliente"));

                listaDeProductos.add(producto);
            }
        } catch (Exception e) {
            logger.error(e.getMessage());
        }
        return listaDeProductos;

    }

    public List<Producto> consultarProductosPorCliente (int idCliente) {
        List<Producto> listaDeProductos = new ArrayList<>();

        try (
                Connection con = ConexionMYSQL.getConnection();
                Statement stm = con.createStatement();
                ResultSet rs = stm.executeQuery("SELECT * FROM producto WHERE cliente_id_cliente" + idCliente);) {
            while (rs.next()) {
                Producto producto = new Producto();
                producto.setId(rs.getInt("id_producto"));
                producto.setNameProduct(rs.getString("nombre"));
                producto.setDescrip(rs.getString("descripcion"));
                producto.setUnid(rs.getInt("unidad"));
                producto.setCost(rs.getFloat("costo"));
                producto.setMarc(rs.getString("marca"));
                producto.setClienteId(rs.getInt("cliente_id_cliente"));

                listaDeProductos.add(producto);
            }
        } catch (Exception e) {
            logger.error(e.getMessage());
        }
        return listaDeProductos;

    }

    //Metodo para eliminar productos
    public boolean eliminarProducto(int id) {
        boolean status = false;
        try {
            Connection con = ConexionMYSQL.getConnection();
            String sql = "DELETE FROM producto WHERE id_producto=" + id;
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
