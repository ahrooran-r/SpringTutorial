<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<html>

<head>
    <title>Add Customer</title>
</head>

<body>

<h1>Save Customer</h1>

<form:form action="save-customer" modelAttribute="customer" method="post">

    <%--  necesary to do update operation  --%>
    <form:hidden path="id"/>

    First Name: <form:input path="firstName"/>
    <br>
    Last Name: <form:input path="lastName"/>
    <br>
    email: <form:input path="email"/>

    <br>
    <input type="submit" value="Save"/>

    <br>
    <a href="customer/list">Go back to customer list</a>
</form:form>

</body>
</html>
