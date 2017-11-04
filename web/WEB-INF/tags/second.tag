<%@tag pageEncoding="UTF-8" %>
<%@ tag import="java.util.LinkedList" %>
<%@attribute name="m" required="true" type="java.lang.Integer" %>
<%@variable name-given="list" variable-class="java.util.LinkedList" scope="AT_BEGIN" %>
<%
        LinkedList list = new LinkedList();
        for (int i = 0; i < m; i++) {
            list.add((int) (Math.random() * 20));
        }
    jspContext.setAttribute("list", list);
%>