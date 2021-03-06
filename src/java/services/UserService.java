/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package services;

import dataaccess.RoleDB;
import dataaccess.UserDB;
import java.util.List;
import models.Role;
import models.User;

/**
 *
 * @author 821052
 */
public class UserService {
    public User get(String email) throws Exception {
        UserDB userDB = new UserDB();
        User user = userDB.get(email);
        return user;
    }
    
    public List<User> getAll() throws Exception {
        UserDB userDB = new UserDB();
        List<User> users = userDB.getAll();
        return users;
    }
    
    public void insert(String email, int active, String firstName, String lastName, String password, int role) throws Exception {
        User user = new User(email, true, firstName, lastName, password);
        RoleDB roleDB = new RoleDB();
        Role roles = roleDB.get(role);
        user.setRole(roles);
        
        UserDB noteDB = new UserDB();
        noteDB.insert(user);
    }
    
    public void update(String email, int active, String firstName, String lastName, String password, int role) throws Exception {
        UserDB userDB = new UserDB();
        User user = userDB.get(email);
        user.setActive(true);
        user.setFirstName(firstName);
        user.setLastName(lastName);
        user.setPassword(password);
        
        RoleDB roleDB = new RoleDB();
        Role roles = roleDB.get(role);
        user.setRole(roles);
        
        userDB.update(user);
    }
    
    public void delete(String email) throws Exception {
        User user = new User();
        user.setEmail(email);
        UserDB noteDB = new UserDB();
        noteDB.delete(user);
    }

 
}

    

