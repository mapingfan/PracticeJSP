<%--
  Created by IntelliJ IDEA.
  User: ��ƽ��
  Date: 2017/11/03
  Time: 13:19
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=gbk" language="java" %>
<%!
    int count = 0;

    synchronized void setCount() {  //�߳�ͬ������ֹcount���ֲ�һ�������⣻
        count++;
    }
%>

<html>
<head>
    <title>�߳�ͬ��</title>
</head>
<body>
<%
    setCount();
    out.println("���ǵ�"+count+"������ҳ��");
%>
</body>
</html>
