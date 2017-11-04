<%@tag pageEncoding="UTF-8" %>
<%@attribute name="a" required="true" type="java.lang.Double" %>
<%@attribute name="b" required="true" type="java.lang.Double" %>
<%@attribute name="c" required="true" type="java.lang.Double" %>
<%@attribute name="r1" required="true" type="java.lang.String" %>
<%@variable name-given="area" variable-class="java.lang.Double" scope="AT_BEGIN" %>
<%@variable name-given="message" variable-class="java.lang.String" scope="AT_BEGIN" %>
<%
    if (r1.equals("trapezoid")) {
        double area = (a + b) * c / 2;
        jspContext.setAttribute("area", area);
        jspContext.setAttribute("message","梯形的面积：");
    } else {
        double q = (a + b + c) / 2;
        double area = Math.sqrt(q * (q - a) * (q - b) * (q - c));
        jspContext.setAttribute("area", area);
        jspContext.setAttribute("message", "三角形的面积：");
    }
%>
