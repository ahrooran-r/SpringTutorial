<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>

<head>
    <title>Inside student-form.jsp from StudentController</title>
</head>

<body>

<form:form action="process-form" modelAttribute="student">

    <%--  input fields  --%>
    First name: <form:input path="firstName"/>
    <br>
    Last name: <form:input path="lastName"/>
    <br>

    <%--  drop down lists  --%>
    <form:select path="country">

        <%--    for single value    --%>
        <%--<form:option value="srilanka" label="SriLanka"/>--%>

        <%--    for multiple values    --%>
        <form:options items="${student.countryOptions}"/>
    </form:select>
    <br>

    <%--  radio buttons  --%>

    <%--    for single value    --%>
    <%--<form:radiobutton path="language"/>--%>

    <%--    for multiple values    --%>
    <form:radiobuttons path="language" items="${student.languageOptions}"/>
    <br>

    <%--  for checkbox  --%>
    <form:checkboxes path="os" items="${student.osOptions}"/>
    <br>

    <input type="submit">

</form:form>

</body>
</html>
