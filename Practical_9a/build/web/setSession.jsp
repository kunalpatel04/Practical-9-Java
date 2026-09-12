<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>Set Username Session</title>
</head>
<body>

    <h2>Enter Your Name</h2>
    
    <%-- HTML Form to accept User Name --%>
    <form action="setSession.jsp" method="POST">
        <label for="username">User Name:</label>
        <input type="text" id="username" name="username" required>
        <input type="submit" value="Save to Session">
    </form>

    <%
        // Retrieve form data
        String name = request.getParameter("username");

        // Check if the form was submitted
        if (name != null && !name.trim().isEmpty()) {
            // Store the name in the implicit session object
            session.setAttribute("userName", name);
    %>
            <p style="color: green;">Session variable set successfully for <strong><%= name %></strong>!</p>
            <p><a href="getSession.jsp">Click here to view your session variable</a></p>
    <%
        }
    %>

</body>
</html>