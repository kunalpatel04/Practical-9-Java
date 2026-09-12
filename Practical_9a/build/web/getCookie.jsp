<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>Get Username Cookie</title>
</head>
<body>

    <h2>Stored Cookie Value</h2>

    <%
        String userName = null;
        
        // Retrieve all cookies sent by the client
        Cookie[] cookies = request.getCookies();

        if (cookies != null) {
            for (Cookie c : cookies) {
                if ("username".equals(c.getName())) {
                    userName = c.getValue();
                    break;
                }
            }
        }

        if (userName != null) {
    %>
            <p>Welcome back, <strong><%= userName %></strong>!</p>
    <%
        } else {
    %>
            <p style="color: red;">No username cookie found.</p>
            <p><a href="setCookie.jsp">Go back and enter your name</a></p>
    <%
        }
    %>

</body>
</html>