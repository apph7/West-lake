<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">

<head>

    <jsp:include page="common/head.jsp"></jsp:include>

    <link rel="stylesheet" href="<%=request.getContextPath()%>/static/layuiadmin/layui/css/layui.css" media="all">
    <link rel="stylesheet" href="<%=request.getContextPath()%>/static/layuiadmin/style/admin.css" media="all">
</head>

<body>

<canvas class="fireworks"></canvas>
<i class="fa fa-arrow-right" id="toggle-sidebar" aria-hidden="true"></i>



<jsp:include page="common/navigate.jsp"></jsp:include>


<div id="content-outer">
    <div class="layout" id="content-inner">
        <div id="photos">
            <div class="layui-carousel" id="ID-carousel-image">
                <div carousel-item>
                <c:forEach items="${photos}" var="photos">

                        <div><img src="<%=request.getContextPath()%>${photos.photoPic}"></div>

                </c:forEach>
                </div>

            </div>

        </div>
    </div>

</div>


<script src="<%=request.getContextPath()%>/static/editor/js/jquery.min.js"></script>
<script src="<%=request.getContextPath()%>/static/layuiadmin/layui/layui.js"></script>
<script>

    layui.use(['carousel'], function(){
        //alert("1111111111111")
        var carousel = layui.carousel;
        // 渲染 - 图片轮播
        carousel.render({
            elem: '#ID-carousel-image',
            width: '720px',
            height: '360px',
            interval: 3000
        });
    });
</script>



<jsp:include page="common/foot.jsp"></jsp:include>

</body>

</html>
