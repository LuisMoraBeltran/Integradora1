package mx.edu.utez.crud.modelo;

public class TipoProducto {
    private int id;
    private String name;

    public TipoProducto() {
    }

    public TipoProducto(int id) {
        this.id = id;
    }

    public TipoProducto(String name) {
        this.name = name;
    }

    public TipoProducto(int id, String name) {
        this.id = id;
        this.name = name;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String color) {
        this.name = color;
    }
    
}
