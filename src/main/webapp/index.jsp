<%@ page contentType="text/html; charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Sample JSP</title>
</head>
<body>

<h2>User Information</h2>

<c:set var="username" value="${param.username}" />

<c:choose>
    <c:when test="${not empty username}">
        <p>Welcome, <c:out value="${username}" /></p>
    </c:when>
    <c:otherwise>
        <p>No username provided.</p>
    </c:otherwise>
</c:choose>

</body>
</html>
