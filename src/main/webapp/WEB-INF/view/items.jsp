<%--
  Created by IntelliJ IDEA.
  User: fhagn
  Date: 9/15/2019
  Time: 12:50 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page import="pl.filiphagno.util.Mappings" %>

<html>
<head>
    <title>TODO List</title>
</head>
<body>
<div align="center">
    <c:url var="addUrl" value="${Mappings.ADDITEM}"/>

    <a href="${addUrl}">New Item</a>
    <table border="1" cellpadding="5">
        <caption><h2>Todo Items</h2></caption>
        <tr>
            <th>Title</th>
            <th>Deadline</th>
            <th>Delete</th>
        </tr>
        <c:forEach var="item" items="${todoData.items}">
            <c:url var="deleteUrl" value="${Mappings.DELETE_ITEM}" >
                <c:param name="id" value="${item.id}"/>
            </c:url>
            <tr>
                <td><c:out value="${item.title}"/></td>
                <td><c:out value="${item.deadline}"/></td>
                <td><a href="${deleteUrl}">Delete Item</a></td>
            </tr>
        </c:forEach>
    </table>
</div>
</body>
</html>
