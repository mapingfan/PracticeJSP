<%@ page contentType="text/html;charset=utf-8" language="java" %>
<jsp:useBean id="myCalender" class="wrap.CalenderBean" type="wrap.CalenderBean" scope="request"/>
<%

    String strYear = request.getParameter("year");
    String strMonth = request.getParameter("month");
    int year = 2017, month = 10;
    if (strMonth != null && strMonth != null) {
        year = Integer.parseInt(strYear);
        month = Integer.parseInt(strMonth);
    }
%>
<html>
<head>
    <title>日历</title>
</head>
<body>
<form action="" method="post">
    <label>选择日历的年份: </label>
    <select name="ye
    ar">
        <%
            for (int i = 1999; i <= 2018; i++) {
                boolean isYearSelected = i == year;
        %>
        <option value="<%=i%>" <%=isYearSelected ? "selected" : ""%> ><%=i%>
        </option>
        <% } %>
    </select>&nbsp;&nbsp;
    <label>选择日历的月份: </label>
    <select name="month">
        <%
            for (int j = 1; j <= 12; j++) {

                boolean isMonthSelected = j == month;
        %>
        <option value="<%=j%>" <%=isMonthSelected ? "selected" : ""%> ><%=j%>
        </option>
        <% }
        %>
    </select>
    <br><br><br>
    <input type="submit" value="提交你的选择">
    </form>
    <jsp:setProperty name="myCalender" property="year" param="year"/>
    <jsp:setProperty name="myCalender" property="month" param="month"/>
<%
    if (myCalender.getCalender() != null && myCalender.getCalender().trim().length() != 0) {

%>
<jsp:getProperty name="myCalender" property="year"/>
年&nbsp;
<jsp:getProperty name="myCalender" property="month"/>
月&nbsp;的日历:
<br>
<jsp:getProperty name="myCalender" property="calender"/>
<%
    }
%>

</body>
</html>
