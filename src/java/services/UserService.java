/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package services;

import dataaccess.UserDB;
import java.util.List;
import models.User;

/**
 *
 * @author 821052
 */
public class UserService {
    public User get(int id) throws Exception {
        UserDB userDB = new UserDB();
        User user = userDB.get(id);
        return null;
    }
    
    public List<User> getAll(String email) throws Exception {
        UserDB userDB = new UserDB();
        List<User> users = userDB.getAll(email);
        return users;
    }
    
    public void insert(String email, int active, String firstName, String lastName, String password, int role) throws Exception {
        User user = new User(email, active, firstName, lastName, password, role);
        UserDB noteDB = new UserDB();
        noteDB.insert(user);
    }
    
    public void update(int noteId, String title, String contents, String owner) throws Exception {
        User user = new Note(noteId, title, contents, owner);
        UserDB userDB = new UserDB();
        userDB.update(user);
    }
    
    public void delete(int userId) throws Exception {
        User user = new User();
        user.setUserId(userId);
        UserDB noteDB = new UserDB();
        noteDB.delete(user);
    }
}
}
    

