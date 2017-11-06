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
<p>我是third.jsp，你的session对象ID是：</p>
<%=session.getId()%>
<p>单击超链接，链接到first.jsp页面。</p>
<p><a href="../first.jsp">欢迎去first.jsp页面!</a> </p>
</body>
</html>
