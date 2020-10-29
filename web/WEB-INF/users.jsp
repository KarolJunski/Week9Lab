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
                    TEST
                </td>

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
