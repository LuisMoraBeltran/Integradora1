package mx.edu.utez.crud.modelo;

public class Cliente {

    private int id;
    private String name;
    private String pater;
    private String mater;
    private String correo;
    private String telefono;
    private String direccion;
    private String pass;

    public Cliente() {
    }

    public Cliente(int id, String correo, String telefono, String direccion, String pass) {
        this.id = id;
        this.correo = correo;
        this.telefono = telefono;
        this.direccion = direccion;
        this.pass = pass;
    }

    public Cliente(String name, String pater, String mater, String correo, String telefono, String direccion, String pass) {
        this.name = name;
        this.pater = pater;
        this.mater = mater;
        this.correo = correo;
        this.telefono = telefono;
        this.direccion = direccion;
        this.pass = pass;
    }

    public Cliente(int id) {
        this.id = id;
    }

    public String getPass() {
        return pass;
    }

    public void setPass(String pass) {
        this.pass = pass;
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

    public void setName(String name) {
        this.name = name;
    }

    public String getPater() {
        return pater;
    }

    public void setPater(String pater) {
        this.pater = pater;
    }

    public String getMater() {
        return mater;
    }

    public void setMater(String mater) {
        this.mater = mater;
    }

    public String getCorreo() {
        return correo;
    }

    public void setCorreo(String correo) {
        this.correo = correo;
    }

    public String getTelefono() {
        return telefono;
    }

    public void setTelefono(String telefono) {
        this.telefono = telefono;
    }

    public String getDireccion() {
        return direccion;
    }

    public void setDireccion(String direccion) {
        this.direccion = direccion;
    }
}
