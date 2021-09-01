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
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
	
<link
	href="https://fonts.googleapis.com/css?family=Open+Sans:300,400,700"
	rel="stylesheet">
	
<script src="https://code.jquery.com/jquery-1.10.2.min.js"></script>

<link rel="stylesheet" href="assets/css/css-lsr/owl.carousel.min.css">

<!-- Bootstrap CSS -->
<link rel="stylesheet" href="assets/css/css-lsr/bootstrap.min.css">

<!-- 부트스트랩 css -->
<link rel="stylesheet" href="assets/css/css-lsr/bootstrap.css">

<!-- jQuery -->
<script src="http://code.jquery.com/jquery.min.js"></script>

<!-- 부트스트랩 script -->
<script src="assets/js/js-lsr/bootstrap.min.js"></script>

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

<script type="text/javascript" src="js/js-lsr/jquery-3.6.0.min.js"></script>

<style type="text/css">
	a:active {text-decoration:none; color: #ffffff;}
	a:hover {text-decoration:none; color: #2E9AFE;}
	a:visited {text-decoration:none; color: #2E9AFE;}
	
	.dropbtn {
  background-color: Silver;
  color: white;
  padding: 16px;
  font-size: 16px;
  border: none;
}

.dropdown {
  position: relative;
  display: inline-block;
}

.dropdown-content {
  display: none;
  position: absolute;
  background-color: #f1f1f1;
  min-width: 160px;
  box-shadow: 0px 8px 16px 0px rgba(0,0,0,0.2);
  z-index: 1;
}

.dropdown-content a {
  color: black;
  padding: 12px 16px;
  text-decoration: none;
  display: block;
}

.dropdown-content a:hover {background-color: #ddd;}

.dropdown:hover .dropdown-content {display: block;}

.dropdown:hover .dropbtn {background-color: black;}
</style>

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
			
			<!-- 필터링 -->
			<div class="dropdown">
                 <button class="dropbtn" style="width: 70px; height: 35px; font-size: 11px; padding: 0.0em 1.5em;">정렬▼</button>
                 <div class="dropdown-content">
                   <a href="#">인기순</a>
                   <a href="#">최신순</a>
                 </div>
            </div>
			
			<!-- 전체 글 수 -->
			<table>
				<tr>
					<td>전체 글 5,290</td>
				</tr>
			</table>
		</div>
	</div>
	
	<!-- 여행기 리스트 -->
	<div id="features-wrapper">
		<div class="container">
			<div class="row">
				<div class="col-4 col-12-medium">
						
						<c:forEach var="trip" items="${list }">
						<section class="box feature">
							<!-- 썸네일 -->
							<a href="comtrip.action" class="image featured"><img src="${trip.tr_thum_url }"></a>
							<div class="inner">
								<header>
									<!-- 제목 -->
									<h2 onclick="comtrip.action;"><br>${trip.tr_tt }</h2>
									<!-- 조회수 -->
									<p>조회수 ${trip.tr_hits }</p>
									<!-- 프로필 사진, 닉네임 -->
									<p><img src="images\user.PNG">${trip.mem_nnm }</p>
								</header>
							</div>
						</section>
						</c:forEach>

				</div>
			</div>
		</div>
	</div>
	
	<div id="features-wrapper">
		<div class="container">
			<div class="row">
				<div class="col-4 col-12-medium">

				</div>
				<div class="col-4 col-12-medium">

				</div>
				<div class="col-4 col-12-medium">

				</div>
			</div>
		</div>
	</div>
	
	<!-- Footer -->
			<footer>
				<c:import url="Footer.jsp"></c:import>
			</footer>

</body>
</html>