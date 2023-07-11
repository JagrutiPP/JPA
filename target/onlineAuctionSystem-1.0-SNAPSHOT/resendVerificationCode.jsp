<%--
  Created by IntelliJ IDEA.
  User: pjagruti
  Date: 29-06-2023
  Time: 09:29
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <title>Resend Verification Code</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f2f2f2;
        }
        .toggle-form {
            text-align: center;
            margin-top: 10px;
        }

        .toggle-form a {
            color: #666666;
            text-decoration: none;
        }

        .container {
            max-width: 400px;
            margin: 0 auto;
            padding: 20px;
            background-color: #ffffff;
            border: 1px solid #dddddd;
            border-radius: 4px;
            box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
        }

        h1 {
            color: #333333;
            margin-top: 0;
            align-items: center;
        }

        .form-group {
            margin-bottom: 20px;
        }

        label {
            display: block;
            font-weight: bold;
            margin-bottom: 5px;
        }
        input[type="submit"] {
            width: 100%;
            padding: 10px;
            background-color: #4CAF50;
            color: #ffffff;
            border: none;
            border-radius: 3px;
            cursor: pointer;
        }

        input[type="submit"]:hover {
            background-color: #45a049;
        }

        input[type="text"] {
            width: 95%;
            padding: 10px;
            border: 1px solid #dddddd;
            border-radius: 4px;
        }

        .error-message {
            color: #cc0000;
            font-size: 14px;
            margin-top: 10px;
        }

        button {
            padding: 10px 20px;
            background-color: #4CAF50;
            color: #ffffff;
            border: none;
            border-radius: 4px;
            cursor: pointer;
        }

        button:hover {
            background-color: #45a049;
        }
    </style>
    <%--    <script>--%>
    <%--    const URL url = new URL(window.location.href);--%>
    <%--    var userId = url.searchParams.get("userId");--%>
    <%--    --%>
    <%--    </script>--%>
</head>
<body>
<div class="container">
    <h1>Verify Account</h1>

    <% String errorMessage = (String) request.getAttribute("errorMessage"); %>
    <% if (errorMessage != null && !errorMessage.isEmpty()) { %>
    <p class="error-message"><%= errorMessage %></p>
    <% } %>

    <form action="resendEmail" method="post">
        <div class="form-group">
            <label for="code">Email:</label>
            <input type="text" id="code" name="code">
        </div>
        <%--        <input type="hidden" name="userId" value="<%=((User)request.getAttribute("user")).getUserId()%>">--%>
        <input type="hidden" name="userId" value="<%=request.getAttribute("userId")%>">
        <input type="hidden" name="prevURL">
        <input type="submit" value="Send Email">
    </form>
</div>
</body>
</html>

