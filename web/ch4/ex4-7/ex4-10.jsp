<%--
  Created by IntelliJ IDEA.
  User: ��ƽ��
  Date: 2017/11/06
  Time: 15:45
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=gbk" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<p>������ѧϰresponse�����</p>
<br>setContentType����
<p>����ǰҳ�汣��Ϊword�ĵ���</p>
<form action="" method="get">
    <input type="submit" value="yes" name="submit">
</form>
<%
    String submit = request.getParameter("submit");
    if (submit != null) {
        if (submit.equals("yes")) {
            response.setContentType("application/msword");
        } else {

        }
    } else {

    }
%>
</body>
</html>
