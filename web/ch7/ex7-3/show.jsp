<%@ page contentType="text/html;charset=utf-8" language="java" %>
<jsp:useBean id="myShow" class="wrap.Show" type="wrap.Show" scope="session"/>
<html>
<head>
    <title>ShowPic</title>
</head>
<body>
<jsp:getProperty name="myShow" property="pic"/>
<jsp:setProperty name="myShow" property="cnt" param="num"/>
<form action="" method="post">
   <input type="hidden" name="num" value="<%=myShow.getCnt()-1%>">
    <input type="submit" value="上一张">
</form>
<form action="" method="post">
    <input type="hidden" name="num" value="<%=myShow.getCnt()+1%>">
    <input type="submit" value="下一张">
</form>
</body>
</html>
