<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://tag.macroflag.com/jsp/jstl/date" prefix="date"%>
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
					<div class="layui-inline">
							<label class="layui-form-label">时间范围</label>
							<div class="layui-input-block">
								<input type="text" class="layui-input" id="uv_date">
							</div>
						</div>
					<div id="uv_id" style="width: auto; height: 400px;"></div>
				</div>
			</div>
		</div>
		
		<!-- end: .tray-center -->
	</section>
	<!-- End: Content -->
</section>
<script type="text/javascript">
	layui.use('laydate', function() {
		var laydate = layui.laydate;
		laydate.render({
			elem : '#pv_date',
			range : '至',
			done : function(value, date, endDate) {
				var rangeDate = value.replace(/\s+/g, "").split('至');
				var params = {startDate:rangeDate[0],endDate:rangeDate[1]};
				console.log(params);
				pv_func(params);
			}
		});
		laydate.render({
			elem : '#uv_date',
			range : '至',
			done : function(value, date, endDate) {
				var rangeDate = value.replace(/\s+/g, "").split('至');
				var params = {startDate:rangeDate[0],endDate:rangeDate[1]};
				uv_func(params);
			}
		});
	});
	function echarts_zx(params) {
		// 指定图表的配置项和数据
		var option = {
			title : {
				text : params.title,
			},
			tooltip : {
				trigger : 'axis'
			},
			toolbox : {
				show : true,
				feature : {
					mark : {
						show : true
					},
					dataView : {
						show : true,
						readOnly : false
					},
					magicType : {
						show : true,
						type : [ 'line', 'bar' ]
					},
					restore : {
						show : true
					},
					saveAsImage : {
						show : true
					}
				}
			},
			calculable : true,
			xAxis : [ {
				type : 'category',
				boundaryGap : false,
				data : params.dateList
			} ],
			yAxis : [ {
				type : 'value'
			} ],
			series : [ {
				name : params.title,
				type : 'line',
				data : params.hitList,
				markPoint : {
					data : [ {
						type : 'max',
						name : '最大值'
					}, {
						type : 'min',
						name : '最小值'
					} ]
				},
				markLine : {
					data : [ {
						type : 'average',
						name : '平均值'
					} ]
				}
			} ]
		};

		// 使用刚指定的配置项和数据显示图表。
		params.chartsObj.setOption(option);
	}

	function uv_func(data) {
		//基于准备好的dom，初始化echarts实例
		var chartsObj = echarts.init(document.getElementById('uv_id'));
		$.ajax({
			url:"getUV",
			data:data,
			success:function(resp){
				var params = {};
				params.dateList = resp.dateList;
				params.hitList = resp.hitList;
				params.title = 'UV分析';
				params.chartsObj = chartsObj;
				echarts_zx(params);
	    }});
	}
	uv_func({startDate:'2017-09-01',endDate:'2017-09-15'});
</script>
<jsp:include page="../public/footer.jsp"></jsp:include>