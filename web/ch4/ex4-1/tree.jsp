<%--
  Created by IntelliJ IDEA.
  User: ��ƽ��
  Date: 2017/11/05
  Time: 21:51
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=gbk" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%
    String message = request.getParameter("message");
    String value = request.getParameter("action");
    if (message != null && value != null) {
        if (!message.trim().equals("")) {
            out.println("<p>��ȡ�ı����ύ����Ϣ��" + message + "</p><br>");
            out.println("<p>��ȡ��ť�����֣�" + value + "</p>");
        } else {
            out.println("�ύ��ϢΪ��");
        }
    }
%>
</body>
</html>
