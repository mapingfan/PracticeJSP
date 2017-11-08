<%@ page contentType="text/html;charset=utf-8" language="java" %>
<jsp:useBean id="write" class="wrap.Write" type="wrap.Write" scope="session"/>
<jsp:setProperty name="write" property="fileName" param="fileName"/>
<jsp:setProperty name="write" property="directoryName" param="directoryName"/>
<jsp:setProperty name="write" property="content" param="content"/>
<html>
<head>
    <title>Title</title>
</head>
<body>
<form action="" method="post">
    <table border="1" width="300">
        <tr>
            <td>请选择一个目录： </td>
            <td>
                <select name="directoryName">
                    <option value="c:/1000">c:/1000</option>
                    <option value="d:/1000">d:/1000</option>
                    <option value="e:/1000">e:/1000</option>
                </select>
            </td>
        </tr>
        <tr>
            <td>输入保存文件的名字：</td>
            <td>
                <input type="text" name="fileName">
            </td>
        </tr>
        <tr>
            <td colspan="2">输入文件的内容</td>
        </tr>
        <tr>
            <td colspan="2">
                <textarea cols="80" rows="30" name="content"></textarea>
            </td>
        </tr>
        <tr>
            <td colspan="2" align="center">
                <input type="submit" value="提交">
            </td>
        </tr>
    </table>
</form>
<%
    if (write.isSuccessful()) {
        %>文件所在目录：
<jsp:getProperty name="write" property="directoryName"/>
<Br>文件名字：
<jsp:getProperty name="write" property="fileName"/>
    <%}
%>
</body>
</html>
