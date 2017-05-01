/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Model;

import Conection.OracleConection;

/**
 *
 * @author usuaria
 */
public class AgregarUsuario {
    private String nombre;
    private String apellido;
    private String usuario;
    private String correo;
    private String password;
    private boolean estado;
    
    public AgregarUsuario(String nombre,String apellido,String usuario ,String correo,String password,boolean estado){
        this.nombre = nombre;
        this.apellido = apellido;
        this.usuario = usuario;
        this.correo = correo;
        this.password = password;
        this.estado = estado;
    }
    
    public boolean crearUsuario(){
        OracleConection conection = new OracleConection();
        VerificarUsuario verificarUsuario = new VerificarUsuario(usuario,password);
        if(verificarUsuario.consultarUsuario()){
            return false;
        }else{
            Parametro[] parametros = new Parametro[6];
            parametros[0] = new Parametro("nombre", nombre);
            parametros[1] = new Parametro("apellido", apellido);
            parametros[2] = new Parametro("usuario", usuario);
            parametros[3] = new Parametro("correo", correo);
            parametros[4] = new Parametro("password", password);
            parametros[5] = new Parametro("estado", new Boolean(estado).toString());
            conection.agregarUsuario(parametros, usuario);
            return true;
        }        
    }
}
