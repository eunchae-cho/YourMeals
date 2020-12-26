<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Mypage</title>
<meta name="description" content="">
<meta name="author" content="">

<link rel="shortcut icon" href="<%=request.getContextPath() %>/test/img/favicon.ico" type="image/x-icon">
<link rel="apple-touch-icon" href="<%=request.getContextPath() %>/test/img/apple-touch-icon.png">
<link rel="apple-touch-icon" sizes="72x72" href="<%=request.getContextPath() %>/test/img/apple-touch-icon-72x72.png">
<link rel="apple-touch-icon" sizes="114x114" href="<%=request.getContextPath() %>/test/img/apple-touch-icon-114x114.png">

<!-- Bootstrap -->
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath() %>/test/fonts/font-awesome/css/font-awesome.css">

<!-- Stylesheet
    ================================================== -->
<link rel="stylesheet" type="text/css"  href="<%=request.getContextPath() %>/test/css/mystyle.css">
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath() %>/test/css/nivo-lightbox/nivo-lightbox.css">
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath() %>/test/css/nivo-lightbox/default.css">
<link href="https://fonts.googleapis.com/css?family=Raleway:300,400,500,600,700" rel="stylesheet">
<link href="https://fonts.googleapis.com/css?family=Open+Sans:300,400,600,700" rel="stylesheet">
<link href="https://fonts.googleapis.com/css?family=Dancing+Script:400,700" rel="stylesheet">
</head>

<body id="mypage">
	<div class="main-container">
 	<div class="box1">
 		<div class="box2">
 			<header><jsp:include page="/mypageHeader.jsp"></jsp:include></header>
 			<div class="box3"></div>
 			<div class="box4">MyPage</div>
 		</div>
	</div>
	<!--  본문 -->
	<!--  사이드 바 -->
<div class="sub-container">
	<div class="vertical">
		<div class="sidebox">
			<div class="categoryname">
			마이페이지
			</div>
			<div class="profilebox">
				<span class="profilephoto">
				<a href=""><img class="profile" src='../../upload/${user.photo}_120x120.jpg'></a></span>
				<div class="profileinfo">
				<h4>${user.nick} 님</h4>
				<p>${user.email}</p></div>
    		<div class="profileupdate">
    		<a href="../app/mypage/user/update"><button class="btn">정보 수정</button></a></div>
   		</div>
   		<div class="category">
   	<ul>
   			<li><a href="../app/basket/list">장바구니</a></li>
    		<li><a href="../app/mypage/order/buyList">나의 주문내역</a></li>
    		<li><a href="../app/mypage/order/updateList">나의 취소/교환/환불내역</a></li>
   	</ul>
   	 <ul>
   			<li><a href="../app/myrecipe/list">나의 레시피</a></li>
    		<li><a href="../app/mypage/recipe/likeList">내가 좋아한 레시피</a></li>
    </ul>
    <ul>
    		<li><a href="../app/qna/list">QnA 게시판</a></li>
   			<li><a href="../app/mypage/commentList">나의 댓글</a></li>
    </ul>	
    <ul>
    		<li><a href="../app/mypage/following/list">나의 팔로잉</a></li>
    		<li><a href="../app/mypage/follower/list">내 팔로워</a></li>
   	</ul>
    </div>
    </div>
    <!-- 사이드 바 종료-->
    <!--  내용 -->
  <div class="main-content">
    
    
    
  </div>
    
    <!--  내용 종료 -->
    
    </div>
  </div>
    <jsp:include page="/mypageFooter.jsp"></jsp:include>
    </div>
</body>
</html>