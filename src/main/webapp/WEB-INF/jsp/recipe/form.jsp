<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<title>레시피 등록</title>

<!-- Bootstrap core CSS -->
<link href="<%=request.getContextPath()%>/css/recipeForm.css"
	rel="stylesheet">

<!-- Google Fonts -->
<link
  href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i|Raleway:300,300i,400,400i,500,500i,600,600i,700,700i|Poppins:300,300i,400,400i,500,500i,600,600i,700,700i"
  rel="stylesheet">

<!-- Vendor CSS Files -->
<link
  href="<%=request.getContextPath()%>/test/css/bootstrap.css"
  rel="stylesheet">
<link
  href="<%=request.getContextPath()%>/node_modules/bootstrap/dist/css/bootstrap-grid.css"
  rel="stylesheet">


<link rel="canonical"
  href="https://getbootstrap.com/docs/4.5/examples/album/">

<link
  href="<%=request.getContextPath()%>/test/css/bootstrap.min.css">

    

  <script src="<%=request.getContextPath()%>/node_modules/bootstrap/dist/js/bootstrap.bundle.min.js"></script>

  <script src="<%=request.getContextPath()%>/jquery/jquery.min.js"></script>
  <script src="<%=request.getContextPath()%>/js/bootstrap.bundle.min.js"></script>
  <script
    src="<%=request.getContextPath()%>/jquery.easing/jquery.easing.min.js"></script>
  <script
    src="<%=request.getContextPath()%>/waypoints/jquery.waypoints.min.js"></script>
  <script src="<%=request.getContextPath()%>/venobox/venobox.min.js"></script>
  <script
    src="<%=request.getContextPath()%>/owl.carousel/owl.carousel.min.js"></script>
  <script src="<%=request.getContextPath()%>/aos/aos.js"></script>
  <script src="<%=request.getContextPath()%>/php-email-form/validate.js"></script>

</head>

<body>
<jsp:include page="/header.jsp"></jsp:include>


	<section id="hero" class="align-items-center img-add">
		<div
			class="container text-center position-relative aos-init aos-animate"
			data-aos="fade-in" data-aos-delay="200">
			<h1>레시피 등록하기</h1>
			<br>
			<h2>나만의 특별한 레시피를 공유해 볼까요?</h2>
		</div>
	</section>

			<form action='add' method='post' enctype='multipart/form-data'>
			
			<input type="hidden" name="recipeNo" value="${recipe.recipeNo}"/>
			
		<section>
		<div class="container" style="margin-bottom: 100px; margin-top: 200px;">
      <div id="left">
           <a href="list" style="text-decoration: underline; padding-top: 50px;">레시피 목록으로 돌아가기</a>
          </div>
		    <h3 style="font-weight: bold; text-align: center; padding-top: 50px;">레시피 소개하기</h3>
		    <p style="text-align: center; padding-bottom: 50px; padding-top: 20px;">
		     소개하고자 하는 레시피의 <b>이름</b>, <b>사진</b> 그리고 <b>간단한 설명</b>을 
		      쓸 수 있습니다:) <br>
		      그리고 이와 알맞는 <b>카테고리</b>, <b>조리 시간</b>, <b>요리의 양</b>과 <b>난이도</b>를
		      선택해주세요!</p>
		    <div style="margin-inline: 80px;">
				<div class="input-group mb-3 " style="display: inline-flex; align-items: center;">
					<span class="input-group-text" id="basic-addon1" style=" display: inline-block; width: 57px;">제목</span> <input
						type="text" class="form-control" placeholder="제목을 입력하세요."
						aria-label="제목을 입력하세요." aria-describedby="basic-addon1"
						name='title'>
				</div>


				<div class="main-file-style" >
					<div class="input-group mb-3" style="display: inline-flex; align-items: center;">
						<input type="file" class="form-control" id="inputGroupFile02"
							name='recipe_photo'> <label class="input-group-text"
							for="inputGroupFile02">Upload</label>
					</div>

				</div>

				<div class="input-group">
					<textarea class="form-control" placeholder="레시피 등록 규정에 따라 입력해주세요 ! 주제와 상관없는 글은 제제 대상입니다 !" aria-label="With textarea"
						name='content' rows='10' cols='100'>
  </textarea>
				</div>
				</div>
				</div>
	</section>


	<section>
		<div class="container" style="margin-bottom: 100px; margin-top: 0px">
			<div class="flex-style">
				<div>
					<select class="form-select" aria-label="Default select example"
						name='categoryNo'>
						<option selected>카테고리</option>
						<c:forEach items="${categoryList}" var="category">
							<option value="${category.categoryNo}">${category.categoryName}</option>
						</c:forEach>
					</select>
				</div>
				<div class="input-sm">
					<div class="input-group mb-3" style="display: inline-flex; align-items: center;">
						<span class="input-group-text" style=" display: inline-block; width: 170px;">걸리는 시간</span> <input type="text"
							class="form-control" placeholder="15" name="min"
							aria-label="Username"> <span class="input-group-text">분</span>
					</div>
				</div>

				<div class="input-sm">
					<div class="input-group mb-3" style="display: inline-flex; align-items: center;">
						<span class="input-group-text" style="display: inline-block; width: 145px;">요리의 양</span> <input type="text"
							class="form-control" placeholder="1" aria-label="Server"
							name="serving"> <span class="input-group-text" style="isplay: inline-block; width: 75px;">인분</span>
					</div>
				</div>
				<div class="level-box" style="display: inline-flex; align-items: center;">
					<div class="form-check form-check-inline">
						<input class="form-check-input" type="radio" name='levelNo'
							id="inlineRadio1" value="3"> <label
							class="form-check-label" for="inlineRadio1">상</label>
					</div>
					<div class="form-check form-check-inline">
						<input class="form-check-input" type="radio" name='levelNo'
							id="inlineRadio2" value="2"> <label
							class="form-check-label" for="inlineRadio2">중</label>
					</div>
					<div class="form-check form-check-inline">
						<input class="form-check-input" type="radio" name='levelNo'
							id="inlineRadio2" value="1"> <label
							class="form-check-label" for="inlineRadio2">하</label>
					</div>
				</div>
			</div>
		</div>
	</section>

	<hr>

	<section>
		<div class="container" style="margin-bottom: 100px; margin-top: 100px;">
					<h3 style="font-weight: bold; text-align: center;">재료 입력하기</h3>
					<p style="text-align: center; padding-bottom: 50px; padding-top: 20px;">
			       레시피에 들어가는 <b>각 재료들</b>과 <b>무게 및 용량</b>을 입력해 주세요:)
			     </p>
			<div class="metaDiv">
				<div id="inputMetaContainer">
					<div class="inputmeta">
						<div class="meta-input-style">
							<div></div>
							<div class="meta-input-size">
								<div class="input-group mb-3 " style="display: inline-flex; align-items: center;">
									<span class="input-group-text" id="basic-addon1" style="display: inline-block; width: 70px;">재료</span> <input
										type="text" class="form-control" placeholder="양파"
										aria-label="재료입력" aria-describedby="basic-addon1"
										name='metaname'>
								</div>
							</div>
							<div class="meta-input-size">
								<div class="input-group mb-3 " style="display: inline-flex; align-items: center;">
									<span class="input-group-text" id="basic-addon1" style="display: inline-block; width: 70px;">계량</span> <input
										type="text" class="form-control" placeholder="1개"
										aria-label="재료입력" aria-describedby="basic-addon1"
										name='metaamount'>
								</div>
							</div>
							<div></div>
						</div>
					</div>
				</div>
				<div class="btn-center">
					<button id="btnAddMeta" type="button">재료 추가</button>
					<br>
				</div>
				<br>
			</div>
			</div>
			</section>

			<hr>
			
  <section>
  
  <div class="container" style="margin-bottom: 100px; margin-top: 100px;">
				<h3
					style="font-weight: bold; text-align: center;">재료
					순서 입력하기</h3>
				<br>
				<p
					style="text-align: center; padding-bottom: 50px; padding-top: 20px;">
					레시피를 순서대로 원하는 <b>사진</b>을 첨부하고 이와 관한 <b>설명</b>을 입력해 주세요:)
				</p>
				<div id="inputStepContainer" style="padding-left: 100px;">
				<div class="inputStep">
					<div class="step-input">
						<div class="section-title">
							<h2><span class="name">STEP 1</span></h2>
						</div>
						<div>
							<textarea name="step" rows='10' cols='80' style="margin-inline: 50px;"></textarea>
						</div>
						<div>
							<input type='file' name='step_photo'>
						</div>
					</div>
				</div>
			</div>
			<div class="btn-center">
				<button id="btnAddStep" type="button">단계 추가</button>
				<br>
			</div>
		</div>
	</section>

	<hr>

	<div class="btn-center" style="margin: 50px; padding-bottom: 100px;">
		<p>
			<button id="btnAddRecipe">레시피 등록</button>
		</p>
	</div>

	</form>
	
	<jsp:include page="../../../footer.jsp"></jsp:include>
	
	<script>
		var inputMetaContainer = document.querySelector("#inputMetaContainer");
		var inputMetaDiv = document.querySelector(".inputmeta");
		var inputStepContainer = document.querySelector("#inputStepContainer");
		var inputStepDiv = document.querySelector(".inputStep");
		var inputNameIndex = 1;
		btnAddMeta.onclick = function() {
			var e1 = inputMetaDiv.cloneNode(true);
			inputMetaContainer.appendChild(e1);
		};

		btnAddStep.onclick = function() {
			inputNameIndex++;
			var e2 = inputStepDiv.cloneNode(true);
			e2.querySelector(".name").innerHTML = "STEP " + inputNameIndex;
			inputStepContainer.appendChild(e2);
		};
	</script>

</body>

</html>