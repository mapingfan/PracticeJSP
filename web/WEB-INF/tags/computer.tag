<%@attribute name="sideA" type="java.lang.Double" required="true"  %>
<%@attribute name="sideB" type="java.lang.Double" required="true"  %>
<%@attribute name="sideC" type="java.lang.Double" required="true"  %>
<%@variable name-given="result" variable-class="java.lang.Double" scope="AT_BEGIN" %>
<%!
    private boolean isTriangle(double sideA, double sideB, double sideC) {
        if (sideA + sideB > sideC && sideA + sideC > sideB && sideB + sideC > sideA) {
            return true;
        }
        return false;
    }
%>
<%
    if (isTriangle(sideA, sideB, sideC)) {
        double q = (sideA + sideB + sideC) / 2;
        double area = Math.sqrt(q * (q - sideA) * (q - sideB) * (q - sideC));
        jspContext.setAttribute("result", area);
    } else {

    }
%>
