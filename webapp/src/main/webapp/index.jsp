<%@page trimDirectiveWhitespaces="true"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="botDetect" uri="https://captcha.com/java/jsp"%>
<!DOCTYPE html>
<html>
<head>
  <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  <title>BotDetect Java CAPTCHA Validation: JSP Form CAPTCHA Code Example</title>
  <link rel="stylesheet" href="stylesheet.css" type="text/css" />
</head>
<body>
  <form method="post" action="captchaFormAction" class="column" id="form1">
    <h1>BotDetect Java CAPTCHA Validation:<br> JSP Form CAPTCHA Code Example</h1>
    <fieldset>
      <legend>CAPTCHA included in JSP form validation</legend>
      <div class="input">
        <label for="name">Name:</label>
        <input type="text" name="name" class="textbox" value="${param.name}" />
        <label class="incorrect" for="name">${messages.nameIncorrect}</label>
      </div>

      <div class="input">
        <label for="email">Email:</label>
        <input type="text" name="email" class="textbox" value="${param.email}" />
        <label class="incorrect" for="email">${messages.emailIncorrect}</label>
      </div>

      <div class="input">
        <label for="message">Short message:</label>
        <textarea class="inputbox" name="message" rows="5" cols="40">${param.message}</textarea>
        <label class="incorrect" for="message">${messages.messageIncorrect}</label>
      </div>

      <%
        if (request.getSession().getAttribute("isCaptchaSolved") == null) {
      %>
          <label for="captchaCode" class="prompt">Retype the characters from the picture:</label>

          <!-- Adding BotDetect Captcha to the page -->
          <botDetect:captcha id="formCaptcha" 
                userInputID="captchaCode"
                codeLength="3"
                imageWidth="150"
                imageStyle="GRAFFITI2" />

          <div class="validationDiv">
            <input id="captchaCode" type="text" name="captchaCode" />
            <label class="incorrect" for="captchaCode">${messages.captchaIncorrect}</label>
          </div>
      <%
        }
      %>

      <input type="submit" name="submitButton" id="submitButton" value="Submit" />
      <label class="correct">${messages.captchaCorrect}</label>
    </fieldset>
  </form>
</body>
</html>