            package Controllers;

import Model.VerificarAdministrador;
import Model.VerificarUsuario;


public class SessionActual {
    public String user;
    public String pass;
    
    public SessionActual(String user, String pass){
        this.user = user;
        this.pass = pass;
    }
    
    public boolean verificarUsuario(){
        VerificarUsuario verifica = new VerificarUsuario(user,pass);
        return verifica.consultarUsuario();
    }
    
    public boolean verificarAdministrador(){
        VerificarAdministrador verificarAdministrador = new VerificarAdministrador(user,pass);
        return verificarAdministrador.consultarAdministrador();
    }
}