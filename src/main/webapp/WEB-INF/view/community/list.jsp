<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="description" content="">
<meta name="author" content="">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<!-- nav css -->
<link href="<c:url value="/static/css/bootstrap.min.css"/>" rel="stylesheet">
<link href="<c:url value="/static/css/nav.css"/>" rel="stylesheet">
<link rel="stylesheet" type="text/css" href="<c:url value="/static/css/footer.css"/>" />	
<!-- /nav css -->
<!-- footer css -->
<link href="//maxcdn.bootstrapcdn.com/font-awesome/4.2.0/css/font-awesome.min.css" rel="stylesheet">
<link rel="stylesheet" type="text/css" href="<c:url value="/static/css/footer.css"/>" />	
<!-- /footer css -->

<title>게시판 Page</title>
<script src="<c:url value="/static/js/jquery-3.3.1.min.js"/>"type="text/javascript"></script>
<script type="text/javascript">
	$().ready(function() {

		$("#joinBtn").click(function() {
			location.href = "<c:url value="/join"/>"
		});		
		
		$("#insertbtn").click(function() {
			location.href = "<c:url value="/write"/>"
		});
		
		$("#mypagetbtn").click(function() {
			location.href = "<c:url value="/mypage"/>"
		});
		
		$("#loginBtn").click(function() {

			$("#loginForm").attr({
				"action" : "<c:url value="/login"/>",
				"method" : "post"
			}).submit();
		});

		$('#logoutBtn').click(function() { 
			var result = confirm('로그아웃 하시겠습니까?'); 
			if(result) { //yes 
				location.href = "<c:url value="/logout"/>"
			}
		});
		
	});
</script>
</head>
<style>

footer{
     background-color: #333333;
     padding:70px 0px;
}	       

footer ul li{
    padding:5px 0px;
}

.adress span , .contact span , .social span{
   color: #FFF; 
   font-weight: 800; 
   padding-bottom: 10px; 
   margin-bottom: 20px;
   display: block;
   text-transform: uppercase;
   font-size: 20px;
   letter-spacing: 3px;
}
 
.adress li p , .contact li a , .social li a{
    color:#FFF;
    letter-spacing: 2px;
    text-decoration:none;
    font-size:15px;
}

.social li{
    float:left;
}

.adress , .contact , .social {
    list-style: none;
}

.fa{
    color:#9c9c9c;
    margin-right: 15px;
    font-size:14px;
}

</style>

<body>
	<jsp:include page="/WEB-INF/view/template/menu.jsp"/>
    
    
 	<div class="container">

		<table class="table table-striped">
			<thead>
				<tr>
					<th>번호</th>
					<th>제목</th>
					<th>작성자</th>
					<th>날짜</th>
					<th>조회수/좋아요</th>
				</tr>
			</thead>
			<c:forEach items="${pageExplorer.list}" var="communityList">
				<tbody>
					<tr>
						<td>${communityList.communityId}</td>
						<td><a
							href="<c:url value="/viewCount/${communityList.communityId}"/> ">${communityList.title}</a></td>
						<td>${communityList.memberVO.nickname}</td>
						<td>${communityList.writeDate}</td>
						<td>${communityList.viewCount}/${communityList.likeCount}</td>
					</tr>
				</tbody>
			</c:forEach>
		</table>

		<hr />
	<form id ="searchForm" onsubmit="movePage('0')">
		<div class="text-center">
			<ul class="pagination">
				<li><a href="#">&laquo;</a></li>
				<li>${pageExplorer.make()}</li>
				<li><a href="#">&raquo;</a></li>
			</ul>
		</div>
		</form>
		<c:if test="${empty sessionScope.__USER__}">
			<div class="text-center">
				<a class="btn btn-default" data-toggle="modal"
					data-target="#myModal">로그인</a>
			</div>
		</c:if>

		<c:if test="${not empty sessionScope.__USER__}">
			<div class="text-center">
				<a class="btn btn-default" id="logoutBtn">로그아웃</a>
			</div>
		</c:if>

		<hr />
	</div>
	
	<jsp:include page="/WEB-INF/view/template/footer.jsp"/>
	
	
	<!-- Modal -->
	<div class="container">
		<div class="modal fade" id="myModal" role="dialog">
			<div class="modal-dialog">

				<!-- Modal content-->
				<div class="modal-content">
					<div class="modal-header">
						<button type="button" class="close" data-dismiss="modal">&times;</button>
						<h4 class="modal-title">Login</h4>
					</div>
					<div class="modal-body">
						<div class="jumbotron" style="padding-top: 20px;">
							<form:form modelAttribute="loginForm">
								<h3 style="text-align: center;">로그인 화면</h3>
								<div class="form-group">
									<input type="text" class="form-control" placeholder="아이디"
										name="email" maxlength="20" />
								</div>
								<div class="form-group">
									<input type="password" class="form-control" placeholder="비밀번호"
										name="password" maxlength="20" />
								</div>
								<div class="form-group">
									<input type="submit" class="btn btn-primary form-control"
										value="로그인" id="loginBtn" />
								</div>
								<input type="button" id="joinBtn"
									class="btn btn-primary form-control" value="회원가입" />
							</form:form>
						</div>
					</div>
					<div class="modal-footer">
						<button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
					</div>
				</div>
				
				<!-- /Modal content-->
			</div>
		</div>
	</div>
	<!-- /Modal -->

</body>

</html>