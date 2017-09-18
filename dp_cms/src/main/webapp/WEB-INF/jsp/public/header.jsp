<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<jsp:include page="../public/frame.jsp"></jsp:include>
<!-- Start: Header -->
<header class="navbar navbar-fixed-top navbar-shadow">
	<div class="navbar-branding">
		<a class="navbar-brand" href="${pageContext.request.contextPath}/index/list"> <b>${company_name }</b>|${system_name}
		</a> <span id="toggle_sidemenu_l" class="ad ad-lines"></span>
	</div>
	<ul class="nav navbar-nav navbar-right">
		<li class="dropdown menu-merge">
		<a href="#"
			class="dropdown-toggle fw600 p15" data-toggle="dropdown">
				<span class="hidden-xs pl15">${sessionScope.user}</span> <span
				class="caret caret-tp hidden-xs"></span>
		</a>
			<ul class="dropdown-menu list-group dropdown-persist w250"
				role="menu">
				<li class="list-group-item"><a href="#"
					class="animated animated-short fadeInUp"> <span
						class="fa fa-bell"></span> 个人资料
				</a></li>
				<li class="list-group-item"><a href="#"
					class="animated animated-short fadeInUp"> <span
						class="fa fa-gear"></span> 设置
				</a></li>
				<li class="dropdown-footer"><a href="${pageContext.request.contextPath}/logout" class=""> <span
						class="fa fa-power-off pr5"></span> 退出登录
				</a></li>
			</ul></li>
	</ul>
</header>
<!-- End: Header -->
