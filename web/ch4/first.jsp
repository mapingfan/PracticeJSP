<%--
  Created by IntelliJ IDEA.
  User: 马平凡
  Date: 2017/11/06
  Time: 16:58
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=gbk" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<p>我是first.jsp页面，输入你的姓名链接到second.jsp</p>
<p>您的session对象ID是: </p>
<%
    //HttpSession httpSession = request.getSession(true);
    out.println(session.getId());
%>
<form action="two/second.jsp" method="post">
    <input type="text" name="content">
    <input type="submit" value="送出">
</form>
</body>
</html>
