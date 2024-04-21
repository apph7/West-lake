<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">

<head>

    <jsp:include page="common/head.jsp"></jsp:include>

</head>

<body>

<canvas class="fireworks"></canvas>
<i class="fa fa-arrow-right" id="toggle-sidebar" aria-hidden="true"></i>

    <jsp:include page="common/navigate.jsp"></jsp:include>

<div id="content-outer">
    <div class="layout" id="content-inner">
        <article id="page" style="margin-left:0.5rem;margin-right:0.5rem">
            ${htmlContent}
                <div style="display: flex; justify-content: center;">
                <video controls style="width: 500px; height: 300px;">
                        <source src="<%=request.getContextPath()%>/static/video/VID_20230725223712.mp4" type="video/mp4">

                        Your browser does not support the video tag.
                </video>
                    </div>



        </article>

        <!--
        <div class="image">
            <button><a href="/pic/upload">上传图片</a></button>
        </div>-->

        <!--展示图片
        <div class="section">
            <div class="section-title">用户照片</div>
            <div class="layui-main">
              <c:forEach items="image-container">
                    <img src="${photo.photo_pic}" alt="">
                </c:forEach>

            </div>
        </div>
    </div>
    -->



</div>

    <jsp:include page="common/foot.jsp"></jsp:include>

</body>

</html>
