/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package services;

import dataaccess.RoleDB;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import models.Role;

/**
 *
 * @author 821052
 */
public class RoleService {
    
    public List<Role> getAll()
    {
        RoleDB roleDB = new RoleDB();
        List<Role> roles;
        try {
            roles = roleDB.getAll();
            return roles;
        } catch (Exception ex) {
            Logger.getLogger(RoleService.class.getName()).log(Level.SEVERE, null, ex);
        }
        return null;
    }
    public Role get(int index)
    {
        RoleDB roleDB = new RoleDB();
        try {
            Role role = roleDB.get(index);
            return role;
        } catch (Exception ex) {
            Logger.getLogger(RoleService.class.getName()).log(Level.SEVERE, null, ex);
        }
        return null;
    }
}
