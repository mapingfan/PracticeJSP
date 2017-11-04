<%@tag pageEncoding="utf-8" %>
<%@attribute name="a" required="true" type="java.lang.Double" %>
<%@attribute name="b" required="true" type="java.lang.Double" %>
<%@attribute name="c" required="true" type="java.lang.Double" %>
<%!
    boolean check(double a, double b, double c) {
        if (a != 0 && b != 0 && c != 0) {
            if (a + b > c && a + c > b && b + c > a) {
                return true;
            }
        }
        return false;
    }
%>

<%
    if (check(a, b, c)) {
        out.println("这是一个tag文件，负责计算三角形的面积.");
        out.println("JSP页面传递过来的三条边: " + a+"," + b+"," + c);
        double q = (a + b + c) / 2;
        double area = Math.sqrt((q - a) * (q - b) * (q - c) * q);
        out.println("三角形的面积是： "+area);
    } else {
        out.println("parameters are wrong");
    }

%>