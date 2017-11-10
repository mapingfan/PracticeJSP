<%@ page contentType="text/html;charset=utf-8" language="java" %>
<jsp:useBean id="data" type="wrap.StorageBean" scope="request"/>
<html>
<head>
    <title>结果</title>
</head>
<body>
<%
    if (!data.getMessage().equals("不能构成三角形")) {
%>
<jsp:getProperty name="data" property="message"/>
面积：
<jsp:getProperty name="data" property="result"/>
<%
    } else {
%>
<jsp:getProperty name="data" property="message"/>
<%
    }
%>

</body>
</html>
