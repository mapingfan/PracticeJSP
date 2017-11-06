<%--
  Created by IntelliJ IDEA.
  User: 马平凡
  Date: 2017/11/06
  Time: 14:37
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=gbk" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<p>输入三角形的三边：</p>
<form action="get.jsp" method="post">
    <label>边A: </label><input type="text" name="sideA" size="5">
    <label>边B: </label><input type="text" name="sideB" size="5">
    <label>边C: </label><input type="text" name="sideC" size="5">
    <input type="submit" name="submit" value="提交">
</form>
</body>
</html>
