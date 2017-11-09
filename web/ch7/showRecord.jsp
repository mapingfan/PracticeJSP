<%@ page contentType="text/html;charset=utf-8" language="java" %>
<jsp:useBean id="show" class="wrap.ShowRecord" type="wrap.ShowRecord" scope="session"/>
<jsp:setProperty name="show" property="databaseName" value="bbs"/>
<jsp:setProperty name="show" property="tableName" value="article"/>
<jsp:setProperty name="show" property="currentPageNumber" param="currentPageNumber"/>
<jsp:setProperty name="show" property="perPageNumber" value="3"/>

<html>
<head>
    <title>Title</title>
</head>
<body>
<p>数据库
    <jsp:getProperty name="show" property="databaseName"/>中
    <jsp:getProperty name="show" property="tableName"/>表的记录将被分页显示</p>
<p>共有<jsp:getProperty name="show" property="allPageNumber"/>页，每页最多显示
    <jsp:getProperty name="show" property="perPageNumber"/>条记录</p>
<br/>
<jsp:getProperty name="show" property="queryResult"/>
<p>单击前一页或后一页按钮查看记录(当前显示第
    <jsp:getProperty name="show" property="currentPageNumber"/>页)</p>
<form action="" method="post">
    <input type="hidden" name="currentPageNumber" value="<%=show.getCurrentPageNumber()-1%>">
    <input type="submit" value="上一页">
</form>
<form action="" method="post">
    <input type="hidden" name="currentPageNumber" value="<%=show.getCurrentPageNumber()+1%>">
    <input type="submit" value="下一页">
</form>
<form action="" method="post">
    输入页码：<input type="text" name="currentPageNumber">
    <input type="submit" value="提交">
</form>
</body>
</html>
