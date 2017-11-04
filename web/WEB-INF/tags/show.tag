<%@tag body-content="scriptless" %>
<%
        for (int i = 10; i <= 13; i++) {
        %> <font size="<%=i%>">
        <jsp:doBody/>
</font>
<br>
       <% }
%>