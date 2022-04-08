<%@page contentType="text/html; charset=UTF-8" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="sf" %>
<%--安全插件--%>
<%--<%@taglib uri="http://www.springframework.org/tags" prefix="security" %>--%>
<!DOCTYPE html>
<html>
<head>
    <%@include file="common/header.jspf" %>
    <title>在线评测</title>
</head>
<body>
<%@include file="common/navbar.jspf" %>
<div class="container">
    <div class="jumbotron">
        <h2>在线评测</h2>
        <hr/>
        <p>
            目前支持<span class="important"> Java 语言！</span>
        </p>
        <p>本在线评测旨在：①在线出题与评测；②在线编译代码。</p>
    </div>
</div>
<%@include file="common/footer.jspf" %>
</body>
</html>