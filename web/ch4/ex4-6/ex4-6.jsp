<%--
  Created by IntelliJ IDEA.
  User: 马平凡
  Date: 2017/11/06
  Time: 15:16
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=gbk" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<form action="sum.jsp" method="post">
<select name="choice" size="3">
    <option value="1">计算1-n的连续和</option>
    <option value="2">计算1-n的平方和</option>
    <option value="3">计算1-n的立方和</option>
</select>
    <br>
<SELECT name="range">
    <option value="10" selected>10</option>
    <option value="50">50</option>
    <option value="100">100</option>
</SELECT>
    <br>
    <input type="submit" value="计算">
    <input type="reset" value="重置">
</form>
</body>
</html>
