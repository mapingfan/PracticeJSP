<%@ tag import="java.util.Date" %>
<%@variable name-given="time" variable-class="java.util.Date" scope="AT_END" %>
<%
    jspContext.setAttribute("time", new Date());
%>
