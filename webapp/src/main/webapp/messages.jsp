<%@page import="java.util.Enumeration"%>
<%@page trimDirectiveWhitespaces="true"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
  <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  <title>BotDetect Java CAPTCHA Validation: JSP Form CAPTCHA Code Example</title>
  <link rel="stylesheet" href="stylesheet.css" type="text/css" />
</head>
<body>
  <div class="column">
    <h1>BotDetect Java CAPTCHA Validation:<br> JSP Form CAPTCHA Code Example</h1>
    <h2>View Messages</h2>
    <%
      int count = 0;
      Enumeration attributes = request.getSession().getAttributeNames();
      while (attributes.hasMoreElements()){
        String attribute = (String)attributes.nextElement();
        if (attribute.startsWith("Message_")) {
          out.println("<p class=\"message\">" + session.getAttribute(attribute) + "</p>");
          count++;
        }
      }
      
      if (count == 0) {
        out.print("<p class=\"message\">No messages yet.</p>");;
      }
    %>

    <p class="navigation"><a href="index.jsp">Add Message</a></p>
  </div>  
</body>
</html>