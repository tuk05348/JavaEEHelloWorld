<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>JSP - Hello World</title>
</head>
<body>
<br/>
<form action=login.jsp method=POST>
    <label for="username">Enter your username:</label>
    <input type = "text" name="username" id="username"/>
    <br>
    <label for="password">Enter your password:</label>
    <input type = "password" name="password" id="password"/>
    <input type = "submit" value = "Submit" />
</form>
</body>
</html>