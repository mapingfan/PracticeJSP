<%@tag pageEncoding="UTF-8" %>
<%@variable name-given="message" variable-class="java.lang.String" scope="AT_END" %>

<%
    int random = (int) session.getAttribute("random");
    String guessValue = (String) session.getAttribute("guessValue");
    String message ;
    int cnt = (int) session.getAttribute("cnt");
    cnt++;
    if (Integer.parseInt(guessValue) == random) {
        message = "当前猜测的结果："+"你猜对了"+"这是第"+cnt+"次猜测";
    } else if (Integer.parseInt(guessValue) > random) {
        message = "当前猜测的结果："+"你猜大了"+"这是第"+cnt+"次猜测";
    } else if (Integer.parseInt(guessValue) < random) {
        message = "当前猜测的结果："+"你猜小了"+"这是第"+cnt+"次猜测";
    } else {
        message = null;
    }
    session.setAttribute("message", message);
    jspContext.setAttribute("message", message);
    session.setAttribute("cnt", cnt);
%>

