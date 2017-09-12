<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib uri="http://tag.macroflag.com/jsp/jstl/date" prefix="date"%>
<jsp:include page="../public/frame.jsp"></jsp:include>
<jsp:include page="../public/header.jsp"></jsp:include>
<!-- Start: Sidebar -->
<jsp:include page="../public/sidebar.jsp"></jsp:include>
<!-- End: Sidebar Left -->
<!-- Start: Content-Wrapper -->
<section id="content_wrapper">
	<!-- Begin: Content -->
	<section id="content" class="table-layout animated fadeIn">
		<!-- begin: .tray-center -->
		<div class="tray tray-center">
			<div class="panel">
				<div class="panel-heading"></div>
				<div class="panel-body pn">
					<div class="table-responsive">
						<table class="table table-striped table-bordered table-hover ">
							<thead>
								<tr>
									<th>ID</th>
									<th>用户唯一识别码</th>
									<th>事件发生的时间</th>
									<th>域名</th>
									<th>访问页面地址</th>
									<th>屏幕高度</th>
									<th>屏幕宽度</th>
									<th>操作系统</th>
									<th>浏览器版本</th>
									<th>事件名称</th>
									<th>元素路径</th>
								</tr>
							</thead>
							<tbody>
								<c:forEach items="${metadas}" var="mdm">
									<tr>
										<td>${mdm.id}</td>
										<td>${mdm.dpaUuid}</td>
										<td>
											<date:long2date value="${mdm.time}"></date:long2date>
										</td>
										<td>${mdm.domain }</td>
										<td>${mdm.url }</td>
										<td>${mdm.screenHeight }</td>
										<td>${mdm.screenWidth }</td>
										<td>${mdm.os }</td>
										<td>${mdm.browserVersion }</td>
										<td>${mdm.eventName }</td>
										<td>${mdm.eXPath }</td>
									</tr>
								</c:forEach>
							</tbody>
						</table>
					</div>
				</div>
			</div>
		</div>
		<!-- end: .tray-center -->
	</section>
	<!-- End: Content -->
</section>
<!-- End: Content-Wrapper -->
<!-- BEGIN: PAGE SCRIPTS -->
<jsp:include page="../public/footer.jsp"></jsp:include>