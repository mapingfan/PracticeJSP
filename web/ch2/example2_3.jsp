<%--
  Created by IntelliJ IDEA.
  User: 马平凡
  Date: 2017/11/03
  Time: 13:19
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=gbk" language="java" %>
<%!
    int count = 0;

    synchronized void setCount() {  //线程同步，防止count出现不一致性问题；
        count++;
    }
%>

<html>
<head>
    <title>线程同步</title>
</head>
<body>
<%
    setCount();
    out.println("你是第"+count+"个访问页面");
%>
</body>
</html>
