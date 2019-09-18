<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: fhagn
  Date: 9/18/2019
  Time: 9:14 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="pl.filiphagno.util.Mappings" %>

<html>
<head>
    <title>Item details</title>
</head>
<body>
<div align="center">
    <table border="1" cellpadding="5">
        <caption><h2>Your item</h2></caption>
        <tr>
            <th>Title</th>
            <th>Deadline</th>
            <th>Details</th>
        </tr>
        <tr>
            <td><c:out value="${todoItem.title}"/></td>
            <td><c:out value="${todoItem.deadline}"/></td>
            <td><c:out value="${todoItem.details}"/></td>
        </tr>
    </table>
</div>

<c:url var="itemsUrl" value="${Mappings.ITEMS}"/>
<h2><a href="${itemsUrl}">Go back to all items</a></h2>

</body>
</html>
