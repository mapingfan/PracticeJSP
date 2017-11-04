<%@tag pageEncoding="UTF-8" %>
<%@attribute name="name" required="true" %>
<%@attribute name="sex" required="true" %>
<%@attribute name="color" required="true" %>
<tr bgcolor="<%=color%>">
        <td><%=name%></td>
        <td><%=sex%></td>
</tr>
<jsp:doBody/>