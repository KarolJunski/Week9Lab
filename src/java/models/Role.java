/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package models;

import java.io.Serializable;

/**
 *
 * @author 831719
 */
public class Role implements Serializable {
    private int id;
    private String name;

    public Role(int id, String name) {
        this.id = id;
        this.name = name;
    }
    
    public Role(){
        
    }

    public int getId() {
        return id;
    }

    public String getName() {
        return name;
    }
    
    
    
}
