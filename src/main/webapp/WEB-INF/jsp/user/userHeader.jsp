<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<title>user-header</title>
<script>
function change1(obj){
    obj.style.background = '#daf3aa';
    obj.style.color = '#faf7f0';
}
 
function change2(obj){
    obj.style.background = '#faf7f0';
    obj.style.color = '#daf3aa';
}
  </script>
</head>
<body>
	<div class="user-header">
		<div class="user-container">
			<div class="image-box">
				<img class="user-img" src='../../upload/${user.photo}_120x120.jpg'>
			</div>
			<div class="info-box">


				<div class="modal-table">
					<div class="modal-cell">
						<div class="box">
							<div class="element-label">
								<h2>${user.nick}</h2>
							</div>
							<div class="element-label">${user.email}</div>
						</div>
					</div>
				</div>


				<div class="element-label">
					<div class="modal-table">
						<div class="modal-cell">
							<div class="box">
								<c:if test="${followCheck == 1}">
									<button class="modal-cell-btn"
										onclick="location.href='unfollow?unfollowUserNo=${user.userNo}'">언팔로우</button>
								</c:if>
								<c:if test="${followCheck == 0}">
									<button class="modal-cell-btn"
										onclick="location.href='follow?followUserNo=${user.userNo}'">팔로우</button>
								</c:if>
							</div>
						</div>
					</div>
				</div>
			</div>
			<div class="recipe-box" 
			onmouseout="change2(this)" 
			onmouseover="change1(this)">
				<a href="recipeList?uNo=${user.userNo}">
					<div class="element-label">
						<div class="modal-table">
							<div class="modal-cell">
								<div class="box">레시피</div>
							</div>
						</div>
					</div>
					<div class="element-size">
						<div class="modal-table">
							<div class="modal-cell">
								<div class="box">${recipeSize}</div>
							</div>
						</div>
					</div>
				</a>
			</div>
			<div class="follower-box" onmouseout="change2(this)" onmouseover="change1(this)">
				<a href="followerList?uNo=${user.userNo}">
					<div class="element-label">
						<div class="modal-table">
							<div class="modal-cell">
								<div class="box">팔로워</div>
							</div>
						</div>
					</div>
					<div class="element-size">
						<div class="modal-table">
							<div class="modal-cell">
								<div class="box">${followerSize}</div>
							</div>
						</div>
					</div>
				</a>
			</div>
			<div class="following-box" onmouseout="change2(this)" onmouseover="change1(this)">
				<a href="followingList?uNo=${user.userNo}">
					<div class="element-label">
						<div class="modal-table">
							<div class="modal-cell">
								<div class="box">팔로잉</div>
							</div>
						</div>
					</div>
					<div class="element-size">
						<div class="modal-table">
							<div class="modal-cell">
								<div class="box">${followingSize}</div>
							</div>
						</div>
					</div>
				</a>
			</div>
		</div>
	</div>
</body>
</html>