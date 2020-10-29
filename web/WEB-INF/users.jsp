<%-- 
    Document   : users
    Created on : Oct 29, 2020, 10:24:05 AM
    Author     : 821052
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
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
            </td>
                <c:forEach items="${users}">
                    <td>${user.email}</td>
                    <td>${user.fname}</td>
                    <td>${user.lname}</td>
                    <td>${user.role}</td>
                    <td><input type="radio" name="edit" value="edit">Edit? </input></td>
                    <td><input type="button" name="delete" value="delete"> Delete? </input></td>
                </c:forEach>
        </table>
    <td>
    <c:if test="${user ne null}">
        <form action="edit" method="post">
            <input type="text" name="fname" value="${user.fname}"><br>
            <input type="text" name="lname" value="${user.lname}"><br>
            <input type="text" name="password" value="${user.password}"><br>
            <select name="role" value="${user.role}">
                <option value="role">System admin</option>
                <option value="role">Regular user</option>
                <option value="role">Company admin</option>
            </select><br>
            <input type="hidden" name="action" value="add">
            <input type="submit" value="add">
        </form>
    </c:if>
</td>

</table>
</body>
</html>
