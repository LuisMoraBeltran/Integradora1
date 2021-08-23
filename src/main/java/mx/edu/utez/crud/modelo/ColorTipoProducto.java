package mx.edu.utez.crud.modelo;

public class ColorTipoProducto
{
    private int idColor;
    private String nameColor;
    private int idTipoProducto;
    private String nameTipoProducto;

    public ColorTipoProducto() {

    }

    public ColorTipoProducto(int idColor, String nameColor, int idTipoProducto, String nameTipoProducto) {
        this.idColor = idColor;
        this.nameColor = nameColor;
        this.idTipoProducto = idTipoProducto;
        this.nameTipoProducto = nameTipoProducto;
    }


    public int getIdColor() {return idColor;}

    public void setIdColor(int idColor) {
        this.idColor = idColor;
    }

    public String getNameColor() {return nameColor; }

    public void setNameColor(String nameColor) {this.nameColor = nameColor; }

    public int getIdTipoProducto() {return idTipoProducto; }

    public void setIdTipoProducto(int idTipoProducto) {this.idTipoProducto = idTipoProducto; }

    public String getNameTipoProducto() {return nameTipoProducto; }

    public void setNameTipoProducto(String nameTipoProducto) {
        this.nameTipoProducto = nameTipoProducto;
    }



}
