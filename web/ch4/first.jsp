<%--
  Created by IntelliJ IDEA.
  User: ��ƽ��
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
<p>����first.jspҳ�棬��������������ӵ�second.jsp</p>
<p>����session����ID��: </p>
<%
    //HttpSession httpSession = request.getSession(true);
    out.println(session.getId());
%>
<form action="two/second.jsp" method="post">
    <input type="text" name="content">
    <input type="submit" value="�ͳ�">
</form>
</body>
</html>
