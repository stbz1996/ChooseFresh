
package Controllers;

public class Administrador {
    public String user;
    public String cont;
    
    public Administrador(String user, String cont){
        this.user = user;
        this.cont = cont;
    }
    
    public boolean VerificarAdmin(){
        // aqui verifico el admin
        return true;
    }
}
