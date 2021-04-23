<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<html>
<head>
    <title>Customer List</title>
</head>
<body>

<h1> Customer List here </h1>

<form:form action="search" method="post">
    Search customer: <input type="text" name="searchValue">
    <input type="submit" value="Search">
</form:form>

<input type="button"
       value="Add new customer"
       onclick="window.location.href='save-customer-form'; return false;">

<table>
    <tr>
        <th>First name</th>
        <th>Last name</th>
        <th>E-mail</th>
    </tr>
    <c:forEach var="customer" items="${customers}">

        <%--    construct an update link    --%>
        <c:url var="updateLink" value="/customer/update-customer-form">
            <c:param name="customer-id" value="${customer.id}"/>
        </c:url>

        <%--    construct an delete link    --%>
        <c:url var="deleteLink" value="/customer/delete">
            <c:param name="customer-id" value="${customer.id}"/>
        </c:url>

        <tr>
            <td>${customer.firstName}</td>
            <td>${customer.lastName}</td>
            <td>${customer.email}</td>
            <td><a href="${updateLink}"> Update </a></td>
            <td>
                <a href="${deleteLink}"
                   onclick="
                        if (!(confirm('Do you really want to delete?'))) return false
                "> Delete </a>
            </td>
        </tr>
    </c:forEach>
</table>


</body>
</html>
