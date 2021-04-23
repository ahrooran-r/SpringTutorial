<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>HelloWorld</title>
</head>
<body>

<h2>Inside helloworld.jsp from HelloWorldContainer</h2>

<%-- can directly talk to Model --%>
Student name is: <b>${param.studentName}</b>
Message is: <b>${message}</b>

</body>
</html>
