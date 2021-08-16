package mx.edu.utez.crud.modelo;

public class Color {
    private int id;
    private String name;
    private int idUsuario;

    public Color() {
    }

    public Color(int id) {
        this.id = id;
    }

    public Color(String name, int idUsuario) {
        this.name = name;
        this.idUsuario = idUsuario;
    }

    public Color(int id, String name, int idUsuario) {
        this.id = id;
        this.name = name;
        this.idUsuario = idUsuario;
    }

    public int getIdUsuario() {
        return idUsuario;
    }

    public void setIdUsuario(int idUsuario) {
        this.idUsuario = idUsuario;
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
