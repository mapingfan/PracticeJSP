<p>¹þ¹þ¹þ</p>
<%
    int sum = 0;
    int i =1;
    for (i=1;i<=100;i++) {
        if (i % 2 == 0) {
            sum += i;
        }
    }
    out.println(sum);
%>