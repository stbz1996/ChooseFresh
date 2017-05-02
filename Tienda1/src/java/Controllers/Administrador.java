
package Controllers;

import Model.VerificarAdministrador;

public class Administrador {
    public String user;
    public String cont;
    
    public Administrador(String user, String cont){
        this.user = user;
        this.cont = cont;
    }
    
    public static boolean VerificarAdmin(String nombre, String apellido, String username,String mail,String pass1){
        // aqui verifico el admin
        VerificarAdministrador admin = new VerificarAdministrador(username,pass1);
        return admin.crearAdmin(nombre,  apellido,  username, mail, pass1);
    }
}
