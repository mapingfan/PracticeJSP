<%--
  Created by IntelliJ IDEA.
  User: 马平凡
  Date: 2017/11/03
  Time: 13:24
  To change this template use File | Settings | File Templates.
  jsp中混写；语句片内混杂标签。
  语句片内声明的标签在后续语句片内都有效果。

--%>
<%@ page contentType="text/html;charset=gbk" language="java" %>
<html>
<head>
    <title>检测Email地址合法性</title>
</head>
<body>
<p>请输入Email地址</p>
<form action="example2_4.jsp" method="get">
    <input type="email" name="email" placeholder="输入Email地址">
    <input type="submit" value="go">
</form>

<%
    String str = request.getParameter("email");
    if (str != null) {
        int index = str.indexOf('@');
        if (index == -1) {
            %><br>地址中没有@
       <% } else {
            int space = str.indexOf(" ");
           if (space != -1) {
               %><br>地址中有空格
         <%  } else {
             int start = str.indexOf("@");
             int end = str.lastIndexOf("@");
             if (start != end) {
                 %> <br>含有两个以上@符合
            <% } else {
                 out.print("<br>"+str);
                 %> <br>输入的Email正确
            <% } %>
        <% } %>
      <% } %>
   <% } %>
</body>
</html>
