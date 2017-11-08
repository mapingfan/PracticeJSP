<%@ tag import="java.io.RandomAccessFile" %>
<%@ tag import="java.io.File" %>
<%@ tag import="com.sun.org.apache.bcel.internal.generic.NEW" %>
<%@attribute name="novelName" required="true" type="java.lang.String" %>
<%@tag pageEncoding="UTF-8" %>
<%
    String path = "F:\\JavaWeb项目\\JSP实践\\web\\ch5\\ex5-3\\" + novelName;
    RandomAccessFile randomAccessFile = new RandomAccessFile(path,"rw");
    String line;
    while ((line=randomAccessFile.readLine()) != null) {
        String tmp = new String(line.getBytes("iso-8859-1"));
        out.println(tmp);

    }
    randomAccessFile.close();
%>
