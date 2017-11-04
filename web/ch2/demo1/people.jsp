<%--
  Created by IntelliJ IDEA.
  User: 马平凡
  Date: 2017/11/03
  Time: 21:33
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=gbk" language="java" %>
<%!
    StringBuffer personList = null;
    int count = 0;

    public void judge() {
        if (count == 0) {
            personList = new StringBuffer();
        }
    }

    public void addPerson(String p) {
        if (count == 0) {
            personList.append(p);
        } else {
            personList.append(","+p);
        }
        count++;
    }
%>
<%
    String inputName = request.getParameter("name");
    if (inputName == null || inputName.trim().equals("") || inputName.length() > 10) {
        %>
        <jsp:forward page="inputName.jsp"/>
    <% }  else { %>

       <% judge();
        addPerson(inputName);

        out.println("目前共有"+count+"人浏览了该页面，他们的名字是"+personList);
        %>
   <% } %>
<html>
<head>
    <title>Title</title>
</head>
<body>

</body>
</html>
