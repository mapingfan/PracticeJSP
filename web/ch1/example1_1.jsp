<%--
  Created by IntelliJ IDEA.
  User: ��ƽ��
  Date: 2017/11/02
  Time: 22:22
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=gbk" language="java" %>
<html>
<head>
    <title>Example1_1</title>
</head>
<body style="background:burlywood; size: 13px">
<p>����һ���򵥵�JSPҳ��</p>
<%
    int sum = 0;
    for (int j = 0; j < 101; j++) {
        sum += j;
    }
%>
<p>1��100����������<%=sum%></p>
</body>
</html>
