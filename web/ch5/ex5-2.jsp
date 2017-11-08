<%@ page import="java.io.FileFilter" %>
<%@ page import="java.io.File" %>
<%@ page import="java.io.FilenameFilter" %><%--
  Created by IntelliJ IDEA.
  User: 马平凡
  Date: 2017/11/07
  Time: 11:54
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=utf-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%!
    class FileEndwithJSP implements FilenameFilter {
        String string = null;

        public FileEndwithJSP(String string) {
            this.string = "." + string;
        }

        @Override
        public boolean accept(File dir, String name) {
            return name.endsWith(this.string);
        }
    }
%>

<%
    FileEndwithJSP fileEndwithJSP = new FileEndwithJSP("md");
    File file = new File("F:\\JavaWeb项目\\JSP实践\\web\\ch4");
    String[] files = file.list(fileEndwithJSP);
    for (int i = 0; i < files.length; i++) {
        out.println(files[i]);
    }
%>
</body>
</html>
