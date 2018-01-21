<%@ page language="java" contentType="text/html; charset=UTF-8" isELIgnored="false" pageEncoding="UTF-8" %>
<%@ taglib prefix="s" uri="/struts-tags" %>
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
                    function test(){
                        if($("#username").val()=="") {
                            $("#span1").text('用户名不能为空').css('color','#979898').css('margin-left','260px').css('margin-top','-36px').css('display','block');
                            return false;
                        }
                        if(!$("#username").val()==""){
                            var str_name = document.getElementById("username").value;
                            var patt1= /^[0-9a-zA-Z]{6,20}$/;
                            if(!patt1.test(str_name)){
                                alert("用户名格式错误！");
                                return false;
                            }
						}
                        if($("#password").val()==""){
                            $("#span2").text('密码不能为空').css('color','#979898').css('margin-left','260px').css('margin-top','-36px').css('display','block');
                            return false;
                        }
                        if(!$("#password").val()==""){
                            var str_pwd = document.getElementById("password").value;
                            var patt2= /^[a-zA-Z]\w{5,17}$/;
                            if(!patt2.test(str_pwd)){
                                alert("密码格式错误！");
                                return false;
                            }
                        }
                        if($("#phone").val()==""){
                            $("#span3").text('电话不能为空').css('color','#979898').css('margin-left','260px').css('margin-top','-36px').css('display','block');
                            return false;
                        }
                        if(!$("#phone").val()==""){
                            var str_phone = document.getElementById("phone").value;
                            var patt3= /^(13[0-9]{9})|(15[89][0-9]{8})|(18[0-7]{9})$/;
                            if(!patt3.test(str_phone)){
                                alert("电话格式错误！");
                                return false;
                            }
                        }
                        if($("#email").val()=="") {
                            $("#span4").text('邮箱不能为空').css('color','#979898').css('margin-left','260px').css('margin-top','-36px').css('display','block');
                            return false;
                        }
                    if(!$("#email").val()==""){
                        var str_email = document.getElementById("email").value;
                        var patt4= /^([A-Za-z0-9_\-\.])+\@([A-Za-z0-9_\-\.])+\.([A-Za-z]{2,4})$/;
                        if(!patt4.test(str_email)){
                            alert("邮箱格式错误！");
                            return false;
                        }
                    }
                    if($("#uremark").val()==""){
                        $("#span5").text('备注不能为空').css('color','#979898').css('margin-left','260px').css('margin-top','-36px').css('display','block');
                        return false;
					}
                }
				</script>

				<!-- Add class "fade-in-effect" for login form effect -->
				<form method="post"  id="login" action="userAction_updateUsers" class="login-form fade-in-effect" enctype="multipart/form-data" onsubmit="return test()">
					<div class="login-header">
						<a href="dashboard-1.html" class="logo">
							<img src="${pageContext.request.contextPath}/images/logo@2x.png" alt="" width="80" />
							<span>user registration</span>
						</a>
						<p>更改用户注册</p>
					</div>
					<input type="hidden" name="user.uno"/>
					<div class="form-group">
						<label class="control-label" name="user.uname">用户名<span id="span1" style="display: none"></span></label>
						<s:textfield name="user.uname" class="form-control input-dark" id="username" autocomplete="off"/><br/>
					</div>

					<div class="form-group">
						<label class="control-label" name="user.upwd">密码<span id="span2" style="display: none"></span></label>
						<s:textfield name="user.upwd" class="form-control input-dark" id="password" autocomplete="off"/><br/>
					</div>

					<div class="form-group">
						<label class="control-label" name="user.uphone">电话<span id="span3" style="display: none"></span></label>
						<s:textfield name="user.uphone" class="form-control input-dark" id="phone" autocomplete="off"/><br/>
					</div>

					<div class="form-group">
						<label class="control-label" name="user.uemail">邮箱<span id="span4" style="display: none"></span></label>
						<s:textfield name="user.uemail" class="form-control input-dark" id="email" autocomplete="off"/><br/>
					</div>

					<label class="control-label" name="user.uemail" style="color: #979898;">用户类型</label>
					<s:radio list="#{'1':'研发人员','2':'业务人员','3':'管理人员'}" name="user.utype" style="color:#979898"/><br/>
					<label class="control-label" name="uploadImage" style="margin-top: 0px">图像</label>
					<img alt="" src="${user.uploadImage }" width="30" height="30"><br/>
					<s:hidden name="user.uploadImage"/>
					<s:file name="user.uploadImage"/><br/>

					<div class="form-group">
						<label class="control-label" name="user.uremark">备注<span id="span5" style="display: none"></span></label>
						<s:textfield name="user.uremark" class="form-control input-dark" id="uremark" autocomplete="off"/><br/>
					</div>
					<div class="form-group">
						<input type="submit" class="form-control input-dark" style="background-color: #313334;color:#979898" value="修改用户信息"/>
					</div>
					<div class="form-group">
						<a href="${pageContext.request.contextPath}/pages/extra-login.jsp" class="form-control input-dark" style="background-color: #313334;color:#979898;text-align:center">立即登录</a>
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