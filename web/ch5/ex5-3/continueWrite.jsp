<%--
  Created by IntelliJ IDEA.
  User: 马平凡
  Date: 2017/11/07
  Time: 13:32
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=utf-8" pageEncoding="UTF-8" language="java" %>
<%@taglib tagdir="/WEB-INF/tags" prefix="cy"%>
<%
    String choice = request.getParameter("novel");
    if (choice != null && choice.trim().length() != 0) {
        //读取已有文件
        %> <cy:readNovel novelName="<%=choice%>"/>
<%  } else {
        out.println("错误");
        return;
}
%>

<html>
<head>
    <title>Title</title>
</head>
<body>
<p>请输入续写的内容: </p>
<form action="continue.jsp?choice=<%=choice%>" method="post">
    <textarea name="content" cols="80" rows="30"></textarea>
    <br>
    <input type="submit" value="提交">
</form>
</body>
</html>
