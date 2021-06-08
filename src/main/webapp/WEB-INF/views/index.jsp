<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Index</title>
    <meta charset="utf-8">
</head>
<body>

<table class="table_col">
    <colgroup>
        <col style="background:#C7DAF0;">
    </colgroup>
    <tr>
        <th>Check</th>
        <th>Id</th>
        <th>Name</th>
        <th>Email</th>
        <th>Date created</th>
        <th>Date active</th>
        <th>Status</th>
    </tr>
    <c:forEach items="${users}" var="user">
    <form name="select_all">
        <tr>
            <td>
                <input type="checkbox" class="custom-checkbox" id="happy" name="list" value="yes">
            </td>

            <td>${user.getId()}</td>
            <td>${user.getFirstName()}</td>
            <td>${user.getEmail()}</td>
            <td>${user.getCreated()}</td>
            <td>${user.getUpdated()}</td>
            <td>${user.getStatus()}</td>
        </tr>
    </c:forEach>
    <td>
    <input type="button" value="Выделить все" onclick="check(this.form.list, 1)">
    <input type="button" value="Снять выделение" onclick="check(this.form.list, 0)">
    </td>
    </form>
    <td>
        <form action="<c:url value="userUnBlockLetterId/${user.getId()}"/>" method="get">
            <button class="login-submit" value="block"><i class="fa fa-lock">Block</i>
            </button>
        </form>
    </td>
    <td>
        <form action="<c:url value="deleteLetter/${user.getId()}"/>" method="get">
            <button class="login-submit" value="unBlock"><i class="fa fa-lock">UnBlock</i>
            </button>
        </form>
    </td>
    <td>
        <form action="<c:url value="deleteLetter/${user.getId()}"/>" method="get">
            <button class="login-submit" value="delete"><i class="fa fa-lock">Delete</i>
            </button>
        </form>
    </td>
</table>
</body>
</html>
<style type="text/css">
    /* для элемента input c type="radio" */
    .custom-radio {
        position: absolute;
        z-index: -1;
        opacity: 0;
    }
    /* для элемента label связанного с .custom-radio */
    .custom-radio+label {
        display: inline-flex;
        align-items: center;
        user-select: none;
    }
    /* создание в label псевдоэлемента  before со следующими стилями */
    .custom-radio+label::before {
        content: '';
        display: inline-block;
        width: 1em;
        height: 1em;
        flex-shrink: 0;
        flex-grow: 0;
        border: 1px solid #adb5bd;
        border-radius: 50%;
        margin-right: 0.5em;
        background-repeat: no-repeat;
        background-position: center center;
        background-size: 50% 50%;
    }
    /* стили при наведении курсора на радио */
    .custom-radio:not(:disabled):not(:checked)+label:hover::before {
        border-color: #b3d7ff;
    }
    /* стили для активной радиокнопки (при нажатии на неё) */
    .custom-radio:not(:disabled):active+label::before {
        background-color: #b3d7ff;
        border-color: #b3d7ff;
    }
    /* стили для радиокнопки, находящейся в фокусе */
    .custom-radio:focus+label::before {
        box-shadow: 0 0 0 0.2rem rgba(0, 123, 255, 0.25);
    }
    /* стили для радиокнопки, находящейся в фокусе и не находящейся в состоянии checked */
    .custom-radio:focus:not(:checked)+label::before {
        border-color: #80bdff;
    }
    /* стили для радиокнопки, находящейся в состоянии checked */
    .custom-radio:checked+label::before {
        border-color: #0b76ef;
        background-color: #0b76ef;
        background-image: url("data:image/svg+xml,%3csvg xmlns='http://www.w3.org/2000/svg' viewBox='-4 -4 8 8'%3e%3ccircle r='3' fill='%23fff'/%3e%3c/svg%3e");
    }
    /* стили для радиокнопки, находящейся в состоянии disabled */
    .custom-radio:disabled+label::before {
        background-color: #e9ecef;
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
<script type="text/javascript">
    function check(field, flag) {
        if (flag==1) { for (i=0; i<field.length; i++) field[i].checked = true; }
        else { for (i=0; i<field.length; i++) field[i].checked = false; }
    }
</script>