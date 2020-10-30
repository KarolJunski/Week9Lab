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
        <link type="text/css" rel="stylesheet" href="css/stylesheet.css">
        <script src="https://kit.fontawesome.com/00eba03704.js" crossorigin="anonymous"></script>
    </head>
    <body>
        <table class="table_border, center">
            <tr class="table_header">
                <th class="table_padding">Add User</th>
                <th class="table_padding">Manage Users</th>
                <th class="table_padding">Edit User</th>
            </tr>
            <td>
                <form action="user" method="post">
                    <input type="text" name="email" placeholder="Email" value="${email}"><br>
                    <input type="text" name="fname" placeholder="Firstname" value="${fname}"><br>
                    <input type="text" name="lname" placeholder="Lastname" value="${lname}"><br>
                    <input type="text" name="password" placeholder="Password" value="${password}"><br>
                    <select name="role">
                        <option value="1">System Admin</option>
                        <option value="2">Regular User</option>
                        <option value="3">Company Admin</option>
                    </select><br>
                    <input type="hidden" name="action" value="add">
                    <input class="add" type="submit" value="Add">
                </form>
            </td>

            <td>
                <table>
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
                            <td><a href="user?action=view&amp;email=${user.email}"><i class="fas fa-user-edit"></i></a><br></td>
                            <td>
                                <a href="user?action=delete&amp;email=${user.email}"><i class="fas fa-user-times"></i></a><br></td>
                        </tr>
                    </c:forEach>
                </table>
            </td>
            <td>
                <form action="user" method="post">
                    <c:if test="${editUser != null}">
                        <input type="hidden" name="editEmail" value="${editUser.email}"><br>
                        <input type="text" name="editFname" value="${editUser.fname}"><br>
                        <input type="text" name="editLname" value="${editUser.lname}"><br>
                        <input type="text" name="editPassword" value="${editUser.password}"><br>
                        <select name="editRole">
                            <option value="1">System Admin</option>
                            <option value="2">Regular User</option>
                            <option value="3">Company Admin</option>
                        </select>
                        <br>
                        <input type="hidden" name="action" value="save">
                        <input class="save" type="submit" value="Save">
                        <br>
                        <a href="user"><input class="cancel" type="button" value="Cancel" href="user"></a>
                    </c:if>
                </form>
            </td>
        </table>
    </body>
</html>
