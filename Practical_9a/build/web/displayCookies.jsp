<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>Display All Cookies</title>
    <style>
        table {
            border-collapse: collapse;
            width: 50%;
            margin-top: 20px;
        }
        th, td {
            border: 1px solid #dddddd;
            text-align: left;
            padding: 8px;
        }
        th {
            background-color: #f2f2f2;
        }
    </style>
</head>
<body>

    <h2>Stored Client Cookies</h2>

    <%
        // Retrieve all cookies sent by the browser
        Cookie[] cookies = request.getCookies();

        if (cookies != null && cookies.length > 0) {
    %>
            <table>
                <tr>
                    <th>Cookie Name</th>
                    <th>Cookie Value</th>
                </tr>
                <%
                    // Iterate through the array of cookies
                    for (Cookie cookie : cookies) {
                %>
                        <tr>
                            <td><%= cookie.getName() %></td>
                            <td><%= cookie.getValue() %></td>
                        </tr>
                <%
                    }
                %>
            </table>
    <%
        } else {
    %>
            <p>No cookies were found stored on your browser for this domain.</p>
    <%
        }
    %>

</body>
</html>