<%--
  Created by IntelliJ IDEA.
  User: ��ƽ��
  Date: 2017/11/06
  Time: 15:16
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=gbk" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%!
    private int getSequenceSum(int range) {
        int sum = 0;
        for (int i = 0; i <= range; i++) {
            sum += i;
        }
        return sum;
    }

    private int getSquareSum(int range) {
        int sum = 0;
        for (int i = 0; i <= range; i++) {
            sum += Math.pow(i, 2);
        }
        return sum;
    }

    private int getCubeSum(int range) {
        int sum = 0;
        for (int i = 0; i <= range; i++) {
            sum += Math.pow(i, 3);
        }
        return sum;
    }
%>

<%
    String choice = request.getParameter("choice");
    String range = request.getParameter("range");
    if (choice != null && !choice.trim().equals("") && range != null && !range.trim().equals("")) {
        switch (Integer.parseInt(choice)) {
            case 1:
                switch (Integer.parseInt(range)) {
                    case 10:
                        out.println("1-10����������: "+getSequenceSum(10));
                        break;
                    case 50:
                        out.println("1-50����������: "+getSequenceSum(50));
                        break;
                    case 100:
                        out.println("1-100����������: "+getSequenceSum(100));
                        break;
                }
                break;
            case 2:
                switch (Integer.parseInt(range)) {
                    case 10:
                        out.println("1-10��ƽ������: "+getSquareSum(10));
                        break;
                    case 50:
                        out.println("1-50��ƽ������: "+getSquareSum(50));
                        break;
                    case 100:
                        out.println("1-100��ƽ������: "+getSquareSum(100));
                        break;
                }
                break;
            case 3:
                switch (Integer.parseInt(range)) {
                    case 10:
                        out.println("1-10����������: "+getCubeSum(10));
                        break;
                    case 50:
                        out.println("1-50����������: "+getCubeSum(50));
                        break;
                    case 100:
                        out.println("1-100����������: "+getCubeSum(100));
                        break;
                }
                break;
        }
    } else {
        out.println("��������");
    }
%>
</body>
</html>
