<%--
学习JavaBean的使用；JavaBean其实就是一种规范的类。
在页面中使用JavaBean的目的其实很简单，内容分离。
当我们使用JavaBean时，页面中应该都是标签语言，不应该出现Java程序片。
--%>
<%@ page contentType="text/html;charset=utf-8" language="java" pageEncoding="UTF-8" %>
<%@ page import="wrap.Triangle" %>
<jsp:useBean id="myTriangle" class="wrap.Triangle" type="wrap.Triangle" scope="page"/>
<html>
<head>
    <title>Triangle</title>
</head>
<body>
<form action="" method="post">
    <table border="1">
        <tr>
            <td>输入三角形的边A：</td>
            <td><input type="text" name="sideA"></td>
        </tr>
        <tr>
            <td>输入三角形的边B：</td>
            <td><input type="text" name="sideB"></td>
        </tr>
        <tr>
            <td>输入三角形的边C：</td>
            <td><input type="text" name="sideC"></td>
        </tr>
        <tr>
            <td align="center" colspan="2"><input type="submit" value="提交"></td>

        </tr>
    </table>
</form>

<jsp:setProperty name="myTriangle" property="*"/>
<p>您输入的三角形三边是: </p>
<p>边A是:
    <jsp:getProperty name="myTriangle" property="sideA"/>
</p>
<p>边B是:
    <jsp:getProperty name="myTriangle" property="sideB"/>
</p>
<p>边C是:
    <jsp:getProperty name="myTriangle" property="sideC"/>
</p>
<p>这三边能构成一个三角形吗？
    <jsp:getProperty name="myTriangle" property="isTriangle"/>
</p>
<p>面积是：
    <jsp:getProperty name="myTriangle" property="area"/>
</p>
</body>
</html>