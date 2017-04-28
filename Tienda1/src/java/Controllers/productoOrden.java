
package Controllers;

public class productoOrden {
    public String nombre ;
    public int precio ;
    public int cantidad ;
    public String unidad;

    public productoOrden(String nombre, String precio, String cantidad, String unidad) {
        this.nombre = nombre;
        this.precio = Integer.parseInt(precio);
        this.cantidad = Integer.parseInt(cantidad);
        this.unidad = unidad;
    }
}
