<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">


<!-- nav css -->
<link href="<c:url value="/static/css/bootstrap.min.css"/>" rel="stylesheet">
<link href="<c:url value="/static/css/nav.css"/>" rel="stylesheet">
<link rel="stylesheet" type="text/css" href="<c:url value="/static/css/footer.css"/>" />	
<!-- /nav css -->
<!-- footer css -->
<link href="//maxcdn.bootstrapcdn.com/font-awesome/4.2.0/css/font-awesome.min.css" rel="stylesheet">
<link rel="stylesheet" type="text/css" href="<c:url value="/static/css/footer.css"/>" />	
<!-- /footer css -->


<script src="<c:url value="/static/js/jquery-3.3.1.min.js"/>" type="text/javascript"></script>
<title>My Page</title>
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

	<!-- nav -->
	<jsp:include page="/WEB-INF/view/template/menu.jsp"/>
	<!-- /nav -->
	
	<!-- section: blog-->
	<section id="blog" class="section">
		<div class="container">
			<h4>Our Blog</h4>
		
		</div>
	</section>
	<!-- end spacer section -->
	
	<br/>
	<br/>
	
	
	<!-- body상단 영역 -->
	<!-- body상단 1번 영역 -->
	<div class="container">
		<div class="col-lg-4">
			<div class="jumbotron" style="padding-top: 20px;">
				<form>
					<h3 style="text-align: center">MY PAGE</h3>

					<div>아이디 :</div>
					<div class="form-group">
						<input type="text" class="form-control" placeholder="아이디" name="userId" maxlength="20" />
					</div>
					<div>닉네임 :</div>
					<div class="form-group">
						<input type="text" class="form-control" placeholder="닉네임" name="userNickname" maxlength="20" />
					</div>
				</form>
			</div>
		</div>
		<!-- /body상단 1번 영역 -->
		
		<!-- body상단 2번 영역 -->
		<div class="col-lg-4">
			<div class="jumbotron" style="padding-top: 20px;">
				<form>
					<h3 style="text-align: center">개인 등급</h3>

					<div>게시물 수  :</div>
					<div class="form-group">
						<input type="text" class="form-control" placeholder="아이디" name="userId" maxlength="20" />
					</div>
					<div>총 점수 :</div>
					<div class="form-group">
						<input type="text" class="form-control" placeholder="점수" name="likePoint" maxlength="20" />
					</div>
				</form>
			</div>
		</div>
		<!-- /body상단 2번 영역 -->
		
		<!-- body상단 3번 영역 -->
		<div class="col-lg-4">
			<div class="jumbotron" style="padding-top: 20px;">
				<form>
					<h3 style="text-align: center">MY PAGE</h3>

					<div>아이디 :</div>
					<div class="form-group">
						<input type="text" class="form-control" placeholder="아이디" name="userId" maxlength="20" />
					</div>
					<div>닉네임 :</div>
					<div class="form-group">
						<input type="text" class="form-control" placeholder="닉네임" name="userNickname" maxlength="20" />
					</div>
				</form>
			</div>
		</div>
		<!-- /body상단 3번 영역 -->
	</div>
	<!-- /body상단 영역 -->
	
	<!-- body하단 영역 -->
	<div class="container">
		<table class="table table-striped">
			<thead>
				<tr>
					<th>번호</th>
					<th>제목</th>
					<th>작성자</th>
					<th>날짜</th>
					<th>조회수</th>
				</tr>
			</thead>
			<tbody>
				<tr>
					<td>165</td>
					<td>수정중</td>
					<td>길라임</td>
					<td>2016.12.02</td>
					<td>2</td>
				</tr>
				<tr>
					<td>165</td>
					<td>수정중</td>
					<td>최선일</td>
					<td>2016.12.02</td>
					<td>2</td>
				</tr>
				<tr>
					<td>165</td>
					<td>수정중</td>
					<td>최선일</td>
					<td>2016.12.02</td>
					<td>2</td>
				</tr>
				<tr>
					<td>165</td>
					<td>수정중</td>
					<td>최선일</td>
					<td>2016.12.02</td>
					<td>2</td>
				</tr>
				<tr>
					<td>165</td>
					<td>수정중</td>
					<td>최선일</td>
					<td>2016.12.02</td>
					<td>2</td>
				</tr>
			</tbody>
		</table>
		
		
		<hr />
		<!-- body하 버튼 영역 -->
		<div class="text-center">
			<a class="btn btn-default">회원탈퇴</a>
			<a class="btn btn-default" href="<c:url value="list"/>">>뒤로가기</a>
		</div>
		<!-- /body하 버튼 영역 -->
		
		<hr />
		
	</div>
	<!-- /body하단 영역 -->




	<!-- footer -->
	<jsp:include page="/WEB-INF/view/template/footer.jsp"/>
	<!-- /footer -->
	
</body>
</html>