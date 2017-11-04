<%@ page import="java.math.BigDecimal" %><%--
  Created by IntelliJ IDEA.
  User: 马平凡
  Date: 2017/11/04
  Time: 19:40
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=utf-8" language="java" %>
<%@taglib tagdir="/WEB-INF/tags" prefix="cy" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<cy:giveRoot a="3" b="6" c="-2"/>
<p>方程的根保留五位小数点，并且计算两根之积: </p>
<%
    BigDecimal bigDecimal = new BigDecimal(r1);
    BigDecimal bigDecimal1 = new BigDecimal(r2);
    double new_r1 = bigDecimal.setScale(6, BigDecimal.ROUND_HALF_UP).doubleValue();
    double new_r2 = bigDecimal1.setScale(5, BigDecimal.ROUND_HALF_UP).doubleValue();
%>
<P>根1： <%=new_r1%></P>
<P>根2： <%=new_r2%></P>
<p>根1与跟2之积为<%=r1*r2%></p>
</body>
</html>
