<%--
  Created by IntelliJ IDEA.
  User: ��ƽ��
  Date: 2017/11/03
  Time: 20:29
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=gbk" language="java" %>
<html>
<head>
    <title>compute</title>
</head>
<body>
<form action="" method="post">
        <input type="text" name="ok">
        <br>
        <input type="submit" value="compute">
</form>
<%
        String string = request.getParameter("ok");
        if (string == null) {
                string = "1";
        }
        try {
                double num = Double.parseDouble(string);
                num = Math.sqrt(num);
                out.println(string + "��ƽ������:" + num);
        } catch (NumberFormatException e) {
            out.println("���벻�Ϸ�");
        }
%>
</body>
</html>
