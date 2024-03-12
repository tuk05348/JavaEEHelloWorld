<%@ page import="java.sql.*" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<%
    String username = request.getParameter("username");
    String password = request.getParameter("password");
    String rUsername = "";
    String rPassword = "";
    boolean isAdmin = false;
    try {
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
        } catch (ClassNotFoundException e) {
            throw new RuntimeException(e);
        }
        String connectionURL = "jdbc:mysql://localhost:3306/emp_master";
        Connection connection;
        PreparedStatement statement;
        String queryString = "select username, password, is_admin from login where username=?";
        connection = DriverManager.getConnection(connectionURL, "root", "");

        statement = connection.prepareStatement(queryString);
        statement.setString(1, username);
        ResultSet rs = statement.executeQuery();

        while(rs.next()){
            rUsername = rs.getString("username");
            rPassword = rs.getString("password");
            isAdmin = rs.getBoolean("is_admin");
        }
        statement.close();
        connection.close();
    } catch (SQLException e) {
        throw new RuntimeException(e);
    }
%>
<head>
    <%
        String message;
        if(rUsername.isEmpty()){
            message = "Invalid Account";
        }
        else if(!isAdmin){
            message = "Access Denied: Not an Admin";
        }
        else if(password.equals(rPassword)){
            message = "Welcome " + username + "!";
        }
        else{
            message = "Incorrect Password";
        }
    %>
    <title><%= message %></title>
</head>
<body>
<h1><%= message %>
</h1>
</body>
</html>
