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
    <title>Main</title>
</head>
<body>
<form action="" method="get">
    <label>上底</label><input type="text" name="ubase">
    <label>下底</label><input type="text" name="lbase">
    <label>高</label><input type="text" name="height">
    <input type="submit" value="compute">
</form>
<%
    String ubase = request.getParameter("ubase");
    String lbase = request.getParameter("lbase");
    String height = request.getParameter("height");
    if (ubase != null && lbase != null && height != null) {
        %>
<jsp:include page="lader.jsp">
    <jsp:param name="ubase" value="<%=ubase%>"/>
    <jsp:param name="lbase" value="<%=lbase%>"/>
    <jsp:param name="height" value="<%=height%>"/>
</jsp:include>
    <% } else {
        }
%>
<
</body>
</html>
