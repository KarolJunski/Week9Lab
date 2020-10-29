<%-- 
    Document   : users
    Created on : Oct 29, 2020, 10:24:05 AM
    Author     : 821052
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Users Management System</title>   
    </head>
    <body>
        <table border="1">
            <tr>
                <th>Add User</th>
                <th>Manage Users</th>
                <th>Edit User</th>
            </tr>
            <td>
                <form action="add" method="post">
                    <input type="text" name="email" placeholder="Email"><br>
                    <input type="text" name="fname" placeholder="Firstname"><br>
                    <input type="text" name="lname" placeholder="Lastname"><br>
                    <input type="text" name="password" placeholder="Password"><br>
                    <select name="role">
                        <option value="role">System admin</option>
                        <option value="role">Regular user</option>
                        <option value="role">Company admin</option>
                    </select><br>
                    <input type="hidden" name="action" value="add">
                    <input type="submit" value="add">
                </form>
            </td>

            <td>
                <table border="1">
                    <tr>
                        <th>Email</th>
                        <th>First Name</th>
                        <th>Last Name</th>
                        <th>Role</th>
                        <th>Edit</th>
                        <th>Delete</th>
                    </tr>
                <c:forEach items="${users}" var="user">
                    <tr>
                    <td>${user.email}</td>
                    <td>${user.fname}</td>
                    <td>${user.lname}</td>
                    <td>${user.role}</td>
                    <td><a href="user?action=view&amp;email=${user.email}">Edit</a><br></td>
                    <td><input type="button" name="delete" value="delete"></td>
                    </tr>
                </c:forEach>
        </table>
            </td>
    <td>
            <input type="text" name="fname" value="${editUser.fname}"><br>
            <input type="text" name="lname" value="${editUser.lname}"><br>
            <input type="text" name="password" value="${editUser.password}"><br>
            <select name="role" value="${editUser.role}">
                <option value="role">System admin</option>
                <option value="role">Regular user</option>
                <option value="role">Company admin</option>
            </select><br>
            <input type="hidden" name="action" value="save">
            <input type="submit" value="save">
            <br>
            <input type="hidden" name="action" value="cancel">
            <input type="submit" value="cancel">
</td>
</table>
</body>
</html>
