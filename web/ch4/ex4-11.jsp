<%@ page import="java.awt.image.BufferedImage" %>
<%@ page import="java.awt.*" %>
<%@ page import="java.awt.geom.Ellipse2D" %>
<%@ page import="java.awt.geom.AffineTransform" %>
<%@ page import="java.io.OutputStream" %>
<%@ page import="com.sun.image.codec.jpeg.JPEGImageEncoder" %>
<%@ page import="com.sun.image.codec.jpeg.JPEGCodec" %><%--
  Created by IntelliJ IDEA.
  User: 马平凡
  Date: 2017/11/06
  Time: 15:51
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=gbk" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<form action="" method="post">
    <input type="submit" value="观看" name="submit">
</form>
<%
    String string = request.getParameter("submit");
    if (string != null) {
        response.setContentType("image/jpeg");
        int width = 260, heigth = 260;
        BufferedImage image = new BufferedImage(width, heigth, BufferedImage.TYPE_INT_BGR);
        Graphics g = image.getGraphics();
        g.setColor(Color.BLUE);
        g.fillRect(0, 0, width, heigth);
        Graphics2D g_2d = (Graphics2D) g;
        Ellipse2D ellipse2D = new Ellipse2D.Double(20, 150, 120, 50);
        g_2d.setColor(Color.green);
        AffineTransform transform = new AffineTransform();
        for (int i = 1; i < 25 ; i++) {
            transform.rotate(15.0 * Math.PI / 180, 75, 75);
            g_2d.setTransform(transform);
            g_2d.draw(ellipse2D);
        }
        g.dispose();
        OutputStream outClient = response.getOutputStream();
        JPEGImageEncoder encoder = JPEGCodec.createJPEGEncoder(outClient);
        encoder.encode(image);
        response.setHeader("refresh", "5");

    }
%>
</body>
</html>
