<%--
  Created by IntelliJ IDEA.
  User: 马平凡
  Date: 2017/11/04
  Time: 20:48
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=utf-8" language="java" %>
<%@taglib tagdir="/WEB-INF/tags" prefix="cy" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<p>输入三个数a,b,c值(代表三角形的三边或梯形的上底，下底和高)：</p>
<form action="" method="get">
    <label>输入数值a: </label><input name="a" type="text" required><br>
    <label>输入数值b: </label><input name="b" type="text" required><br>
    <label>输入数值c: </label><input name="c" type="text" required><br>
    <input name="r1" type="radio" value="triangle">代表三角形 &nbsp; <input name="r1" type="radio" value="trapezoid">代表梯形<br>
    <input type="submit" value="提交">
</form>
<%!
    private boolean check(String string) {
        if (string == null) {
            return false;
        }
        for (int i = 0; i < string.length(); i++) {
            if (!Character.isDigit(string.charAt(i))) {
                return false;
            }
        }
        return true;
    }
%>
<%
    String a = request.getParameter("a");
    String b = request.getParameter("b");
    String c = request.getParameter("c");
    String r1 = request.getParameter("r1");
    double va ,vb ,vc;
    if (check(a) && check(b) && check(c) && r1 != null) {
        va = Double.parseDouble(a);
        vb = Double.parseDouble(b);
        vc = Double.parseDouble(c);
%>
<cy:getArea a="<%=va%>" b="<%=vb%>" c="<%=vc%>" r1="<%=r1%>"/>
<p><%=message+area%></p>
<% } else {
    //do nothing ...
}
%>

</body>
</html>