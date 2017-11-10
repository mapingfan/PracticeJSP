<%@ page contentType="text/html;charset=utf-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<p>三角形</p>
<form action="looArea" method="post">
    <input type="hidden" name="type" value="triangle">
    <table>
        <tr>
            <td>输入边A:&nbsp;<input type="text" name="a"></td>
            <td>输入边B:&nbsp;<input type="text" name="b"></td>
            <td>输入边C:&nbsp;<input type="text" name="c"></td>
            <td><input type="submit" value="提交"></td>
        </tr>
    </table>
</form>

<p>梯形</p>
<form action="/ch9/looArea" method="post">
    <input type="hidden" name="type" value="other">
    <table>
        <tr>
            <td>输入下底:&nbsp;<input type="text" name="a"></td>
            <td>输入上底:&nbsp;<input type="text" name="b"></td>
            <td>输入高:&nbsp;<input type="text" name="c"></td>
            <td><input type="submit" value="提交"></td>
        </tr>
    </table>
</form>
</body>
</html>
