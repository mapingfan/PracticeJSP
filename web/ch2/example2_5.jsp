<%--
  Created by IntelliJ IDEA.
  User: 马平凡
  Date: 2017/11/03
  Time: 19:33
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=gbk" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<form method="post" action="">
    <label>a的长度</label><input type="text" name="a">
    <label>b的长度</label><input type="text" name="b">
    <label>c的长度</label><input type="text" name="c">
    <input type="submit" value="提交">
</form>

<%!
    boolean check(String string) {
        if (string == null) {
            return false;
        } else {
            for (int i = 0; i < string.length(); i++) {
                if (!Character.isDigit(string.charAt(i))) {
                    return false;
                }
            }
            return true;
        }
    }

    int parse(String string) {
        return Integer.parseInt(string);
    }
%>


<%
    String a = request.getParameter("a");
    String b = request.getParameter("b");
    String c = request.getParameter("c");
    if (check(a) && check(b) && check(c)) {
        int a_int = parse(a);
        int b_int = parse(b);
        int c_int = parse(c);
        if ((a_int + b_int) > c_int && (a_int + c_int) > b_int && (b_int + c_int) > a_int) {
            double p = (a_int + b_int + c_int) / 2.0;
            double area = Math.sqrt(p * (p - a_int) * (p - b_int) * (p - c_int));
            out.print("<br>三角形的面积是: " + area);
        } else {
            out.print("<Br>三条边不能构成三角形");
        }
    }
%>
</body>
</html>
