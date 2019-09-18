<%--
  Created by IntelliJ IDEA.
  User: fhagn
  Date: 9/18/2019
  Time: 8:15 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="pl.filiphagno.util.Mappings" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<html>
<head>
    <title>Your TODO list</title>
</head>
<body>
<c:url var="itemsLink" value="${Mappings.ITEMS}"/>
<h2><a href="${itemsLink}">Show TODO items</a> </h2>
</body>
</html>
