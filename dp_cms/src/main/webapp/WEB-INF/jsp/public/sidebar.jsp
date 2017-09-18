<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<jsp:include page="../public/header.jsp"></jsp:include>
<aside id="sidebar_left" class="nano nano-light affix">

	<!-- Start: Sidebar Left Content -->
	<div class="sidebar-left-content nano-content">
		<!-- Start: Sidebar Menu -->
		<ul class="nav sidebar-menu">
			<li><a href="${pageContext.request.contextPath}/index/list"> <span
					class="glyphicon glyphicon-home"></span> <span
					class="sidebar-title">仪表盘</span>
			</a></li>
			<li class="active"><a class="accordion-toggle" href="#"> <span
					class="glyphicon glyphicon-fire"></span> <span
					class="sidebar-title">数据概览</span> <span class="caret"></span>
			</a>
				<ul class="nav sub-nav">
					<li class="active"><a href="${pageContext.request.contextPath}/analytics/index"> <span
							class="glyphicon glyphicon-book"></span>元数据
					</a></li>
					<li><a href="${pageContext.request.contextPath}/uv/list"> <span
							class="glyphicon glyphicon-modal-window"></span>UV分析
					</a></li>
					<li><a href="${pageContext.request.contextPath}/pv/list"> <span
							class="glyphicon glyphicon-equalizer"></span>PV分析
					</a></li>
					<li><a href="admin_plugins-dock.html"> <span
							class="glyphicon glyphicon-equalizer"></span>渠道分析
					</a></li>
					<li><a href="admin_plugins-dock.html"> <span
							class="glyphicon glyphicon-equalizer"></span>运营分析
					</a></li>
					<li><a href="admin_plugins-dock.html"> <span
							class="glyphicon glyphicon-equalizer"></span>产品分析
					</a></li>
				</ul></li>
			<li><a class="accordion-toggle" href="#"> <span
					class="glyphicon glyphicon-check"></span> <span
					class="sidebar-title">用户行为分析</span> <span class="caret"></span>
			</a>
				<ul class="nav sub-nav">
					<li><a href="admin_forms-elements.html"> <span
							class="glyphicon glyphicon-shopping-cart"></span>事件分析
					</a></li>
					<li><a href="admin_forms-widgets.html"> <span
							class="glyphicon glyphicon-calendar"></span>漏斗分析
					</a></li>
					<li><a href="admin_forms-layouts.html"> <span
							class="fa fa-desktop"></span>留存分析
					</a></li>
					<li><a href="admin_forms-wizard.html"> <span
							class="fa fa-clipboard"></span>分布分析
					</a></li>
					<li><a href="admin_forms-validation.html"> <span
							class="glyphicon glyphicon-check"></span>用户路径
					</a></li>
					<li><a href="admin_forms-validation.html"> <span
							class="glyphicon glyphicon-check"></span>点击分析
					</a></li>
				</ul></li>

			<li><a class="accordion-toggle" href="#"> <span
					class="fa fa-diamond"></span> <span class="sidebar-title">权限管理</span>
					<span class="caret"></span>
			</a>
				<ul class="nav sub-nav">
					<li><a href="widgets_tile.html"> <span class="fa fa-cube"></span>角色(基础权限)
					</a></li>
					<li><a href="widgets_panel.html"> <span
							class="fa fa-desktop"></span>按钮权限
					</a></li>
				</ul></li>
			<li><a class="accordion-toggle" href="#"> <span
					class="fa fa-diamond"></span> <span class="sidebar-title">按钮管理</span>
			</a></li>
			<li><a class="accordion-toggle" href="#"> <span
					class="fa fa-diamond"></span> <span class="sidebar-title">菜单管理</span>
			</a></li>
			<li><a class="accordion-toggle" href="#"> <span
					class="fa fa-diamond"></span> <span class="sidebar-title">用户管理</span>
			</a></li>
		</ul>
		<!-- End: Sidebar Menu -->

		<!-- Start: Sidebar Collapse Button -->
		<div class="sidebar-toggle-mini">
			<a href="#"> <span class="fa fa-sign-out"></span>
			</a>
		</div>
		<!-- End: Sidebar Collapse Button -->

	</div>
	<!-- End: Sidebar Left Content -->

</aside>
