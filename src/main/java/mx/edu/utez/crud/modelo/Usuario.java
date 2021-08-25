package mx.edu.utez.crud.modelo;


public class Usuario {
    private int id;
    private String user;
    private String pass;
    private String email;
    private String name;
    private String lastname;

    public String getLastname() {
        return lastname;
    }

    public void setLastname(String lastname) {
        this.lastname = lastname;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }


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

    public Usuario(int id) {
        this.id = id;
    }

    public Usuario(String user, String pass) {
        this.user = user;
        this.pass = pass;
    }

    public Usuario(int id, String user, String pass) {
        this.id = id;
        this.user = user;
        this.pass = pass;
    }

    public Usuario(String user, String pass, String email, String name) {
        this.user = user;
        this.pass = pass;
        this.email = email;
        this.name = name;
    }

    public Usuario(String user, String pass,String name,String lastname,String email ) {
        this.user = user;
        this.pass = pass;
        this.name = name;
        this.lastname = lastname;
        this.email = email;
    }
}
