<%--
  Created by IntelliJ IDEA.
  User: 马平凡
  Date: 2017/11/07
  Time: 13:32
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=utf-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<p>选择你想续写小说的名字</p>
<form action="continueWrite.jsp" method="post">
    <input type="radio" name="novel" value="a.txt">美丽的故事&nbsp;
    <input type="radio" name="novel" value="b.txt">火热的夏天&nbsp;
    <input type="radio" name="novel" value="c.txt">秋天的收货&nbsp;
    <input type="radio" name="novel" value="d.txt">冬天的大雪&nbsp;
    <br>
    <input type="submit" value="提交">
</form>
</body>
</html>
