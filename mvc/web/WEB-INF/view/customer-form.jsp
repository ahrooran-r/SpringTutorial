<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%--
  Created by IntelliJ IDEA.
  User: Ahroo
  Date: 09/10/2020
  Time: 9:55 am
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>

<head>
    <title>Inside customer-form.jsp from CustomerController</title>

    <style>
        .error {
            color: red
        }
    </style>
</head>

<body>

<form:form action="process-form" modelAttribute="customer">

    First name: <form:input path="firstName"/>
    <br>

    Last name(*): <form:input path="lastName"/>
    <form:errors path="lastName" cssClass="error"/>
    <br>

    Free passes(*): <form:input path="freePasses"/>
    <form:errors path="freePasses" cssClass="error"/>
    <br>

    Postal Code(*): <form:input path="postalCode"/>
    <form:errors path="postalCode" cssClass="error"/>

    Course Code(*): <form:input path="courseCode"/>
    <form:errors path="courseCode" cssClass="error"/>

    <br>
    <input type="submit">
</form:form>

</body>

</html>
