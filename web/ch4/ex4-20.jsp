<%@ page import="java.util.Date" %>
<%@ page import="java.util.Calendar" %><%--
  Created by IntelliJ IDEA.
  User: ��ƽ��
  Date: 2017/11/06
  Time: 22:21
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=gbk" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<p>ʹ�ü�������������</p>
<br>����һ���ַ������������
<form action="" method="post">
    <input type="text" name="content">
    <input type="submit" value="�ͳ�">
</form>
<%
    int time = 5;
    String str = null;
    str = request.getParameter("content");
    if (str == null) {
        str = "";
    }
    Date date = (Date) session.getAttribute("date");
    if (date == null) {
        date = new Date();
        session.setAttribute("date", date);
    }
    date = (Date) session.getAttribute("date");
    Calendar calendar = Calendar.getInstance();
    calendar.setTime(date);
    long timeInSession = calendar.getTimeInMillis();
    long currentTime = 0;
    if (session.isNew() == false) {
        currentTime = System.currentTimeMillis();
    }
    session.setAttribute("date", new Date(currentTime));
    long intervalTime = (currentTime - timeInSession) / 1000;
    if (intervalTime < time && session.isNew() == false) {
        out.println("��" + time + "�����ʱ�ҳ");
    } else {
        out.println("�ַ���������: "+str.length());
    }
%>
</body>
</html>
