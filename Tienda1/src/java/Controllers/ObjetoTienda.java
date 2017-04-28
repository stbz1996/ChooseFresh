package Controllers;


public class ObjetoTienda {
    public String nombre;
    public int precio;
    public String unidad;
    public String categoria; 
    public String imagen;
    
    public ObjetoTienda(String nombre, int precio, String unidad, String categoria, String url){
        this.nombre = nombre;
        this.precio = precio;
        this.unidad = unidad;
        this.categoria = categoria;
        this.imagen = url;
    }    
}
