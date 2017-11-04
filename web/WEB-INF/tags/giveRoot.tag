<%@tag pageEncoding="UTF-8" %>
<%--存储返回的对象--%>
<%@variable name-given="r1" variable-class="java.lang.Double" scope="AT_BEGIN" %>
<%@variable name-given="r2" variable-class="java.lang.Double" scope="AT_BEGIN" %>

<%--传递系数--%>
<%@attribute name="a" required="true" type="java.lang.Double" %>
<%@attribute name="b" required="true" type="java.lang.Double" %>
<%@attribute name="c" required="true" type="java.lang.Double" %>

<%
    if ((b * b - 4 * a * c) < 0) {
        out.println("无解");
        return;
    }
    double sqrt_delta = Math.sqrt(b * b - 4 * a * c);
    Double r1 = (-b + sqrt_delta) / (2 * a);
    Double r2 = (-b - sqrt_delta) / (2 * a);
    jspContext.setAttribute("r1", r1);
    jspContext.setAttribute("r2", r2);
%>