<%@ page language="java" pageEncoding="UTF-8" %>
<%--图片轮播--%>
<div id="carousel-example-generic" class="carousel slide slider-top hidden-sm hidden-xs" data-ride="carousel">
    <%--小圆点--%>
    <ol class="carousel-indicators">
        <li data-target="#carousel-example-generic" data-slide-to="0" class="active"></li>
        <li data-target="#carousel-example-generic" data-slide-to="1"></li>
    </ol>
    <%--轮播图片--%>
    <div class="carousel-inner" role="listbox">
        <div class="item active">
            <img class="first-slide" src="image/1.jpg" alt="路演">
        </div>
        <div class="item" style>
            <img class="first-slide" src="image/banners_jxqcb.jpg" alt="青创版">
        </div>
    </div>

    <%--左右按钮--%>
    <a class="left carousel-control" href="#carousel-example-generic" role="button" data-slide="prev">
        <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
        <span class="sr-only">上一个</span>
    </a>
    <a class="right carousel-control" href="#carousel-example-generic" role="button" data-slide="next">
        <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
        <span class="sr-only">下一个</span>
    </a>
</div>
