#  `request`使用注意事项

标签（空格分隔）： jsp

---

在`jsp`页面使用`request`对象时，我们常会对取得`String`类型参数，如：
```
String content = request.getParameter("content");
```
这个时候如果我们对直接对`content`进行转换，如转换为`double`类型，那么很可能会遇到错误，因为此时`content`内容可能是`null`值，对`null`值进行转换会报错。当我们把内容直接提交到表单自身所在页面时，这种情况更是常见，为此在转换前先要检查是否为`null`值,然后才能转换。下面给出一个范例：
```
<%@ page import="static java.io.FileDescriptor.out" %><%--
  Created by IntelliJ IDEA.
  User: 马平凡
  Date: 2017/11/05
  Time: 22:01
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=gbk" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<form action="" method="post">
    <input type="text" name="content" value="<%=request.getParameter("content")==null?"":request.getParameter("content")%>">
    <input type="submit" value="enter">
</form>
<%!
    private boolean check(String s) {
        if (s == null) {
            return false;
        } else {
            for (int i = 0; i < s.length(); i++) {
                if (!Character.isDigit(s.charAt(i))) {
                    return false;
                }
            }
            return true;
        }
    }
%>
<%
    String content = request.getParameter("content");
    if (content != null && !content.trim().equals("")) {
        if (check(content)) {
            out.println(content + "的平方根: ");
            double result = Math.sqrt(Double.parseDouble(content));
            out.println(result);
        }
    } else {
/**如果content值是null，那么就什么也别做。不要跳转，也不要报错。让页面看起来和自然。
*/
    }
%>
</body>
</html>

```




