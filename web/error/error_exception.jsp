<%-- 
    Document   : error-exception
    Created on : May 24, 2022, 1:13:24 PM
    Author     : USER
--%>
<%@page isErrorPage="true" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Sorry an exception occured!</h1>
        <p>Exception is: </p>
        <%=exception%>
    </body>
</html>
