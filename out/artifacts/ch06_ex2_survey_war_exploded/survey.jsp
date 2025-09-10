<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Survey Result</title>
    <link rel="stylesheet" href="styles/main.css">
</head>
<body>
<h1 style="color: green;">Thanks for taking our survey!</h1>

<p>Here is the information that you entered:</p>

<p><b>Email:</b> ${user.email}</p>
<p><b>First Name:</b> ${user.firstName}</p>
<p><b>Last Name:</b> ${user.lastName}</p>
<p><b>Heard From:</b> ${user.heardFrom}</p>
<p><b>Updates:</b> ${user.wantsUpdates}</p>

<c:if test="${user.wantsUpdates eq 'Yes'}">
    <p><b>Contact Via:</b> ${user.contactVia}</p>
</c:if>
</body>
</html>
