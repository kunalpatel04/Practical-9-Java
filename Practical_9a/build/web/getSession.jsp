<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>Get Username Session</title>
</head>
<body>

    <h2>Stored Session Value</h2>

    <%
        // Retrieve the object stored in session and cast to String
        String userName = (String) session.getAttribute("userName");

        if (userName != null) {
    %>
            <p>Hello, <strong><%= userName %></strong>! Your session is active.</p>
    <%
        } else {
    %>
            <p style="color: red;">No session variable found.</p>
            <p><a href="setSession.jsp">Go back and enter your name</a></p>
    <%
        }
    %>

</body>
</html>