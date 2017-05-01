/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Model;

/**
 *
 * @author usuaria
 */
public class Producto {
    private String nombre;
    private int precio;
    private String unidad;
    private String categoria;
    private String imagen;
    private int idProducto;
    private static int contador = 1;
    
    public Producto(){}
    
    public Producto(String nombre, int precio, String unidad, String categoria, String imagen){
        this.nombre = nombre;
        this.precio = precio;
        this.categoria = categoria;
        this.unidad = unidad;
        this.imagen = imagen;
        idProducto = contador;
        contador++;
    }
    
    public Producto(String nombre, int precio, String unidad, String categoria, String imagen, int idProducto){
        this.nombre = nombre;
        this.precio = precio;
        this.categoria = categoria;
        this.unidad = unidad;
        this.imagen = imagen;
        this.idProducto = idProducto;
    }
    
    public String getNombre(){return nombre;}
    public int getPrecio(){return precio;}
    public String getCategoria(){return categoria;}
    public String getUnidad(){return unidad;}
    public String getImagen(){return imagen;}
    public int getIdProducto(){return idProducto;}
    public int getContador(){return contador;}
    
    public void setNombre(String nombre){this.nombre = nombre;}
    public void setPrecio(int precio){this.precio = precio;}
    public void setCategoria(String categoria){this.categoria = categoria;}
    public void setUnidad(String unidad){this.unidad = unidad;}            
    public void setImagen(String imagen){this.imagen = imagen;}
    public void setIdProducto(int idProducto){this.idProducto = idProducto;}
}
