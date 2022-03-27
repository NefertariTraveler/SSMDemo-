<%--
  Created by IntelliJ IDEA.
  User: 刘寿伟
  Date: 2022/3/26
  Time: 16:39
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
<form>
    <table>
        <tr>
            <td>
                <a href="${pageContext.request.contextPath}/rest/user/goAdd">添加</a>
            </td>
        </tr>
    </table>
</form>
    <table border="1" width="80%">
        <tr>
            <td>tid</td>
            <td>uname</td>
            <td>birthday</td>
            <td>sex</td>
            <td>address</td>
            <td>操作</td>
        </tr>
        <c:forEach var="list" items="${list}">
            <tr>
                <td>${list.tid}</td>
                <td>${list.uname}</td>
                <td>
                    <fmt:formatDate value="${list.birthday}" pattern="YYYY-MM-DD"></fmt:formatDate>
                </td>
                <td>${list.sex}</td>
                <td>${list.address}</td>
                <td>
                    <a href="${pageContext.request.contextPath}/rest/user/findById?tid=${list.tid}">修改</a>
                    <a href="${pageContext.request.contextPath}/rest/user/deleteUser/${list.tid}">删除</a>
                </td>
            </tr>
        </c:forEach>
    </table>
    <table align="center" width="80%">
        <tr>
            <td>
                第&nbsp;&nbsp;${info.pageNum}&nbsp;&nbsp;页<br>
                共&nbsp;&nbsp;${info.pages}&nbsp;&nbsp;页<br>
                共&nbsp;&nbsp;${info.total}&nbsp;&nbsp;条数据<br>

                    <a href="${pageContext.request.contextPath}/rest/user/queryAll?pageNum=1">首页</a>
                    <a href="${pageContext.request.contextPath}/rest/user/queryAll?pageNum=${info.pageNum-1}">上一页</a>
                    <a href="${pageContext.request.contextPath}/rest/user/queryAll?pageNum=${info.pageNum+1}">下一页</a>
                    <a href="${pageContext.request.contextPath}/rest/user/queryAll?pageNum=${info.pages}">末页</a>
            </td>
        </tr>
    </table>
</body>
</html>
