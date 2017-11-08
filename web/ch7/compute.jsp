<%@ page contentType="text/html;charset=utf-8" language="java" %>
<jsp:useBean id="myCompute" class="wrap.ComputeBean" type="wrap.ComputeBean" scope="page"/>
<jsp:setProperty name="myCompute" property="op1" param="op1"/>
<jsp:setProperty name="myCompute" property="op2" param="op2"/>
<jsp:setProperty name="myCompute" property="operator" param="operator"/>
<%
    String op1 = request.getParameter("op1");
    String op2 = request.getParameter("op2");
    String operator = request.getParameter("operator");
    if (op1 == null || op1.trim().length() == 0) {
        op1 = " ";
    }
    if (op2 == null || op2.trim().length() == 0) {
        op2 = " ";
    }
    if (operator == null) {
        operator = " ";
    }

%>
<html>
<head>
    <title>Title</title>
</head>
<body>
<form action="" method="post">
    <input type="text" name="op1" value="<%=op1%>"/>
    <select name="operator">
        <option value="+" <%=operator.equals("+")?"selected":""%> >+</option>
        <option value="-" <%=operator.equals("-")?"selected":""%>>-</option>
        <option value="*" <%=operator.equals("*")?"selected":""%>>*</option>
        <option value="/" <%=operator.equals("/")?"selected":""%>>/</option>
    </select>
    <input type="text" name="op2" value="<%=op2%>"/>
    <%
        if (myCompute.getResult() != -9999) {
    %>
    &nbsp;=
    <jsp:getProperty name="myCompute" property="result"/>
    <%
        }
    %>
    <Br>
    <input type="submit" value="提交">
</form>
</body>
</html>
