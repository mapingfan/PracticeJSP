<%--
  Created by IntelliJ IDEA.
  User: 马平凡
  Date: 2017/11/03
  Time: 21:02
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=gbk" language="java" %>
<html>
<head>
    <title>compute</title>
</head>
<body>
<%!
    boolean check(String string) {
        if (string != null) {
            for (int i = 0; i < string.length(); i++) {
                if (!Character.isDigit(string.charAt(i))) {
                    return false;
                }
            }
            return true;
        }
        return false;
    }
%>
<%
    String param = request.getParameter("num");
    if (check(param)) {
        int sum = 0;
        for (int i = 0; i < Integer.parseInt(param); i++) {
            sum += i;
        }
        out.println("从1-" + param + "的和是:" + sum);
    }
%>
</body>
</html>
