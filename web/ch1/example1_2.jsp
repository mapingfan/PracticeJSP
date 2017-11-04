<%--
  Created by IntelliJ IDEA.
  User: 马平凡
  Date: 2017/11/03
  Time: 11:11
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=gbk" language="java" %>
<%!
    private boolean isFactorSumEqualsNum(int num) {
        int sum = 0;
        for (int i = 1; i < num; i++) {
            if (num % i == 0) {
                sum += i;
            }
        }
        if (sum == num) {
            return true;
        }
        return false;
    }
%>

<html>
<head>
    <title>输出完数</title>
</head>
<body>
<p>1-1000的完数有</p>
<ul>
    <%
        int sum = 0;
        for (int i = 1; i <= 1000; i++) { %>

    <% if (isFactorSumEqualsNum(i)) { %>
    <li>
        <%=i%>
    </li>
    <% } %>
    <% } %>
</ul>

</body>
</html>
