<%@ page contentType="text/html;charset=utf-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<p>选择一个目录： </p>
<form action="read.jsp" method="post">
    <select name="directoryName">
        <option value="F:\abc">F:\abc</option>
        <option value="E:\abc">E:\abc</option>
        <option value="D:\abc">D:\abc</option>
    </select>
    <input type="submit" value="提交">
</form>
</body>
</html>
