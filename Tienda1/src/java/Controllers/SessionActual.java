package Controllers;


public class SessionActual {
    public String user = "";
    public String pass = "";
    
    public SessionActual(String user, String pass){
        this.user = user;
        this.pass = pass;
    }
    
    public String verificarUsuario(){
        // se manda a vrificar a la base de datos
        boolean control = true;
        if (control) {
            return "true";
        }
        else{
            return "false";
        }
    }
}