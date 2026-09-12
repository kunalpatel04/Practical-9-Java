<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>Set Username Cookie</title>
</head>
<body>

    <h2>Enter Your Name</h2>
    
    <%-- HTML Form to accept User Name --%>
    <form action="setCookie.jsp" method="POST">
        <label for="username">User Name:</label>
        <input type="text" id="username" name="username" required>
        <input type="submit" value="Save Name">
    </form>

    <%
        // Retrieve the form data
        String name = request.getParameter("username");

        // Check if the form was submitted
        if (name != null && !name.trim().isEmpty()) {
            // Create a new Cookie
            Cookie userCookie = new Cookie("username", name);
            
            // Set cookie expiry time (e.g., 24 hours = 86400 seconds)
            userCookie.setMaxAge(60 * 60 * 24);
            
            // Add cookie to the response header
            response.addCookie(userCookie);
    %>
            <p style="color: green;">Cookie saved successfully for <strong><%= name %></strong>!</p>
            <p><a href="getCookie.jsp">Click here to view your stored cookie</a></p>
    <%
        }
    %>

</body>
</html>