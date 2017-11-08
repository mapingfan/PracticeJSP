<%@ page contentType="text/html;charset=utf-8" language="java" %>
<%
    request.setCharacterEncoding("utf-8");
    String strGuess = response.encodeRedirectURL("guess.jsp");
    String strGetNumber = response.encodeRedirectURL("getNumber.jsp");
%>
<jsp:useBean id="gNumber" class="wrap.GuessNumber" type="wrap.GuessNumber" scope="session"/>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%--注意这个地方param与value的区别--%>
<jsp:setProperty name="gNumber" property="guess_1" param="guess_1"/>
这是第
<jsp:getProperty name="gNumber" property="guessCount"/>猜
<jsp:getProperty name="gNumber" property="result"/>
你给出的数是
<jsp:getProperty name="gNumber" property="guess_1"/>
<% if (gNumber.isRight() == false) {
%>
    <form action="<%=strGuess%>" method="post">
        <label>再次输入你的猜测: </label><input type="text" name="guess_1">&nbsp;<input type="submit" value="送出">
    </form>
<% } %>
<br><a href="<%=strGetNumber%>">重完游戏</a>
</body>
</html>
