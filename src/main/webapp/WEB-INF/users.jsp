<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Users</title>

        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>

    </head>
    <body>
      <div class="container">
        <div class="row">
          <table>
           <tr>
             <th>
                <div class="col1">
                    <h1>Add User</h1>
                        <form action="AddUser" method="post">
                            <input type="text" name="email" id="email" placeholder="Email" required><br>
                            <input type="text" name="firstName" id="firstName" placeholder="First Name" required><br>
                            <input type="text" name="lastName" id="lastName" placeholder="Last Name" required><br>
                            <input type="text" name="password" id="password" placeholder="Password" required><br>
                            <select class="roleName" style="width:170px;">
                                <option value="3">company admin</option>
                                <option value="2">regular user</option>
                                <option value="1">system admin</option>
                            </select><br>
                            <input type="hidden" name="action" value="add">
                            <button type="submit">Save</button>
                        </form>
                </div>
             </th>
             <th>
                <div class="col2">
                    <h1>Jin-young's User Management System</h1>

                    <table class="table">
                        <thead>
                            <tr>
                                <th>E-mail</th>
                                <th>First name</th>
                                <th>Last name</th>
                                <th>Active</th>
                                <th>Actions</th>
                            </tr>
                        </thead>
                        <tbody>
                            <c:forEach var="user" items="${users}">
                                <tr>
                                    <td>${user.email}</td>
                                    <td>${user.firstName}</td>
                                    <td>${user.lastName}</td>
                                    <td>${user.active ? "Y" : "N"}</td>
                                    <td>
                                        <a href="">Edit</a>
                                        <a href="<c:url value="user">
                                            <c:param name="action" value="delete" />
                                            <c:param name="email" value="${user.email}" />
                                        </c:url>">Delete</a>
                                    </td>
                                </tr>
                            </c:forEach>
                        </tbody>
                    </table>
                </div>
             </th>
             <th>
                <div class="col3">
                    <h1>Edit User</h1>
                        <form action="EditUser" method="post">
                            <input type="text" name="email" id="email"><br>
                            <input type="text" name="firstName" id="firstName"><br>
                            <input type="text" name="lastName" id="lastName"><br>
                            <input type="text" name="password" id="password"><br>
                            <select class="roleName" style="width:170px;">
                                <option value="company admin">company admin</option>
                                <option value="regular user">regular user</option>
                                <option value="system admin">system admin</option>
                            </select><br>
                            <button type="submit" name="action" value="edit">Save</button>
                            <button type="submit">Cancel</button>
                        </form>
                    
                </div>
             </th>
           </tr>
          </table>
            </div>
        </div>

    </body>
</html>
