<%@ page import="java.util.LinkedList" %><%--
  Created by IntelliJ IDEA.
  User: 马平凡
  Date: 2017/11/04
  Time: 16:39
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=utf-8" language="java" %>
<%@taglib tagdir="/WEB-INF/tags" prefix="cy"%>
<html>
<head>
    <title></title>
</head>
<body>
<%
    LinkedList listName = new LinkedList();
    LinkedList listScore = new LinkedList();
    listName.add("张三");
    listScore.add(new Double(58));

    listName.add("李四");
    listScore.add(new Double(48));

    listName.add("马三");
    listScore.add(new Double(68));

    listName.add("陈颖");
    listScore.add(new Double(98));

    listName.add("赵武");
    listScore.add(new Double(79));
%>
<p>成绩单: </p>
<cy:sort listName="<%=listName%>" listScore="<%=listScore%>" title="姓名" item="高等数学"/>
</body>
</html>
