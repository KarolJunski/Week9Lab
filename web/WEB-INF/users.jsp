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
                <form action="user" method="post">
                    <input type="text" name="email" placeholder="Email" value="${email}"><br>
                    <input type="text" name="fname" placeholder="Firstname" value="${fname}"><br>
                    <input type="text" name="lname" placeholder="Lastname" value="${lname}"><br>
                    <input type="text" name="password" placeholder="Password" value="${password}"><br>
                    <select name="role">
                        <option value="1">System admin</option>
                        <option value="2">Regular user</option>
                        <option value="3">Company admin</option>
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
                        <th>Active</th>
                        <th>Edit</th>
                        <th>Delete</th>
                    </tr>
                    <c:forEach items="${users}" var="user">
                        <tr>
                            <td>${user.email}</td>
                            <td>${user.fname}</td>
                            <td>${user.lname}</td>
                            <c:if test = "${user.role eq 1}">
                                <td>System Admin</td>
                            </c:if>
                            <c:if test = "${user.role eq 2}">
                                <td>Regular User</td>
                            </c:if>
                            <c:if test = "${user.role eq 3}">
                                <td>Company Admin</td>
                            </c:if>
                            <c:if test="${user.active eq 1}">
                                <td>
                                    <input type="checkbox" disabled checked>
                                </td>
                            </c:if>
                            <c:if test="${user.active != 1}">
                                <td>
                                    <input type="checkbox" disabled>
                                </td>
                            </c:if>
                            <td><a href="user?action=view&amp;email=${user.email}">Edit</a><br></td>
                            <td>
                                <a href="user?action=delete&amp;email=${user.email}">Delete</a><br></td>
                        </tr>
                    </c:forEach>
                </table>
            </td>
            <td>
                <c:if test="${editUser != null}">
                    <input type="text" name="fname" value="${editUser.fname}"><br>
                    <input type="text" name="lname" value="${editUser.lname}"><br>
                    <input type="text" name="password" value="${editUser.password}"><br>
                    <select>
                        <option>System Admin</option>
                        <option>Regular User</option>
                        <option>Company Admin</option>
                    </select>
                    <br>
                    <input type="hidden" name="action" value="save">
                    <input type="submit" value="save">
                    <br>
                    <input type="hidden" name="action" value="cancel">
                    <input type="submit" value="cancel">
                </td>
            </table>
        </c:if>
    </body>
</html>
