<%@ page contentType="text/html;charset=utf-8" language="java" %>
<jsp:useBean id="read" class="wrap.ReadFile" type="wrap.ReadFile" scope="session"/>
<jsp:setProperty name="read" property="directoryName" param="directoryName"/>
<jsp:setProperty name="read" property="fileName" param="fileName"/>
<html>
<head>
    <title>Read</title>
</head>
<body>
<p>该目录:
    <jsp:getProperty name="read" property="directoryName"/>有如下文件: </p>
<jsp:getProperty name="read" property="allFileNames"/>

<form action="" method="post">
    <label>输入一个文件的名字： </label><input type="text" name="fileName">&nbsp;<input type="submit">
</form>
<%
    if (read.getFileName() != null) {
%>
<p>文件
    <jsp:getProperty name="read" property="fileName"/>的内容如下： </p>
<textarea cols="80" rows="30">
    <jsp:getProperty name="read" property="content"/>
</textarea>
<%
    }
%>

</body>
</html>
