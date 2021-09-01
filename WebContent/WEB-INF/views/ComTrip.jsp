<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
	request.setCharacterEncoding("UTF-8");
	String cp = request.getContextPath();
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>LEGGO</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<script src="https://code.jquery.com/jquery-1.10.2.min.js"></script>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@4.4.1/dist/css/bootstrap.min.css"
	rel="stylesheet">
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@4.4.1/dist/js/bootstrap.bundle.min.js"></script>
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com">
<link
	href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@400;700&display=swap"
	rel="stylesheet">
<link rel="stylesheet" href="assets/css/css-lsr/bootstrap-theme.css">
<link rel="stylesheet" href="assets/css/css-lsr/main.css" />
</head>
<body>

<!-- 헤더 -->
<header>	
		<div style="background-color: white;">
			<c:import url="ComHeader.jsp"></c:import>
	</div>
</header>

	<div class="container">
		<div class="main-body">
			<!-- 상단 메뉴 -->
			<nav>
				<ol class="breadcrumb">
					<li class="breadcrumb-item"><a href="mainhome.action">커뮤니티 홈</a></li>
					<li class="breadcrumb-item"><a href="comtripfeed.action">여행기</a></li>
					<li class="breadcrumb-item"><a href="complanfeed.action">일정 구경</a></li>
					<li class="breadcrumb-item"><a href="comphotofeed.action">사진</a></li>
				</ol>
			</nav>
		</div>
	</div>
	
	<!-- Page content-->
    <div class="container mt-5">
        <div class="row">
            <div class="col-lg-8">
                
                <!-- Post content-->
                <c:forEach var="trip" items="${list }">
                <article>
                    <!-- Post header-->
                    <header class="mb-4">
                        <!-- Post title-->
                        <h2><img src="${trip.tr_thum_url }" width="800px;"></h2>
                        <h1 class="fw-bolder mb-1"><b>${trip.tr_tt }</b></h1>
                        <!-- 작성일 -->
                        <div class="text-muted fst-italic mb-2">${trip.tr_dt }</div>
                        <!-- 작성자 닉네임 -->
                        <p><img src="images\user.PNG">${trip.mem_nnm }</p>
                    </header>
             
                    <section class="mb-5">
                        <p class="fs-5 mb-4">${trip.tr_cont }</p>
                        <p>조회수 ${trip.tr_hits } <img src="images\singo.jpg" width="30px;" height="30px;">신고하기</p>
                    </section>
                </article>
                
                <!-- Comments section-->
                <!-- <section class="mb-5"> -->
                <section class="mb-5">
                    <div class="card bg-light">
                        <div class="card-body">
                            <!-- Comment form-->
                            <form class="mb-4"><textarea class="form-control" rows="3" placeholder="Join the discussion and leave a comment!"></textarea></form>
                            <!-- Comment with nested comments-->
                            <div class="d-flex mb-4">
                                <!-- Parent comment-->
                                <div class="flex-shrink-0"><!-- <img class="rounded-circle" src="https://dummyimage.com/50x50/ced4da/6c757d.jpg" alt="..." /> --></div>
                                	<div class="ms-3">
                                    	<div class="fw-bold"><img src="images\user.PNG">&nbsp;Eun J</div>
                                    	믿고보는 제주도..
                                	</div>
                                <br>
                            </div>
                        </div>
                    </div>
                </section>
                </c:forEach>
                
                
            </div>
            <!-- Side widgets-->
            <div class="col-lg-4">
                
                <!-- Side widget-->
                <div class="card mb-4">
                    <div class="card-body">
                    	<br>
                    	<div>
                    		<a class="badge bg-secondary text-decoration-none link-light" href="#!" style="padding: 0.8em 1.5em; font-size: 15px;">스크랩</a>
                        	<a class="badge bg-secondary text-decoration-none link-light" href="#!" style="padding: 0.8em 1.5em; font-size: 15px;">팔로우</a>
                        </div>
                        <br>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <!-- Footer -->
	<footer>
		<c:import url="Footer.jsp"></c:import>
	</footer>
			
    <!-- Bootstrap core JS-->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"></script>
    <!-- Core theme JS-->
    <script src="js/scripts.js"></script>

</body>
</html>