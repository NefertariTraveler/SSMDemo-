<%--
  Created by IntelliJ IDEA.
  User: 刘寿伟
  Date: 2022/3/27
  Time: 11:36
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<html>
<head>
    <title>Title</title>
</head>
<body>
<form action="${pageContext.request.contextPath}/rest/user/updateUser" method="post">
    <input type="hidden" name="tid" value="${byId.tid}">
    <br>
    uname:<input name="uname" value="${byId.uname}">
    <br>
    birthday:<input name="birthday" value="${byId.birthday}">
    <br>
    sex:<input name="sex" value="${byId.sex}">
    <br>
    address:<input name="address" value="${byId.address}">
    <br>
    <input type="submit" value="保存">
</form>
</body>
</html>
