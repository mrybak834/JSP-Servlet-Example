<%--
  Created by IntelliJ IDEA.
  User: marekrybakiewicz
  Date: 12/27/16
  Time: 3:50 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Output</title>
</head>
<body>
<h1>Your credentials: </h1>

<h2>
    <!-- Anything inside <%%> is a scriptlet. It contains java or JSP code-->
    <%
        //Gets the attributes we want from the request of our servlet
        String firstname = (String) request.getAttribute("firstname");
        String lastname = (String) request.getAttribute("lastname");
    %>
    <!-- Output data as a table. %= sets the field equal to a variable -->
    <table bgcolor="#ff7f50" border="5">
        <tr>
            <td>First Name:</td>
            <td><%=firstname%>
            </td>
        </tr>
        <tr>
            <td>Last Name:</td>
            <td><%=lastname%>
            </td>
        </tr>
    </table>
</h2>
</body>
</html>
