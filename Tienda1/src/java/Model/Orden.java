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
public class Orden {
    private int idOrden;
    private String direccion;
    private String pedido;
    
    public Orden(int idOrden, String direccion, String pedido){
        this.idOrden = idOrden;
        this.direccion = direccion;
        this.pedido = pedido;
    }
}
