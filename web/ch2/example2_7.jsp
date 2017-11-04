<%--
  Created by IntelliJ IDEA.
  User: 马平凡
  Date: 2017/11/03
  Time: 20:04
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=gbk" language="java" %>
<%@ page isThreadSafe="false" %>
<%!
    int i = 0;
%>
<%
    for (int j = 0; j < 100; j++) {
        out.println(i);
        i++;
    }
%>

<html>
<head>
    <title>线程测试</title>
</head>
<body>

</body>
</html>
