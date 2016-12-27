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

                out.print(firstname + " " + lastname);
            %>
        </h2>
    </body>
</html>
