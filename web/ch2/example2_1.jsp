<%--
  Created by IntelliJ IDEA.
  User: ��ƽ��
  Date: 2017/11/03
  Time: 13:00
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=gbk" language="java" %>
<%@page import="java.util.Date" %>  //JSPָ����
<%!
    Date date;   //��Ա����������
    int sum;

    public int getFactorSum(int n) {  //����������
        for (int i = 1; i < n; i++) {
            if (n % i == 0) {
                sum += i;
            }
        }
        return sum;
    }
%>

<html>
<head>
    <title>Title</title>
</head>
<body>
<%
    date = new Date();
    out.println("<br>" + date + "<br>");
    int m = 100;
%>
<p><%=m%>������֮����</p>
<%=getFactorSum(m)%>

</body>
</html>
