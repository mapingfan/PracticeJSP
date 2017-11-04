<%@ tag import="java.util.Arrays" %>
<%@ tag import="java.util.Collections" %>
<%@ tag import="java.util.LinkedList" %>
<%@tag pageEncoding="UTF-8" %>
<%@attribute name="listName" required="true" type="java.util.LinkedList" %>
<%@attribute name="listScore" required="true" type="java.util.LinkedList" %>
<%@attribute name="title" required="true" %>
<%@attribute name="item" required="true" %>
<%!
    double min(LinkedList listScore,LinkedList listName, int i, int j) {
        for (int k = i; k < j; k++) {
            if ((Double) listScore.get(i) > (Double) listScore.get(k)) {
                double temp = (double) listScore.get(i);
                listScore.set(i,listScore.get(k));
                listScore.set(k, temp);
                String tmm_name = (String) listName.get(i);
                listName.set(i, listName.get(k));
                listName.set(k, tmm_name);
            }
        }
        return (double) listScore.get(i);
    }
%>
<table border="1">
    <tr>
        <td><%=title%></td>
        <td><%=item%></td>
    </tr>
    <%
        //Collections.sort(listScore);
        for (int i = 0; i < listScore.size(); i++) {
            min(listScore,listName,i,listScore.size());
    %> <tr>
        <%
            if ((double) listScore.get(i) < 60) {
                %> <td bgcolor="red" ><%=listName.get(i)%></td>
                    <td bgcolor="red" ><%=listScore.get(i)%></td>
           <% } else { %>

        <td ><%=listName.get(i)%></td>
        <td ><%=listScore.get(i)%></td>
    <% } %>
    </tr>

    <%    }
        %>

</table>