<%@tag pageEncoding="UTF-8" %>
<%
    if (session.isNew()) {
        if (session.getAttribute("cnt") == null) {
            session.setAttribute("cnt", 0);
        }
        int cnt = (int) session.getAttribute("cnt");
        cnt++;
        session.setAttribute("cnt", cnt);
    } else {

    }
    out.println("你是第"+session.getAttribute("cnt")+"个访问本页面");
%>