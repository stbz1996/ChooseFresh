package Controllers;

import Model.AgregarUsuario;

public class Usuario {
    public String nombre = "";
    public String apellido = "";
    public String username = "";
    public String email = "";
    public String contrasena = "";
    
    public Usuario(String nombre, String apellido, String username, String email, String contrasena){
        this.nombre = nombre;
        this.apellido = apellido;
        this.username = username;
        this.email = email;
        this.contrasena = contrasena;
    }
    
    public Boolean crearUsuario(){
        // manda a verificar a la base 
        
        AgregarUsuario agregarUsuario = new AgregarUsuario(nombre,apellido,username,email,contrasena,true);
        return agregarUsuario.crearUsuario();
    }
}
