<%--
  Created by IntelliJ IDEA.
  User: marekrybakiewicz
  Date: 12/27/16
  Time: 3:10 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head><title>Login</title></head>
<body>
<!-- Action: Sends data to named servlet, Method: Type of request -->
<form action="servlet" method="post">
    <table bgcolor="aqua" border="0">
        <tr>
            <td>First Name</td>
            <!-- These are the field names that are sent in the request to the servlet -->
            <td><input type="text" name="firstname"/></td>
        </tr>
        <tr>
            <td>Last Name</td>
            <td><input type="text" name="lastname"/></td>
        </tr>
        <tr>
            <td colspan="2"><input type="submit" value="Submit"/></td>
        </tr>
    </table>
</form>
</body>
</html>
