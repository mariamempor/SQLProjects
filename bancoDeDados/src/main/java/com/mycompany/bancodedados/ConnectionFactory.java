
package com.mycompany.bancodedados;
import java.sql.Connection;
import java.sql.DriverManager;


public class ConnectionFactory {
private String usuario = "root";
private String senha = "usjt";
private String host = "localhost";
private String porta = "3306";
private String bd = "psc";

public Connection obtemConexao(){
    try{
        Connection conectar = DriverManager.getConnection(
        "jdbc:mysql://" + host + ";"+ porta+ "/"+bd,
        usuario,
        senha
        );
        return conectar;
    } catch(Exception e){
        e.printStackTrace();
        return null;
    }
}
    }

