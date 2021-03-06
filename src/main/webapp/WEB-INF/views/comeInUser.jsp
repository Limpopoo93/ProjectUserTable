<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <title>Login Form</title>
    <link rel="stylesheet" href="css/style.css">
</head>
<body>
<%--@elvariable id="user" type="functional.user.table.view.User"--%>
<form:form class="login" action="${pageContext.request.contextPath}comeInUser"
           modelAttribute="user" method="post">
    <h1>Come in</h1>
    <div class="form">
        <form:input path="username" class="login-input" type="text" placeholder="login"/>
        <form:errors path="username" cssStyle="color: red"/>

        <form:input path="password" class="login-input" type="text" placeholder="password"/>
        <form:errors path="password" cssStyle="color: red"/>

        <input type="submit" value="Come In" class="login-submit">
    </div>
</form:form>
</body>
</html>
<style type="text/css">
    html, body, div, span, applet, object, iframe,
    h1, h2, h3, h4, h5, h6, p, blockquote, pre,
    a, abbr, acronym, address, big, cite, code,
    del, dfn, em, img, ins, kbd, q, s, samp,
    small, strike, strong, sub, sup, tt, var,
    b, u, i, center,
    dl, dt, dd, ol, ul, li,
    fieldset, form, label, legend,
    table, caption, tbody, tfoot, thead, tr, th, td,
    article, aside, canvas, details, embed,
    figure, figcaption, footer, header, hgroup,
    menu, nav, output, ruby, section, summary,
    time, mark, audio, video {
        margin: 0;
        padding: 0;
        border: 0;
        font-size: 100%;
        font: inherit;
        vertical-align: baseline;
    }

    article, aside, details, figcaption, figure,
    footer, header, hgroup, menu, nav, section {
        display: block;
    }

    body {
        line-height: 1;
    }

    ol, ul {
        list-style: none;
    }

    blockquote, q {
        quotes: none;
    }

    blockquote:before, blockquote:after,
    q:before, q:after {
        content: '';
        content: none;
    }

    table {
        border-collapse: collapse;
        border-spacing: 0;
    }
    ::-moz-focus-inner {
        padding: 0;
        border: 0;
    }

    :-moz-placeholder {
        color: #bcc0c8 !important;
    }

    ::-webkit-input-placeholder {
        color: #bcc0c8;
    }

    :-ms-input-placeholder {
        color: #bcc0c8 !important;
    }

    body {
        font: 12px/20px 'Lucida Grande', Verdana, sans-serif;
        color: #404040;
        background: #ADFF2F;
    }

    input, textarea, select, label {
        font-family: inherit;
        font-size: 12px;
        -webkit-box-sizing: border-box;
        -moz-box-sizing: border-box;
        box-sizing: border-box;
    }

    .login {
        margin: 50px auto;
        padding: 18px 20px;
        width: 200px;
        background: #3f65b7;
        background-clip: padding-box;
        border: 1px solid #172b4e;
        border-bottom-color: #142647;
        border-radius: 5px;
        -webkit-box-shadow: inset 0 1px rgba(255, 255, 255, 0.3), inset 0 0 1px 1px rgba(255, 255, 255, 0.1), 0 2px 10px rgba(0, 0, 0, 0.5);
        box-shadow: inset 0 1px rgba(255, 255, 255, 0.3), inset 0 0 1px 1px rgba(255, 255, 255, 0.1), 0 2px 10px rgba(0, 0, 0, 0.5);
    }
    .login > h1 {
        margin-bottom: 20px;
        font-size: 16px;
        font-weight: bold;
        color: white;
        text-align: center;
        text-shadow: 0 -1px rgba(0, 0, 0, 0.4);
    }
    .login-input {
        display: block;
        width: 100%;
        height: 37px;
        margin-bottom: 20px;
        padding: 0 9px;
        color: white;
        text-shadow: 0 1px black;
        background: #2b3e5d;
        border: 1px solid #15243b;
        border-top-color: #0d1827;
        border-radius: 4px;
        background-image: -webkit-linear-gradient(top, rgba(0, 0, 0, 0.35), rgba(0, 0, 0, 0.2) 20%, rgba(0, 0, 0, 0));
        background-image: -moz-linear-gradient(top, rgba(0, 0, 0, 0.35), rgba(0, 0, 0, 0.2) 20%, rgba(0, 0, 0, 0));
        background-image: -o-linear-gradient(top, rgba(0, 0, 0, 0.35), rgba(0, 0, 0, 0.2) 20%, rgba(0, 0, 0, 0));
        background-image: linear-gradient(to bottom, rgba(0, 0, 0, 0.35), rgba(0, 0, 0, 0.2) 20%, rgba(0, 0, 0, 0));
        -webkit-box-shadow: inset 0 1px 2px rgba(0, 0, 0, 0.3), 0 1px rgba(255, 255, 255, 0.2);
        box-shadow: inset 0 1px 2px rgba(0, 0, 0, 0.3), 0 1px rgba(255, 255, 255, 0.2);
    }
    .login-input:focus {
        outline: 0;
        background-color: #32486d;
        -webkit-box-shadow: inset 0 1px 2px rgba(0, 0, 0, 0.3), 0 0 4px 1px rgba(255, 255, 255, 0.6);
        box-shadow: inset 0 1px 2px rgba(0, 0, 0, 0.3), 0 0 4px 1px rgba(255, 255, 255, 0.6);
    }
    .lt-ie9 .login-input {
        line-height: 35px;
    }
    .login-submit {
        display: block;
        width: 100%;
        height: 37px;
        margin-bottom: 15px;
        font-size: 14px;
        font-weight: bold;
        color: #294779;
        text-align: center;
        text-shadow: 0 1px rgba(255, 255, 255, 0.3);
        background: #adcbfa;
        background-clip: padding-box;
        border: 1px solid #284473;
        border-bottom-color: #223b66;
        border-radius: 4px;
        cursor: pointer;
        background-image: -webkit-linear-gradient(top, #d0e1fe, #96b8ed);
        background-image: -moz-linear-gradient(top, #d0e1fe, #96b8ed);
        background-image: -o-linear-gradient(top, #d0e1fe, #96b8ed);
        background-image: linear-gradient(to bottom, #d0e1fe, #96b8ed);
        -webkit-box-shadow: inset 0 1px rgba(255, 255, 255, 0.5), inset 0 0 7px rgba(255, 255, 255, 0.4), 0 1px 1px rgba(0, 0, 0, 0.15);
        box-shadow: inset 0 1px rgba(255, 255, 255, 0.5), inset 0 0 7px rgba(255, 255, 255, 0.4), 0 1px 1px rgba(0, 0, 0, 0.15);
    }
    .login-submit:active {
        background: #a4c2f3;
        -webkit-box-shadow: inset 0 1px 5px rgba(0, 0, 0, 0.4), 0 1px rgba(255, 255, 255, 0.1);
        box-shadow: inset 0 1px 5px rgba(0, 0, 0, 0.4), 0 1px rgba(255, 255, 255, 0.1);
    }
</style>