<%--
  Created by IntelliJ IDEA.
  User: Ahroo
  Date: 07/10/2020
  Time: 10:58 pm
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>helloworld-form.jsp</title>
</head>

<body>

<h2>Inside helloworld-form.jsp from HelloWorldContainer</h2>

<form action="process-form-v3" method="get">
    <%--  studentName is the name of parameter which this form sends to the server  --%>
    <input type="text" name="studentName" placeholder="What's your name?">
    <input type="submit">
</form>

</body>

</html>
