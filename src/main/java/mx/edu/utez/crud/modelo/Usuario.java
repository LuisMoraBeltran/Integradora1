package mx.edu.utez.crud.modelo;

public class Usuario {
    private int id;
    private String user;
    private String pass;

    public int getId() {
        return id;
    }

    public String getUser() {
        return user;
    }

    public String getPass() {
        return pass;
    }

    public void setId(int id) {
        this.id = id;
    }

    public void setUser(String user) {
        this.user = user;
    }

    public void setPass(String pass) {
        this.pass = pass;
    }

    public Usuario() {
    }

    public Usuario(int id, String user, String pass) {
        this.id = id;
        this.user = user;
        this.pass = pass;
    }

    public Usuario(String user, String pass) {
        this.user = user;
        this.pass = pass;
    }
}
