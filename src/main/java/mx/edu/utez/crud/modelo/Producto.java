package mx.edu.utez.crud.modelo;

public class Producto {
    private int id;
    private String nameProduct;
    private String descrip;
    private int unid;
    private float cost;
    private String marc;
    private int clienteId;



    public int getClienteId() {
        return clienteId;
    }

    public void setClienteId(int clienteId) {
        this.clienteId = clienteId;
    }

    public Producto(){

    }
    public Producto(String nameProduct, Integer id) {
        this.nameProduct = nameProduct;
        this.id = id;

    }

    public Producto(int id, String nameProduct, String descrip, int unid, float cost, String marc) {
        this.id = id;
        this.nameProduct = nameProduct;
        this.descrip = descrip;
        this.unid = unid;
        this.cost = cost;
        this.marc = marc;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getNameProduct() {
        return nameProduct;
    }

    public void setNameProduct(String nameProduct) {
        this.nameProduct = nameProduct;
    }

    public String getDescrip() {
        return descrip;
    }

    public void setDescrip(String descrip) {
        this.descrip = descrip;
    }

    public int getUnid() {
        return unid;
    }

    public void setUnid(int unid) {
        this.unid = unid;
    }

    public float getCost() {
        return cost;
    }

    public void setCost(float cost) {
        this.cost = cost;
    }

    public String getMarc() {
        return marc;
    }

    public void setMarc(String marc) {
        this.marc = marc;
    }



}
