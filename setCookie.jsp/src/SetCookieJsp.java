<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>Read Cookie</title>
</head>
<body>
    <h2>Retrieved Cookie Value</h2>
    <%
        String storedUserName = null;
        
        // Retrieve all cookies from browser request
        Cookie[] cookies = request.getCookies();

        if (cookies != null) {
            for (Cookie c : cookies) {
                if ("user_name".equals(c.getName())) {
                    storedUserName = c.getValue();
                    break;
                }
            }
        }

        if (storedUserName != null) {
    %>
        <p>Hello, <strong><%= storedUserName %></strong>! Welcome back.</p>
    <%
        } else {
    %>
        <p>No cookie found!</p>
        <a href="index.html">Go back to form</a>
    <%
        }
    %>
</body>
</html>