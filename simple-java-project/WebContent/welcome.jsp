<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Welcome</title>
    <!-- Add your CSS or styling here if needed -->
</head>
<%
Boolean loggedIn = (Boolean) session.getAttribute("loggedIn");
String username = (String) session.getAttribute("username");
%>
<body>
<%
if (loggedIn != null && loggedIn) {
%>
    <body class="logged-in">
<%
} else {
%>
    <body>
<%
}
%>
    <div>
        <% if (loggedIn != null && loggedIn) { %>
            <p>Welcome, <%= username %>!</p>
            <form action="LogoutServlet" method="post">
                <button type="submit">Logout</button>
            </form>
        <% } %>
        <% if (loggedIn == null || !loggedIn) { %>
            <p>You are not logged in.</p>
            <!-- You can add login form here if needed -->
        <% } %>
    </div>
</body>
</html>
