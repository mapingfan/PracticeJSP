<%@ page contentType="text/html;charset=utf-8" language="java" %>
<jsp:useBean id="inquire" class="wrap.InquireBean" type="wrap.InquireBean" scope="session"/>
<html>
<head>
    <title>查询</title>
</head>
<body>
<jsp:setProperty name="inquire" property="tableName" value="booklist"/>
<p>在
    <jsp:getProperty name="inquire" property="tableName"/>表查询到记录: </p>
<jsp:getProperty name="inquire" property="result"/>
</body>
</html>
