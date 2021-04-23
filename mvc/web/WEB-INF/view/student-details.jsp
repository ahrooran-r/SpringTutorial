<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Inside student-details.jsp from StudentController</title>
</head>

<body>

First name: <b>${student.firstName}</b>
<br>
Last name: <b>${student.lastName}</b>
<br>
Country: <b>${student.country}</b>
<br>
Language: <b>${student.language}</b>
<br>

Operating Systems:
<ul>
    <c:forEach var="temp" items="${student.os}">
        <li>${temp}</li>
    </c:forEach>
</ul>

<br>
<i>${message}</i>

</body>
</html>
