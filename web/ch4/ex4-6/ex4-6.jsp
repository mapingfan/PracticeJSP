<%--
  Created by IntelliJ IDEA.
  User: ��ƽ��
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
    <option value="1">����1-n��������</option>
    <option value="2">����1-n��ƽ����</option>
    <option value="3">����1-n��������</option>
</select>
    <br>
<SELECT name="range">
    <option value="10" selected>10</option>
    <option value="50">50</option>
    <option value="100">100</option>
</SELECT>
    <br>
    <input type="submit" value="����">
    <input type="reset" value="����">
</form>
</body>
</html>
