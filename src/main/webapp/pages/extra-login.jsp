<%@ taglib prefix="s" uri="/struts-tags" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" isELIgnored="false" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	
	<meta name="viewport" content="width=device-width, initial-scale=1.0" />
	<meta name="description" content="Xenon Boostrap Admin Panel" />
	<meta name="author" content="" />
	
	<title>Xenon - Login</title>

	<%--<link rel="stylesheet" href="http://fonts.useso.com/css?family=Arimo:400,700,400italic">--%>
	<link rel="stylesheet" href="${pageContext.request.contextPath}/css/fonts/linecons/css/linecons.css">
	<link rel="stylesheet" href="${pageContext.request.contextPath}/css/fonts/fontawesome/css/font-awesome.min.css">
	<link rel="stylesheet" href="${pageContext.request.contextPath}/css/bootstrap.css">
	<link rel="stylesheet" href="${pageContext.request.contextPath}/css/xenon-core.css">
	<link rel="stylesheet" href="${pageContext.request.contextPath}/css/xenon-forms.css">
	<link rel="stylesheet" href="${pageContext.request.contextPath}/css/xenon-components.css">
	<link rel="stylesheet" href="${pageContext.request.contextPath}/css/xenon-skins.css">
	<link rel="stylesheet" href="${pageContext.request.contextPath}/css/custom.css">

	<script src="${pageContext.request.contextPath}/js/jquery-1.11.1.min.js"></script>

	<!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->
	<!--[if lt IE 9]>
		<script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
		<script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
	<![endif]-->
	
	
</head>
<body class="page-body login-page">

	
	<div class="login-container">
	
		<div class="row">
		
			<div class="col-sm-6">

				<script type="text/javascript">
                    jQuery(document).ready(function($) {
                        // Reveal Login form
                        setTimeout(function () {
                            $(".fade-in-effect").addClass('in');
                        }, 1);
                    });
                    function test() {
                        if ($("#username").val() == "") {
                            $("#span1").text('用户名不能为空').css('color', '#979898').css('margin-left', '260px').css('margin-top', '-36px').css('display', 'block');
                            $("#username").blur();
                            return false;
                        }
                        if ($("#password").val() == "") {
                            $("#span2").text('密码不能为空').css('color', '#979898').css('margin-left', '260px').css('margin-top', '-36px').css('display', 'block');
                            $("#password").blur();
                            return false;
                        }
                    }
				</script>
				
				<!-- Errors container -->
				<div class="errors-container">
				</div>
				<div style="color:#979898" id="message">
					<s:actionerror/>
					${errorMessage}
				</div>

				<!-- Add class "fade-in-effect" for login form effect -->
				<form method="post"  id="login" action="userAction_doLogin" class="login-form fade-in-effect" onsubmit="return test()">
					
					<div class="login-header">
						<a href="dashboard-1.html" class="logo">
							<img src="${pageContext.request.contextPath}/images/logo@2x.png" alt="" width="80" />
							<span>log in</span>
						</a>
						<div>
							<s:if test="#parameters.msg[0]=='success'">
								<p style="color:#979898">更改信息成功!</p>
							</s:if>
							<s:elseif test="#parameters.msg[0]=='error'">
								<p style="color:#979898">更改信息失败!</p>
							</s:elseif>
						</div>
						<p>亲爱的用户,登录进入管理系统!</p>
					</div>

					<div class="form-group">
						<label class="control-label" for="username">用户名<span id="span1" style="display: none" onfocus="javascript:$('#message').html('');"></span></label>
						<input type="text" class="form-control input-dark" name="user.uname" id="username" autocomplete="off" />
					</div>

					<div class="form-group">
						<label class="control-label" for="password">密码<span id="span2" style="display: none"></span></label>
						<input type="password" class="form-control input-dark" name="user.upwd" id="password" autocomplete="off" />
					</div>
					<div class="form-group">
					<input type="submit" class="form-control input-dark" style="background-color: #313334;color:#979898" value="登录"/>
					</div>
					<div class="login-footer">
						<a href="#">忘记你的密码?</a>
						
						<%--<div class="info-links">
							<param >还没有账号?</param> -
							<a href="${pageContext.request.contextPath}/pages/user-registration.jsp">用户注册</a>
						</div>--%>
						
					</div>

				</form>

			</div>
			
		</div>
		
	</div>



	<!-- Bottom Scripts -->
	<script src="${pageContext.request.contextPath}/js/bootstrap.min.js"></script>
	<script src="${pageContext.request.contextPath}/js/TweenMax.min.js"></script>
	<script src="${pageContext.request.contextPath}/js/resizeable.js"></script>
	<script src="${pageContext.request.contextPath}/js/joinable.js"></script>
	<script src="${pageContext.request.contextPath}/js/xenon-api.js"></script>
	<script src="${pageContext.request.contextPath}/js/xenon-toggles.js"></script>
	<script src="${pageContext.request.contextPath}/js/jquery-validate/jquery.validate.min.js"></script>
	<script src="${pageContext.request.contextPath}/js/toastr/toastr.min.js"></script>


	<!-- JavaScripts initializations and stuff -->
	<script src="${pageContext.request.contextPath}/js/xenon-custom.js"></script>

</body>
</html>