<%--
  Created by IntelliJ IDEA.
  User: ��ƽ��
  Date: 2017/11/03
  Time: 13:24
  To change this template use File | Settings | File Templates.
  jsp�л�д�����Ƭ�ڻ��ӱ�ǩ��
  ���Ƭ�������ı�ǩ�ں������Ƭ�ڶ���Ч����

--%>
<%@ page contentType="text/html;charset=gbk" language="java" %>
<html>
<head>
    <title>���Email��ַ�Ϸ���</title>
</head>
<body>
<p>������Email��ַ</p>
<form action="example2_4.jsp" method="get">
    <input type="email" name="email" placeholder="����Email��ַ">
    <input type="submit" value="go">
</form>

<%
    String str = request.getParameter("email");
    if (str != null) {
        int index = str.indexOf('@');
        if (index == -1) {
            %><br>��ַ��û��@
       <% } else {
            int space = str.indexOf(" ");
           if (space != -1) {
               %><br>��ַ���пո�
         <%  } else {
             int start = str.indexOf("@");
             int end = str.lastIndexOf("@");
             if (start != end) {
                 %> <br>������������@����
            <% } else {
                 out.print("<br>"+str);
                 %> <br>�����Email��ȷ
            <% } %>
        <% } %>
      <% } %>
   <% } %>
</body>
</html>
