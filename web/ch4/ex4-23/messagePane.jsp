<%@ page import="java.util.LinkedList" %>
<%@ page import="java.util.Date" %>
<%@page import="wrap.WrapMessage" %>
<%@ page contentType="text/html;charset=utf-8" pageEncoding="UTF-8" language="java" %>
<%!
    LinkedList<WrapMessage> list = new LinkedList<>();

    int i = 1;

%>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%
    request.setCharacterEncoding("utf-8");
    String name = request.getParameter("name");
    String title = request.getParameter("title");
    String content = request.getParameter("content");
    Date date = new Date();
    //在表单中已经进行了初步检查，三项数据不可能为空，最差情况为空串.下面针对空串进行进一步处理。
    if (name.trim().length() == 0) {

        name = "guest" + i;
        i++;
    }
    if (title.trim().length() == 0) {
        title = "无题";
    }
    if (content.trim().length() == 0) {
        content = "无信息";
    }
    WrapMessage wrapMessage = new WrapMessage(name, title, content, date);
    list.add(wrapMessage);
    application.setAttribute("info", list);
%>
<p>你的信息已经提交</p>
<a href="submit.jsp">返回留言板</a>&nbsp;<a href="showMessage.jsp">查看留言板</a>
</body>
</html>
