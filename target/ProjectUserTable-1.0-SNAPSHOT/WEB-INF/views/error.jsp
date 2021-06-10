<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html xmlns:th="http://www.thymeleaf.org">
<head>
    <title>Error</title>
</head>
<body class="loader-active">
<section id="what-do-area" class="section-padding">
    <div class="container">
        <div class="row">
            <div class="col-lg-12">
                <h1 style="text-align: center"> ERROR!</h1>
                <p th:text="'Error, ' + ${error} + '!'"></p>
            </div>
        </div>
    </div>
</section>
</body>
</html>
