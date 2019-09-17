<%--
  Created by IntelliJ IDEA.
  User: fhagn
  Date: 9/15/2019
  Time: 12:50 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<html>
<head>
    <title>TODO List</title>
</head>
<body>
<div align="center">
    <table border="1" cellpadding="5">
        <caption><h2>Todo Items</h2></caption>
        <tr>
            <th>Title</th>
            <th>Deadline</th>
            <th>Details</th>
        </tr>
        <c:forEach var="item" items="${todoData.items}">
            <tr>
                <td><c:out value="${item.title}"/></td>
                <td><c:out value="${item.deadline}"/></td>
                <td><c:out value="${item.details}"/></td>
            </tr>
        </c:forEach>
    </table>
</div>
</body>
</html>
