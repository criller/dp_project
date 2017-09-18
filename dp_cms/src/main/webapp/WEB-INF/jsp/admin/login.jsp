<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<!-- Meta, title, CSS, favicons, etc. -->
<meta charset="utf-8">
<title>数据平台-旗计智能</title>
<meta name="keywords"
	content="Bootstrap 3 Admin Dashboard Template Theme" />
<meta name="description"
	content="AdminDesigns - Bootstrap 3 Admin Dashboard Theme">
<meta name="author" content="AdminDesigns">
<meta name="viewport" content="width=device-width, initial-scale=1.0">

<!-- Font CSS (Via CDN) -->


<!-- Theme CSS -->
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/static/admin/assets/skin/default_skin/css/theme.css">

<!-- Admin Forms CSS -->
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/static/admin/assets/admin-tools/admin-forms/css/admin-forms.css">

<!-- Favicon -->
<link rel="shortcut icon"
	href="${pageContext.request.contextPath}/static/admin/assets/img/favicon.ico">

<!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
<!--[if lt IE 9]>
   <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
   <script src="https://oss.maxcdn.com/libs/respond.js/1.3.0/respond.min.js"></script>
   <![endif]-->
</head>

<body class="external-page sb-l-c sb-r-c">

	<!-- Start: Main -->
	<div id="main" class="animated fadeIn">

		<!-- Start: Content-Wrapper -->
		<section id="content_wrapper">

			<!-- begin canvas animation bg -->
			<div id="canvas-wrapper">
				<canvas id="demo-canvas"></canvas>
			</div>
			<!-- Begin: Content -->
			<section id="content">
				<div class="admin-form theme-info" id="login1">

					<div class="panel panel-info mt10 br-n">

						<!-- end .form-header section -->
						<form method="post"
							action="${pageContext.request.contextPath}/login_submit"
							id="contact">
							<div class="panel-body bg-light p30">
								<div class="row">
									<div class="col-sm-12 pr30">

										<div class="section">
											<label for="username"
												class="field-label text-muted fs18 mb10">用户名</label> <label
												for="username" class="field prepend-icon"> <input
												type="text" name="username" id="username" class="gui-input"
												placeholder="请输入用户名"> <label for="username"
												class="field-icon"> <i class="fa fa-user"></i></label>
											</label>
										</div>
										<!-- end section -->

										<div class="section">
											<label for="username"
												class="field-label text-muted fs18 mb10">密码</label> <label
												for="password" class="field prepend-icon"> <input
												type="password" name="password" id="password"
												class="gui-input" placeholder="请输入密码"> <label
												for="password" class="field-icon"> <i
													class="fa fa-lock"></i>
											</label>
											</label> <label class="field-label text-muted " style="color: red">${msg }</label>
										</div>
										<!-- end section -->
									</div>
								</div>
							</div>
							<!-- end .form-body section -->
							<div class="panel-footer clearfix p10 ph15">
								<button type="submit" class="button btn-primary mr10 pull-right">登陆</button>
							</div>
						</form>
					</div>
				</div>

			</section>
			<!-- End: Content -->

		</section>
		<!-- End: Content-Wrapper -->

	</div>
	<!-- End: Main -->

	<!-- BEGIN: PAGE SCRIPTS -->

	<!-- jQuery -->
	<script
		src="${pageContext.request.contextPath}/static/admin/vendor/jquery/jquery-1.11.1.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/static/admin/vendor/jquery/jquery_ui/jquery-ui.min.js"></script>

	<!-- CanvasBG Plugin(creates mousehover effect) -->
	<script
		src="${pageContext.request.contextPath}/static/admin/vendor/plugins/canvasbg/canvasbg.js"></script>

	<!-- Theme Javascript -->
	<script
		src="${pageContext.request.contextPath}/static/admin/assets/js/utility/utility.js"></script>
	<script
		src="${pageContext.request.contextPath}/static/admin/assets/js/demo/demo.js"></script>
	<script
		src="${pageContext.request.contextPath}/static/admin/assets/js/main.js"></script>

	<!-- Page Javascript -->
	<script type="text/javascript">
		jQuery(document).ready(function() {

			"use strict";

			// Init Theme Core      
			Core.init();

			// Init CanvasBG and pass target starting location
			CanvasBG.init({
				Loc : {
					x : window.innerWidth / 2,
					y : window.innerHeight / 3.3
				},
			});

		});
	</script>

	<!-- END: PAGE SCRIPTS -->

</body>

</html>