<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<html>

<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<style><%@include file="/WEB-INF/views/css/Style.css"%></style>
</head>

<body>

<div class="header">
  <h2>Forum</h2>
</div>

<div class="row">
  <div class="column side" style="background-color:#aaa;">
  </div>

  <div class="column middle" style="background-color:#bbb;">

        <c:set var="rootContext" value="${pageContext.request.contextPath}/logout"/>

        <p><c:out value="${webBeans}"/></p>
        <br/>
        <a href="${rootContext}">logout</a>
  </div>

  <div class="column side" style="background-color:#ccc;">
        <h3>Login</h3>
        <hr>

        <form:form action="${pageContext.request.contextPath}/authenticateUser" method="POST">

            <c:if test="${registrationComplete != null}">
                <p style="color:green;"><c:out value="${registrationComplete}" /></p>
            </c:if>

            <c:if test="${param.error != nul}">
                <p style="color:red;">Invalid username or password</p>
            </c:if>

            <label>Username: </label><input type="text" name="username" />
            <label>Password: </label><input type="password" name="password" />
            <input type="submit" value"Submit" />

        </form:form>
         <br/>
         <a href="${pageContext.request.contextPath}/registration">Register</a>
  </div>
</div>

<div class="footer">
  <p>copyright me</p>
</div>

</body>

</html>