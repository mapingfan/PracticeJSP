<%--
  Created by IntelliJ IDEA.
  User: 马平凡
  Date: 2017/11/06
  Time: 14:37
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=gbk" language="java" %>
<%@taglib tagdir="/WEB-INF/tags" prefix="cy"%>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%!
    private boolean check(String string) {
        if (string == null || string.equals("")) {
            return false;
        } else {
            for (int i = 0; i < string.length(); i++) {
                if (!Character.isDigit(string.charAt(i))) {
                    return false;
                }
            }
            return true;
        }
    }


%>
<table border="1" width="100">
    <tr >
        <Td width="30">边A</Td>
        <Td width="30">边B</Td>
        <Td width="30">边C</Td>
        <Td width="30">面积</Td>
    </tr>
<%
    String sideA = request.getParameter("sideA");
    String sideB = request.getParameter("sideB");
    String sideC = request.getParameter("sideC");
    if (check(sideA) && check(sideB) && check(sideC)) {
        double a = Double.parseDouble(sideA);
        double b = Double.parseDouble(sideB);
        double c = Double.parseDouble(sideC);
        if (!(a+b>c&&a+c>b&&b+c>a)){
            out.println("无法构成三角形");
            return;
        } else {
%>
    <cy:computer sideA="<%=a%>" sideB="<%=b%>" sideC="<%=c%>"/>
    <tr >
        <td><%=a%></td>
        <td><%=b%></td>
        <td><%=c%></td>
        <td><%=result%></td>
    </tr>
   <% } %>
<%  } else {
        out.println("参数有错误");
    }
%>
</body>
</html>
