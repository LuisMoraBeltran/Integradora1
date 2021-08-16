package mx.edu.utez.crud.modelo;

public class TallaTipoProducto {
    private int idTalla;
    private String nameTalla;
    private int idTipoProducto;
    private String nameTipoProducto;

    public TallaTipoProducto() {
    }

    public TallaTipoProducto(int idTalla, String nameTalla, int idTipoProducto, String nameTipoProducto) {
        this.idTalla = idTalla;
        this.nameTalla = nameTalla;
        this.idTipoProducto = idTipoProducto;
        this.nameTipoProducto = nameTipoProducto;
    }

    public int getIdTalla() {
        return idTalla;
    }

    public void setIdTalla(int idTalla) {
        this.idTalla = idTalla;
    }

    public String getNameTalla() {
        return nameTalla;
    }

    public void setNameTalla(String nameTalla) {
        this.nameTalla = nameTalla;
    }

    public int getIdTipoProducto() {
        return idTipoProducto;
    }

    public void setIdTipoProducto(int idTipoProducto) {
        this.idTipoProducto = idTipoProducto;
    }

    public String getNameTipoProducto() {
        return nameTipoProducto;
    }

    public void setNameTipoProducto(String nameTipoProducto) {
        this.nameTipoProducto = nameTipoProducto;
    }
}
