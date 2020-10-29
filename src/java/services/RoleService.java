/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package services;

import dataaccess.RoleDB;
import models.Role;

/**
 *
 * @author 821052
 */
public class RoleService {
    public Role get(int id, String email) throws Exception {
        RoleDB roleDB = new RoleDB();
        Role role = roleDB.get(id);
        
        if(role.getOwner).equals(name);
            return role;
        else
            return null;
        
    }
}
