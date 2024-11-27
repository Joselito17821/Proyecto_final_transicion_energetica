/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package misiondos;

import java.sql.*;
/**
 *
 * @author EQUIPO 9
 */

public class DBConexion {
    private static final String URL ="jdbc:mysql://localhost:3306/energymanagement";
    private static final String USER = "root";
    private static final String PASSWORD = "";
    
    //Metodo de acceso a la base de datos
    public static Connection connect(){
        Connection connection = null;
        try{
            connection = DriverManager.getConnection(URL, USER, PASSWORD);
            System.out.println("Conexion Exitosa");
        }catch(SQLException e){
            System.out.println("ERROR: Conexion " + e.getMessage());
        }
        
        return connection;
    }
}
