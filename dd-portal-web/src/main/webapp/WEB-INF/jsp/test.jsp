<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Title</title>
    <link rel="stylesheet" href="css/bootstrap.min.css">
    <script src="js/jquery.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
</head>
<body>

<div id="myCarousel" class="carousel slide">
    <!-- 轮播（Carousel）指标 -->
    <ol class="carousel-indicators">
        <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
        <li data-target="#myCarousel" data-slide-to="1"></li>
        <li data-target="#myCarousel" data-slide-to="2"></li>
        <li data-target="#myCarousel" data-slide-to="3"></li>
        <li data-target="#myCarousel" data-slide-to="4"></li>
    </ol>
        <!-- 轮播（Carousel）项目 -->
    <div class="carousel-inner">
        <ul>
        <c:forEach items="${ad1List}" var="node" varStatus="status">
            <li>
                    <img src="${node.pic}" alt="${node.title}">
            </li>
        </c:forEach>
        </ul>
    </div>
    <!-- 轮播（Carousel）导航 -->
    <a class="carousel-control left" href="#myCarousel" data-slide="prev">‹</a>
    <a class="carousel-control right" href="#myCarousel" data-slide="next">›</a>
</div>


<script>
    $(function(){
        $("#myCarousel").carousel('cycle');
    });
</script>
</body>
</html>
