<%@ page contentType="text/html;charset=utf-8" language="java" %>
<%
    int random = (int) (Math.random()*100)+1;
    String encodeURL = response.encodeRedirectURL("guess.jsp");
%>
<jsp:useBean id="gNumber" class="wrap.GuessNumber" type="wrap.GuessNumber" scope="session"/>
<html>
<head>
    <title>Title</title>
</head>
<body>
<p>
    随机给一个1-100之间的数字，请猜测这个数字是多少？
</p>
<jsp:setProperty name="gNumber" property="random" value="<%=random%>" />
<form action="<%=encodeURL%>" method="post">
    <label>输入你的猜测</label><input type="text" name="guess_1">&nbsp;<input type="submit" value="送出">
</form>

</body>
</html>
