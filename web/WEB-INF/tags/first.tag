<%@tag pageEncoding="UTF-8" %>
<%@ tag import="java.util.Collections" %>
<%@ tag import="java.util.LinkedList" %>
<%@taglib tagdir="/WEB-INF/tags" prefix="cy"%>
<%@attribute name="m" required="true" type="java.lang.Integer" %>
<cy:second m="<%=m%>"/>
<p>这<%=m%>随机数是:<%=list%></p>
<%
    Collections.sort(list);
    System.out.println(list);
%>
<p>按从小到大排列：<%=list%></p>
<p>得到的<%=m%>个随机数之和: <%=sum(list)%></p>
<%!
    int sum = 0;
    private int sum(LinkedList list) {
        for (int i = 0; i < list.size(); i++) {
            sum += (int) list.get(i);
        }
        return sum;
    }
%>