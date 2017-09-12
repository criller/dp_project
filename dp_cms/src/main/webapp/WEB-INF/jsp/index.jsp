<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<jsp:include page="public/frame.jsp"></jsp:include>
<jsp:include page="public/header.jsp"></jsp:include>
<!-- Start: Sidebar -->
<jsp:include page="public/sidebar.jsp"></jsp:include>
<!-- End: Sidebar Left -->
<!-- Start: Content-Wrapper -->
<section id="content_wrapper">
	<!-- Begin: Content -->
	<section id="content" class="table-layout animated fadeIn">
		<!-- begin: .tray-center -->
		<div class="tray tray-center">

			<!-- dashboard tiles -->
			<div class="row">
				<div class="col-sm-4 col-xl-3">
					<div class="panel panel-tile text-center br-a br-grey">
						<div class="panel-body">
							<h1 class="fs30 mt5 mbn">1,426</h1>
							<h6 class="text-system">NEW ORDERS</h6>
						</div>
						<div class="panel-footer br-t p12">
							<span class="fs11"> <i class="fa fa-arrow-up pr5"></i> 3%
								INCREASE <b>1W AGO</b>
							</span>
						</div>
					</div>
				</div>
				<div class="col-sm-4 col-xl-3">
					<div class="panel panel-tile text-center br-a br-grey">
						<div class="panel-body">
							<h1 class="fs30 mt5 mbn">63,262</h1>
							<h6 class="text-success">TOTAL SALES GROSS</h6>
						</div>
						<div class="panel-footer br-t p12">
							<span class="fs11"> <i class="fa fa-arrow-up pr5"></i>
								2.7% INCREASE <b>1W AGO</b>
							</span>
						</div>
					</div>
				</div>
				<div class="col-sm-4 col-xl-3">
					<div class="panel panel-tile text-center br-a br-grey">
						<div class="panel-body">
							<h1 class="fs30 mt5 mbn">248</h1>
							<h6 class="text-warning">PENDING SHIPMENTS</h6>
						</div>
						<div class="panel-footer br-t p12">
							<span class="fs11"> <i
								class="fa fa-arrow-up pr5 text-success"></i> 1% INCREASE <b>1W
									AGO</b>
							</span>
						</div>
					</div>
				</div>
				<div class="col-sm-3 col-xl-3 visible-xl">
					<div class="panel panel-tile text-center br-a br-grey">
						<div class="panel-body">
							<h1 class="fs30 mt5 mbn">6,718</h1>
							<h6 class="text-danger">UNIQUE VISITS</h6>
						</div>
						<div class="panel-footer br-t p12">
							<span class="fs11"> <i
								class="fa fa-arrow-down pr5 text-danger"></i> 6% DECREASE <b>1W
									AGO</b>
							</span>
						</div>
					</div>
				</div>
			</div>

			<div class="row hidden">
				<div class="col-sm-4 col-xl-3">
					<div class="panel panel-tile text-center br-a br-grey">
						<div class="panel-body">
							<h1 class="fs30 mt5 mbn">1,426</h1>
							<h6 class="text-system">NEW ORDERS</h6>
						</div>
						<div class="panel-footer br-t p12 hidden">
							<span class="fs11"> <i class="fa fa-arrow-up pr5"></i> 3%
								INCREASE <b>1W AGO</b>
							</span>
						</div>
					</div>
				</div>
				<div class="col-sm-4 col-xl-3">
					<div class="panel panel-tile text-center br-a br-grey">
						<div class="panel-body">
							<h1 class="fs30 mt5 mbn">63,262</h1>
							<h6 class="text-success">TOTAL SALES GROSS</h6>
						</div>
						<div class="panel-footer br-t p12 hidden">
							<span class="fs11"> <i class="fa fa-arrow-up pr5"></i>
								2.7% INCREASE <b>1W AGO</b>
							</span>
						</div>
					</div>
				</div>
				<div class="col-sm-4 col-xl-3">
					<div class="panel panel-tile text-center br-a br-grey">
						<div class="panel-body">
							<h1 class="fs30 mt5 mbn">248</h1>
							<h6 class="text-warning">PENDING SHIPMENTS</h6>
						</div>
						<div class="panel-footer br-t p12 hidden">
							<span class="fs11"> <i
								class="fa fa-arrow-up pr5 text-success"></i> 1% INCREASE <b>1W
									AGO</b>
							</span>
						</div>
					</div>
				</div>
				<div class="col-sm-3 col-xl-3 visible-xl">
					<div class="panel panel-tile text-center br-a br-grey">
						<div class="panel-body">
							<h1 class="fs30 mt5 mbn">6,718</h1>
							<h6 class="text-danger">UNIQUE VISITS</h6>
						</div>
						<div class="panel-footer br-t p12 hidden">
							<span class="fs11"> <i
								class="fa fa-arrow-down pr5 text-danger"></i> 6% DECREASE <b>1W
									AGO</b>
							</span>
						</div>
					</div>
				</div>
			</div>
			<!-- Admin-panels -->
			<div class="admin-panels fade-onload">

				<div class="row">

					<!-- Three Pane Widget -->
					<div class="col-md-12 admin-grid">

						<!-- dashboard activity -->
						<div class="panel sort-disable" id="p01" data-panel-title="false">
							<div class="panel-heading">
								<span class="panel-title hidden-xs hidden"> Recent
									Activity</span>
								<ul class="nav panel-tabs panel-tabs-left">
									<!-- Demo Note: all hrefs set to #tab1_1 -->
									<li class="active"><a href="#tab1_1" data-toggle="tab">
											User Activity</a></li>
									<li><a href="#tab1_1" class="hidden-xs" data-toggle="tab">
											Popular Items</a></li>
									<li><a href="#tab1_1" data-toggle="tab"> Conversions</a></li>
								</ul>
							</div>
							<div class="panel-body pn">

								<div class="tab-content">
									<div class="tab-pane active p15" id="tab1_1" role="tabpanel">
										<div class="row">

											<!-- Chart Column -->
											<div class="col-md-8 pln br-r mvn15">
												<h5 class="ml5 mt20 ph10 pb5 br-b fw600 hidden">
													Visitors <small class="pull-right fw600">13,253 <span
														class="text-primary">(8,251 unique)</span>
													</small>
												</h5>
												<div id="ecommerce_chart1" style="height: 300px;"></div>
											</div>

											<!-- Multi Text Column -->
											<div class="col-md-4">
												<h5 class="mt5 mbn ph10 pb5 br-b fw600">
													Top Referrals <small class="pull-right fw600 text-primary">View
														Report </small>
												</h5>
												<table class="table mbn tc-med-1 tc-bold-last tc-fs13-last">
													<thead>
														<tr class="hidden">
															<th>Source</th>
															<th>Count</th>
														</tr>
													</thead>
													<tbody>
														<tr>
															<td><i class="fa fa-circle text-warning fs8 pr15"></i>
																<span>www.google.com</span></td>
															<td>1,926</td>
														</tr>
														<tr>
															<td><i class="fa fa-circle text-warning fs8 pr15"></i>
																<span>www.yahoo.com</span></td>
															<td>1,254</td>
														</tr>
														<tr>
															<td><i class="fa fa-circle text-warning fs8 pr15"></i>
																<span>www.themeforest.com</span></td>
															<td>783</td>
														</tr>
													</tbody>
												</table>
												<h5 class="mt15 mbn ph10 pb5 br-b fw600">
													Top Search Terms <small
														class="pull-right fw600 text-primary">View Report
													</small>
												</h5>
												<table class="table mbn tc-med-1 tc-bold-last tc-fs13-last">
													<thead>
														<tr class="hidden">
															<th>Source</th>
															<th>Count</th>
														</tr>
													</thead>
													<tbody>
														<tr>
															<td><i class="fa fa-circle text-warning fs8 pr15"></i>
																<span>admin theme</span></td>
															<td>988</td>
														</tr>
														<tr>
															<td><i class="fa fa-circle text-warning fs8 pr15"></i>
																<span>admin dashboard</span></td>
															<td>612</td>
														</tr>
														<tr>
															<td><i class="fa fa-circle text-warning fs8 pr15"></i>
																<span>admin template</span></td>
															<td>256</td>
														</tr>
													</tbody>
												</table>
											</div>

											<!-- Flag/Icon Column -->
											<div class="col-md-4 hidden">
												<h5 class="mt5 ph10 pb5 br-b fw600">
													Traffic Sources <small
														class="pull-right fw600 text-primary">View Stats </small>
												</h5>
												<table class="table mbn">
													<thead>
														<tr class="hidden">
															<th>#</th>
															<th>First Name</th>
														</tr>
													</thead>
													<tbody>
														<tr>
															<td class="va-m fw600 text-muted"><span
																class="flag-xs flag-us mr5 va-b"></span> United States</td>
															<td class="fs15 fw600 text-right">28%</td>
														</tr>
														<tr>
															<td class="va-m fw600 text-muted"><span
																class="flag-xs flag-tr mr5 va-b"></span> Turkey</td>
															<td class="fs15 fw600 text-right">25%</td>
														</tr>
														<tr>
															<td class="va-m fw600 text-muted"><span
																class="flag-xs flag-fr mr5 va-b"></span> France</td>
															<td class="fs15 fw600 text-right">22%</td>
														</tr>
														<tr>
															<td class="va-m fw600 text-muted"><span
																class="flag-xs flag-in mr5 va-b"></span> India</td>
															<td class="fs15 fw600 text-right">18%</td>
														</tr>
														<tr>
															<td class="va-m fw600 text-muted"><span
																class="flag-xs flag-es mr5 va-b"></span> Spain</td>
															<td class="fs15 fw600 text-right">15%</td>
														</tr>
														<tr>
															<td class="va-m fw600 text-muted"><span
																class="flag-xs flag-de mr5 va-b"></span> Germany</td>
															<td class="fs15 fw600 text-right">12%</td>
														</tr>
													</tbody>
												</table>
											</div>
										</div>
									</div>
									<div role="tabpanel" class="tab-pane" id="tab1_2">
										<div class="table-responsive">
											<table
												class="table admin-form theme-warning tc-checkbox-1 fs13">
												<thead>
													<tr class="bg-light">
														<th class="">Image</th>
														<th class="">Product Title</th>
														<th class="">SKU</th>
														<th class="">Price</th>
														<th class="">Stock</th>
														<th class="text-right">Status</th>

													</tr>
												</thead>
												<tbody>
													<tr>
														<td class="w100"><img
															class="img-responsive mw20 ib mr10" title="user"
															src="assets/img/stock/products/thumb_1.jpg"></td>
														<td class="">Apple Ipod 4G - Silver</td>
														<td class="">#21362</td>
														<td class="">$215</td>
														<td class="">1,400</td>
														<td class="text-right">
															<div class="btn-group text-right">
																<button type="button"
																	class="btn btn-success br2 btn-xs fs12 dropdown-toggle"
																	data-toggle="dropdown" aria-expanded="false">
																	Active <span class="caret ml5"></span>
																</button>
																<ul class="dropdown-menu" role="menu">
																	<li><a href="#">Edit</a></li>
																	<li><a href="#">Delete</a></li>
																	<li><a href="#">Archive</a></li>
																	<li class="divider"></li>
																	<li><a href="#">Complete</a></li>
																	<li class="active"><a href="#">Pending</a></li>
																	<li><a href="#">Canceled</a></li>
																</ul>
															</div>
														</td>
													</tr>
													<tr>
														<td class="w100"><img
															class="img-responsive mw20 ib mr10" title="user"
															src="assets/img/stock/products/thumb_2.jpg"></td>
														<td class="">Apple Smart Watch - 1G</td>
														<td class="">#15262</td>
														<td class="">$455</td>
														<td class="">2,100</td>
														<td class="text-right">
															<div class="btn-group text-right">
																<button type="button"
																	class="btn btn-success br2 btn-xs fs12 dropdown-toggle"
																	data-toggle="dropdown" aria-expanded="false">
																	Active <span class="caret ml5"></span>
																</button>
																<ul class="dropdown-menu" role="menu">
																	<li><a href="#">Edit</a></li>
																	<li><a href="#">Delete</a></li>
																	<li><a href="#">Archive</a></li>
																	<li class="divider"></li>
																	<li><a href="#">Complete</a></li>
																	<li class="active"><a href="#">Pending</a></li>
																	<li><a href="#">Canceled</a></li>
																</ul>
															</div>
														</td>
													</tr>
													<tr>
														<td class="w100"><img
															class="img-responsive mw20 ib mr10" title="user"
															src="assets/img/stock/products/thumb_6.jpg"></td>
														<td class="">Apple Macbook 4th Gen - Silver</td>
														<td class="">#66362</td>
														<td class="">$1699</td>
														<td class="">6,100</td>
														<td class="text-right">
															<div class="btn-group text-right">
																<button type="button"
																	class="btn btn-success br2 btn-xs fs12 dropdown-toggle"
																	data-toggle="dropdown" aria-expanded="false">
																	Active <span class="caret ml5"></span>
																</button>
																<ul class="dropdown-menu" role="menu">
																	<li><a href="#">Edit</a></li>
																	<li><a href="#">Delete</a></li>
																	<li><a href="#">Archive</a></li>
																	<li class="divider"></li>
																	<li><a href="#">Complete</a></li>
																	<li class="active"><a href="#">Pending</a></li>
																	<li><a href="#">Canceled</a></li>
																</ul>
															</div>
														</td>
													</tr>
													<tr>
														<td class="w100"><img
															class="img-responsive mw20 ib mr10" title="user"
															src="assets/img/stock/products/thumb_7.jpg"></td>
														<td class="">Apple Iphone 16GB - Silver</td>
														<td class="">#51362</td>
														<td class="">$1299</td>
														<td class="">5,200</td>
														<td class="text-right">
															<div class="btn-group text-right">
																<button type="button"
																	class="btn btn-success br2 btn-xs fs12 dropdown-toggle"
																	data-toggle="dropdown" aria-expanded="false">
																	Active <span class="caret ml5"></span>
																</button>
																<ul class="dropdown-menu" role="menu">
																	<li><a href="#">Edit</a></li>
																	<li><a href="#">Delete</a></li>
																	<li><a href="#">Archive</a></li>
																	<li class="divider"></li>
																	<li><a href="#">Complete</a></li>
																	<li class="active"><a href="#">Pending</a></li>
																	<li><a href="#">Canceled</a></li>
																</ul>
															</div>
														</td>
													</tr>
												</tbody>
											</table>
										</div>
									</div>
									<div role="tabpanel" class="tab-pane " id="tab1_3"></div>
								</div>
							</div>
						</div>
					</div>
					<!-- end: .col-md-12.admin-grid -->

				</div>
				<!-- end: .row -->

			</div>
		</div>
		<!-- end: .tray-center -->
	</section>
	<!-- End: Content -->
</section>
<!-- End: Content-Wrapper -->
<!-- BEGIN: PAGE SCRIPTS -->
<jsp:include page="public/footer.jsp"></jsp:include>