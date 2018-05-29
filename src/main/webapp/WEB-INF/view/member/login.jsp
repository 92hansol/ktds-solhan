<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
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

<script src="<c:url value="/static/js/jquery-3.3.1.min.js"/>" type="text/javascript"></script>
<script type="text/javascript">
	$().ready(function() {

		$("#joinBtn").click(function() {
			location.href = "<c:url value="/join"/>"
		});
		
		$("#loginBtn").click(function() {

			$("#loginForm").attr({
				"action" : "<c:url value="/login"/>",
				"method" : "post"
			}).submit();
		});
	});
</script>
<title>Insert title here</title>
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
	
	<!-- login -->
    <div class="container" style="margin-top: 100px;" >
		 <div class="col-xs-12 col-sm-8 col-sm-offset-2 col-md-6 col-md-offset-3 col-lg-6 col-lg-offset-3">
		 	<div class="login-panel panel panel-default">
		 	<div class="panel-heading"><h3 class="panel-title"><strong>Log In </strong></h3></div>
		 	
		  	<div class="panel-body">
		    	<form:form modelAttribute="loginForm" class="form-signin">
		    	
		  		<div class="form-group">
		    		<label for="exampleInputEmail1">Email</label>
		    		<input type="email" class="form-control" id="email" name="email" placeholder="Enter email">
		  		</div>
		  		
		  		<div class="form-group">
		    		<label for="exampleInputPassword1">Password</label>
		    		<input type="password" class="form-control" id="password" name="password" placeholder="Password">
		  		</div>
		  		
		  		<button type="button" id="loginBtn" class="btn btn-sm btn-default">login</button>
		  		<button type="button" id="joinBtn"class="btn btn-sm btn-default">Join</button>
		  		
				</form:form>
		  	</div>
		</div>
	</div>
 </div>
 <!-- 디자인적 공간 확보위한,,margin-->
 <div style="margin-top: 100px;"> </div>
 
 <!-- /login -->

	<!-- footer -->
	<jsp:include page="/WEB-INF/view/template/footer.jsp"/>
	<!-- /footer -->

</body>
</html>