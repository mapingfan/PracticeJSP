<%--
  Created by IntelliJ IDEA.
  User: 马平凡
  Date: 2017/11/03
  Time: 13:00
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=gbk" language="java" %>
<%@page import="java.util.Date" %>  //JSP指令标记
<%!
    Date date;   //成员变量声明；
    int sum;

    public int getFactorSum(int n) {  //方法声明；
        for (int i = 1; i < n; i++) {
            if (n % i == 0) {
                sum += i;
            }
        }
        return sum;
    }
%>

<html>
<head>
    <title>Title</title>
</head>
<body>
<%
    date = new Date();
    out.println("<br>" + date + "<br>");
    int m = 100;
%>
<p><%=m%>的因子之和是</p>
<%=getFactorSum(m)%>

</body>
</html>
