<%--
  Created by IntelliJ IDEA.
  User: 马平凡
  Date: 2017/11/04
  Time: 10:38
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=gbk" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%
    String ubase = request.getParameter("ubase");
    String lbase = request.getParameter("lbase");
    String height = request.getParameter("height");
    if (ubase.equals("") || lbase.equals("") || height.equals("")) {
        ubase = "0";
        lbase = "0";
        height = "0";
    }
    out.println("上底是" + ubase);
    out.println("下底是" + lbase);
    out.println("高是" + height);
    double area = ((Double.parseDouble(ubase)+Double.parseDouble(lbase))*Double.parseDouble(height)/2);
    out.println("梯形面积是: " + area);
%>
</body>
</html>
