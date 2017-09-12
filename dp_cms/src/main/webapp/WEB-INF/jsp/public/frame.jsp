<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
	 <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>

<head>
<meta charset="utf-8">
<title>数据平台-旗计智能</title>
<meta name="keywords"
	content="Bootstrap 3 Admin Dashboard Template Theme" />
<meta name="description"
	content="AdminDesigns - Bootstrap 3 Admin Dashboard Theme">
<meta name="author" content="AdminDesigns">
<meta name="viewport" content="width=device-width, initial-scale=1.0">

<!-- Font CSS (Via CDN) -->
<!--   <link rel='stylesheet' type='text/css' href='http://fonts.useso.com/css?family=Open+Sans:300,400,600,700'> -->

<!-- FullCalendar Plugin CSS -->
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/static/admin/vendor/plugins/fullcalendar/fullcalendar.min.css">

<!-- Theme CSS -->
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/static/admin/assets/skin/default_skin/css/theme.css">

<!-- Admin Forms CSS -->
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/static/admin/assets/admin-tools/admin-forms/css/admin-forms.min.css">

<!-- Favicon -->
<link rel="shortcut icon"
	href="${pageContext.request.contextPath}/static/admin/assets/img/favicon.ico">

<!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
<!--[if lt IE 9]>
  <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
  <script src="https://oss.maxcdn.com/libs/respond.js/1.3.0/respond.min.js"></script>
<![endif]-->

</head>

<body class="dashboard-page">

	<!-- Start: Theme Preview Pane -->
	<div id="skin-toolbox">
		<div class="panel">
			<div class="panel-heading">
				<span class="panel-icon"> <i class="fa fa-gear text-primary"></i>
				</span> <span class="panel-title">主题选择</span>
			</div>
			<div class="panel-body pn">
				<ul class="nav nav-list nav-list-sm pl15 pt10" role="tablist">
					<li class="active"><a href="#toolbox-header" role="tab"
						data-toggle="tab">Navbar</a></li>
					<li><a href="#toolbox-sidebar" role="tab" data-toggle="tab">Sidebar</a>
					</li>
					<li><a href="#toolbox-settings" role="tab" data-toggle="tab">Misc</a>
					</li>
				</ul>
				<div class="tab-content p20 ptn pb15">
					<div role="tabpanel" class="tab-pane active" id="toolbox-header">
						<form id="toolbox-header-skin">
							<h4 class="mv20">Header Skins</h4>
							<div class="skin-toolbox-swatches">
								<div class="checkbox-custom checkbox-disabled fill mb5">
									<input type="radio" name="headerSkin" id="headerSkin8" checked
										value=""> <label for="headerSkin8">Light</label>
								</div>
								<div class="checkbox-custom fill checkbox-primary mb5">
									<input type="radio" name="headerSkin" id="headerSkin1"
										value="bg-primary"> <label for="headerSkin1">Primary</label>
								</div>
								<div class="checkbox-custom fill checkbox-info mb5">
									<input type="radio" name="headerSkin" id="headerSkin3"
										value="bg-info"> <label for="headerSkin3">Info</label>
								</div>
								<div class="checkbox-custom fill checkbox-warning mb5">
									<input type="radio" name="headerSkin" id="headerSkin4"
										value="bg-warning"> <label for="headerSkin4">Warning</label>
								</div>
								<div class="checkbox-custom fill checkbox-danger mb5">
									<input type="radio" name="headerSkin" id="headerSkin5"
										value="bg-danger"> <label for="headerSkin5">Danger</label>
								</div>
								<div class="checkbox-custom fill checkbox-alert mb5">
									<input type="radio" name="headerSkin" id="headerSkin6"
										value="bg-alert"> <label for="headerSkin6">Alert</label>
								</div>
								<div class="checkbox-custom fill checkbox-system mb5">
									<input type="radio" name="headerSkin" id="headerSkin7"
										value="bg-system"> <label for="headerSkin7">System</label>
								</div>
								<div class="checkbox-custom fill checkbox-success mb5">
									<input type="radio" name="headerSkin" id="headerSkin2"
										value="bg-success"> <label for="headerSkin2">Success</label>
								</div>
								<div class="checkbox-custom fill mb5">
									<input type="radio" name="headerSkin" id="headerSkin9"
										value="bg-dark"> <label for="headerSkin9">Dark</label>
								</div>
							</div>
						</form>
					</div>
					<div role="tabpanel" class="tab-pane" id="toolbox-sidebar">
						<form id="toolbox-sidebar-skin">
							<h4 class="mv20">Sidebar Skins</h4>
							<div class="skin-toolbox-swatches">
								<div class="checkbox-custom fill mb5">
									<input type="radio" name="sidebarSkin" checked
										id="sidebarSkin3" value=""> <label for="sidebarSkin3">Dark</label>
								</div>
								<div class="checkbox-custom fill checkbox-disabled mb5">
									<input type="radio" name="sidebarSkin" id="sidebarSkin1"
										value="sidebar-light"> <label for="sidebarSkin1">Light</label>
								</div>
								<div class="checkbox-custom fill checkbox-light mb5">
									<input type="radio" name="sidebarSkin" id="sidebarSkin2"
										value="sidebar-light light"> <label for="sidebarSkin2">Lighter</label>
								</div>
							</div>
						</form>
					</div>
					<div role="tabpanel" class="tab-pane" id="toolbox-settings">
						<form id="toolbox-settings-misc">
							<h4 class="mv20 mtn">Layout Options</h4>
							<div class="form-group">
								<div class="checkbox-custom fill mb5">
									<input type="checkbox" checked="" id="header-option"> <label
										for="header-option">Fixed Header</label>
								</div>
							</div>
							<div class="form-group">
								<div class="checkbox-custom fill mb5">
									<input type="checkbox" checked="" id="sidebar-option">
									<label for="sidebar-option">Fixed Sidebar</label>
								</div>
							</div>
							<div class="form-group">
								<div class="checkbox-custom fill mb5">
									<input type="checkbox" id="breadcrumb-option"> <label
										for="breadcrumb-option">Fixed Breadcrumbs</label>
								</div>
							</div>
							<div class="form-group">
								<div class="checkbox-custom fill mb5">
									<input type="checkbox" id="breadcrumb-hidden"> <label
										for="breadcrumb-hidden">Hide Breadcrumbs</label>
								</div>
							</div>
							<h4 class="mv20">Layout Options</h4>
							<div class="form-group">
								<div class="radio-custom mb5">
									<input type="radio" id="fullwidth-option" checked
										name="layout-option"> <label for="fullwidth-option">Fullwidth
										Layout</label>
								</div>
							</div>
							<div class="form-group mb20">
								<div class="radio-custom radio-disabled mb5">
									<input type="radio" id="boxed-option" name="layout-option"
										disabled> <label for="boxed-option">Boxed
										Layout <b class="text-muted">(Coming Soon)</b>
									</label>
								</div>
							</div>
						</form>
					</div>
				</div>
				<div class="form-group mn br-t p15">
					<a href="#" id="clearLocalStorage"
						class="btn btn-primary btn-block pb10 pt10">Clear LocalStorage</a>
				</div>
			</div>
		</div>
	</div>
	<!-- End: Theme Preview Pane -->
	<!-- Start: Main -->
	<div id="main">