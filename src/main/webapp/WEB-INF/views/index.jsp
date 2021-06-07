<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Index</title>
    <meta charset="utf-8">
</head>
<body>
<table>
    <thead>
    <tr>
        <th>Check</th>
        <th>Name</th>
        <th>Email</th>
        <th>Date created</th>
        <th>Date active</th>
        <th>Status</th>
    </tr>
    </thead>
    <tbody>
    <c:forEach items="${letters}" var="letter">
        <tr>
            <td>
                <li class="tg-list-item">
                    <input class="tgl tgl-ios" id="cb2" type="checkbox"/>
                    <label class="tgl-btn" for="cb2"></label>
                </li>
            </td>
            <td>${letter.authenticate.getName()}</td>
            <td>${letter.authenticate.getEmail()}</td>
            <td>${letter.authenticate.getDateCreated()}</td>
            <td>${letter.getActive()}</td>
            <td>${letter.getStatus()}</td>
        </tr>
    </c:forEach>
    </tbody>
    <td>
        <form action="<c:url value="userUnBlockLetterId/${letter.authenticate.getId()}"/>" method="get">
            <button class="login-submit"><i class="fa fa-lock">Block</i>
            </button>
        </form>
    </td>
    <td>
        <form action="<c:url value="deleteLetter/${letter.getId()}"/>" method="get">
            <button class="login-submit"><i class="fa fa-lock">UnBlock</i>
            </button>
        </form>
    </td>
    <td>
        <form action="<c:url value="deleteLetter/${letter.getId()}"/>" method="get">
            <button class="login-submit"><i class="fa fa-lock">Delete</i>
            </button>
        </form>
    </td>
</table>

<table class="table_col">
    <colgroup>
        <col style="background:#C7DAF0;">
    </colgroup>
    <tr>
        <th>Check</th>
        <th>Name</th>
        <th>Email</th>
        <th>Date created</th>
        <th>Date active</th>
        <th>Status</th>
    </tr>
    <tr>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
    </tr>
</table>
</body>
</html>
<style type="text/css">
    ul,
    li {
        list-style: none;
        margin: 0;
        padding: 0;
    }

    .tg-list {
        text-align: center;
        display: -webkit-box;
        display: flex;
        -webkit-box-align: center;
        align-items: center;
        flex-wrap: wrap;
        -webkit-box-pack: center;
        justify-content: center;
    }

    .tg-list-item {
        margin: 0 2em;
    }

    h2 {
        color: #777;
    }

    h4 {
        color: #999;
    }

    .tgl {
        display: none;
    }

    .tgl,
    .tgl:after,
    .tgl:before,
    .tgl *,
    .tgl *:after,
    .tgl *:before,
    .tgl + .tgl-btn {
        box-sizing: border-box;
    }

    .tgl::-moz-selection,
    .tgl:after::-moz-selection,
    .tgl:before::-moz-selection,
    .tgl *::-moz-selection,
    .tgl *:after::-moz-selection,
    .tgl *:before::-moz-selection,
    .tgl + .tgl-btn::-moz-selection {
        background: none;
    }

    .tgl::selection,
    .tgl:after::selection,
    .tgl:before::selection,
    .tgl *::selection,
    .tgl *:after::selection,
    .tgl *:before::selection,
    .tgl + .tgl-btn::selection {
        background: none;
    }

    .tgl + .tgl-btn {
        outline: 0;
        display: block;
        width: 4em;
        height: 2em;
        position: relative;
        cursor: pointer;
        -webkit-user-select: none;
        -moz-user-select: none;
        -ms-user-select: none;
        user-select: none;
    }

    .tgl + .tgl-btn:after,
    .tgl + .tgl-btn:before {
        position: relative;
        display: block;
        content: "";
        width: 50%;
        height: 100%;
    }

    .tgl + .tgl-btn:after {
        left: 0;
    }

    .tgl + .tgl-btn:before {
        display: none;
    }

    .tgl:checked + .tgl-btn:after {
        left: 50%;
    }

    .tgl-ios + .tgl-btn {
        background: #fbfbfb;
        border-radius: 2em;
        padding: 2px;
        -webkit-transition: all .4s ease;
        transition: all .4s ease;
        border: 1px solid #e8eae9;
    }

    .tgl-ios + .tgl-btn:after {
        border-radius: 2em;
        background: #fbfbfb;
        -webkit-transition: left 0.3s cubic-bezier(0.175, 0.885, 0.32, 1.275), padding 0.3s ease, margin 0.3s ease;
        transition: left 0.3s cubic-bezier(0.175, 0.885, 0.32, 1.275), padding 0.3s ease, margin 0.3s ease;
        box-shadow: 0 0 0 1px rgba(0, 0, 0, 0.1), 0 4px 0 rgba(0, 0, 0, 0.08);
    }

    .tgl-ios + .tgl-btn:hover:after {
        will-change: padding;
    }

    .tgl-ios + .tgl-btn:active {
        box-shadow: inset 0 0 0 2em #e8eae9;
    }

    .tgl-ios + .tgl-btn:active:after {
        padding-right: .8em;
    }

    .tgl-ios:checked + .tgl-btn {
        background: #86d993;
    }

    .tgl-ios:checked + .tgl-btn:active {
        box-shadow: none;
    }

    .tgl-ios:checked + .tgl-btn:active:after {
        margin-left: -.8em;
    }


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

    body {
        line-height: 1;
    }

    ol, ul {
        list-style: none;
    }

    blockquote, q {
        quotes: none;
    }

    body {
        font: 12px/20px 'Lucida Grande', Verdana, sans-serif;
        color: #ADFF2F;
        background: #ADFF2F;
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

    .table_col {
        margin: auto;
        font-family: "Lucida Sans Unicode", "Lucida Grande", Sans-Serif;
        font-size: 14px;
        width: 660px;
        background: white;
        text-align: left;
        border-collapse: collapse;
        color: #3E4347;
    }

    .table_col th:first-child, .table_col td:first-child {
        color: #F5F6F6;
        border-left: none;
    }

    .table_col th {
        font-weight: normal;
        border-bottom: 2px solid #F5E1A6;
        border-right: 20px solid white;
        border-left: 20px solid white;
        padding: 8px 10px;
    }

    .table_col td {
        border-right: 20px solid white;
        border-left: 20px solid white;
        padding: 12px 10px;
        color: #8b8e91;
    }
</style>