<%--
  Created by IntelliJ IDEA.
  User: DratkOMG
  Date: 11/6/2022
  Time: 17:19
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Login</title>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"
          integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.3.1/css/all.css"
          integrity="sha384-mzrmE5qonljUremFsqc01SB46JvROS7bZs3IO2EmfFsd15uHvIt+Y8vEf7N7fWAU" crossorigin="anonymous">
    <link rel="stylesheet" href="login-style.css">

</head>

<body>
<div id="logreg-forms">
    <form action="<c:url value="/sign_in_controller"/>" method="post" class="form-signin">
        <h1 class="h3 mb-3 font-weight-normal" style="text-align: center"> Sign in</h1>
        <input type="email" name="email" value="${email}" id="inputEmail" class="form-control" placeholder="Email address" required="" autofocus="">
        <input type="password" name="password" value="${pass}" id="inputPassword" class="form-control" placeholder="Password" required="">

        <div class="form-group form-check">
            <input name="remember" type="checkbox" ${cookie.remember == null?"":"checked"} class="form-check-input" id="exampleCheck1">
            <label class="form-check-label" for="exampleCheck1">Remember me</label>
        </div>

        <p class="ui-state-error-text">${messError}</p>

        <button class="btn btn-success btn-block" type="submit">
            <i class="fas fa-sign-in-alt">
            </i> Sign in
        </button>

        <hr>

        <a href="<c:url value="/sign_up_controller"/>" class="btn btn-block">
            <button class="btn btn-primary btn-block" type="button" id="btn-signup">
                <i class="fas fa-user-plus">
                </i> Sign up New Account
            </button>
        </a>

        <hr>

        <a href="<c:url value="/home_controller"/>" methods="get"  class="btn btn-block">
            <button class="btn btn-primary btn-block" type="button">
                <i class="fas fa-star">
                </i> Dat Book Shop
            </button>
        </a>

    </form>
</div>

</body>
</html>
