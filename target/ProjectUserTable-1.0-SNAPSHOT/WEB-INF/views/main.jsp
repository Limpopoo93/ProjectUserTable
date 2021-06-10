<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <title>Main</title>
</head>
<body>
<nav class="container">
    <ul>
        <li class="nav-item"><a href="${pageContext.request.contextPath}comeIn" class="nav-link">Come In</a></li>
        <li class="nav-item"><a href="${pageContext.request.contextPath}registration"
                                class="nav-link">Registration</a></li>
    </ul>
</nav>
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

    body {
        font: 13px/20px 'Lucida Grande', Tahoma, Verdana, sans-serif;
        color: #404040;
        background: #555f6c 0 0 repeat;
    }

    .container {
        margin: 100px auto;
        width: 640px;
        text-align: center;
    }

    .nav-item {
        padding: 3px;
        background: rgba(0, 0, 0, 0.01);
        border-radius: 4px;
        display: inline-block;
        vertical-align: baseline;
        zoom: 1;
        *display: inline;
        *vertical-align: auto;
        background-image: -webkit-linear-gradient(top, rgba(0, 0, 0, 0.01), rgba(255, 255, 255, 0.12));
        background-image: -moz-linear-gradient(top, rgba(0, 0, 0, 0.01), rgba(255, 255, 255, 0.12));
        background-image: -o-linear-gradient(top, rgba(0, 0, 0, 0.01), rgba(255, 255, 255, 0.12));
        background-image: linear-gradient(to bottom, rgba(0, 0, 0, 0.01), rgba(255, 255, 255, 0.12));
        -webkit-box-shadow: inset 0 1px 2px rgba(0, 0, 0, 0.3), inset 0 -1px rgba(255, 255, 255, 0.15);
        box-shadow: inset 0 1px 2px rgba(0, 0, 0, 0.3), inset 0 -1px rgba(255, 255, 255, 0.15);
    }

    .nav-link {
        display: block;
        line-height: 27px;
        width: 100px;
        font-size: 12px;
        color: white;
        text-decoration: none;
        text-shadow: 0 1px 1px rgba(0, 0, 0, 0.5);
        background: #7e929b;
        border: 1px solid;
        border-color: #c2ccd1 #9cacb2 #91a2aa;
        border-color: #c2ccd1 rgba(255, 255, 255, 0.1) #91a2aa;
        border-radius: 3px;
        background-image: -webkit-linear-gradient(top, #b9c6cc, #8ea1aa 50%, #768b94 51%, #7c9099 75%, #7e929b);
        background-image: -moz-linear-gradient(top, #b9c6cc, #8ea1aa 50%, #768b94 51%, #7c9099 75%, #7e929b);
        background-image: -o-linear-gradient(top, #b9c6cc, #8ea1aa 50%, #768b94 51%, #7c9099 75%, #7e929b);
        background-image: linear-gradient(to bottom, #b9c6cc, #8ea1aa 50%, #768b94 51%, #7c9099 75%, #7e929b);
    }

    .nav-link:hover {
        background: #a8bdc7;
        border-color: #e3eaed #d3dee3 #cedadf;
        background-image: -webkit-linear-gradient(top, #cfdae0, #b5c7cf 50%, #a6bac5 51%, #aec1ca);
        background-image: -moz-linear-gradient(top, #cfdae0, #b5c7cf 50%, #a6bac5 51%, #aec1ca);
        background-image: -o-linear-gradient(top, #cfdae0, #b5c7cf 50%, #a6bac5 51%, #aec1ca);
        background-image: linear-gradient(to bottom, #cfdae0, #b5c7cf 50%, #a6bac5 51%, #aec1ca);
    }

    .nav-link:active {
        padding: 1px;
        background: #8c9da5;
        border: 0;
        background-image: -webkit-linear-gradient(top, #5f7681, #8c9da5 45%, #9dabb1);
        background-image: -moz-linear-gradient(top, #5f7681, #8c9da5 45%, #9dabb1);
        background-image: -o-linear-gradient(top, #5f7681, #8c9da5 45%, #9dabb1);
        background-image: linear-gradient(to bottom, #5f7681, #8c9da5 45%, #9dabb1);
    }

</style>