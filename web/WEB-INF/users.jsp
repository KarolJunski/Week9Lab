<%-- 
    Document   : users
    Created on : Oct 29, 2020, 10:24:05 AM
    Author     : 821052
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Users Management System</title>   
    </head>
    <body>
         <h3>Add User</h3>
    <form action="add" method="post">
        <input type="text" name="email" placeholder="Email"><br>
        <input type="text" name="fname" placeholder="Firstname"><br>
        <input type="text" name="lname" placeholder="Lastname"><br>
        <input type="text" name="password" placeholder="Password"><br>
        <select name="role">
            <option value="role">System admin</option>
            <option value="role">Regular user</option>
            <option value="role">Company admin</option>
        </select>
    </form>
    </body>
</html>
