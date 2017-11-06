<%--
  Created by IntelliJ IDEA.
  User: 马平凡
  Date: 2017/11/06
  Time: 21:11
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=gbk" language="java" %>
<%@taglib tagdir="/WEB-INF/tags" prefix="cy"%>
<html>
<head>
    <title></title>
</head>
<body>
    <%
    String guessValue = request.getParameter("guessValue");
    if (guessValue!=null&&!guessValue.trim().equals("")){
        session.setAttribute("guessValue",guessValue);
        %>
    <cy:guess/>
        <%=message%>
    <% } else {
        //do nothing ..
    }
    %>

<p>输入你的猜测: </p>
<form action="" method="post">
    <input type="text" name="guessValue">
    <input type="submit" value="送出">
</form>

</html>
