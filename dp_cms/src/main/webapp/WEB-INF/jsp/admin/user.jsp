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
					<table id="user" lay-filter="user"></table>
				</div>
			</div>
		</div>
		<!-- end: .tray-center -->
	</section>
	<!-- End: Content -->
</section>
<!-- End: Content-Wrapper -->
<script type="text/html" id="barDemo">
  <a class="layui-btn layui-btn-mini" lay-event="detail">查看</a>
  <a class="layui-btn layui-btn-mini" lay-event="edit">编辑</a>
  <a class="layui-btn layui-btn-danger layui-btn-mini" lay-event="del">删除</a>
  
  <!-- 这里同样支持 laytpl 语法，如： -->
  {{#  if(d.auth > 2){ }}
    <a class="layui-btn layui-btn-mini" lay-event="check">审核</a>
  {{#  } }}
</script>
<!-- BEGIN: PAGE SCRIPTS -->
<script type="text/javascript">
	layui.use('table', function() {
		var table = layui.table;
		//执行渲染
		table.render({
			url : '/admin/user/page',
			elem : '#user',
			height : 550,
			cols : [ [
			//标题栏
			{
				checkbox : true
			}, {
				field : 'id',
				title : 'ID',
				width : 80,
				sort : true
			}, {
				field : 'username',
				title : '用户名',
				width : 200
			}, {
				field : 'createTime',
				title : '创建时间',
				width : 300
			}, {
				field : 'updateTime',
				title : '最后更新时间',
				width : 300
			}, {
				field : 'status',
				title : '状态',
				width : 120
			}, {
				fixed : 'right',
				width : 200,
				title : '操作',
				align : 'center',
				toolbar : '#barDemo'
			} ] ],
			page : true
		//开启分页
		
		});
		//监听工具条
		table.on('tool(user)', function(obj) { //注：tool是工具条事件名，test是table原始容器的属性 lay-filter="对应的值"
			var data = obj.data; //获得当前行数据
			var layEvent = obj.event; //获得 lay-event 对应的值
			var tr = obj.tr; //获得当前行 tr 的DOM对象

			if (layEvent === 'detail') { //查看
				layer.alert('查看');
			} else if (layEvent === 'del') { //删除
				layer.confirm('真的删除行么', function(index) {
					obj.del(); //删除对应行（tr）的DOM结构
					layer.close(index);
					//向服务端发送删除指令
				});
			} else if (layEvent === 'edit') { //编辑
				var param = {};
				edit(param);
			}
		});

		function edit(param) {
			layer.open({
				area: '800px',
				title : '在线调试',
				type : 1,
				content : $("#form_id"),
				btnAlign : 'r',
				maxmin : true,
				btn : [ '确定', '取消' ],
				yes : function(index, layero) {
					//按钮【按钮一】的回调
				},
				btn2 : function(index, layero) {
					//按钮【按钮二】的回调

					//return false 开启该代码可禁止点击该按钮关闭
				}
			});
		}
	});
</script>
<jsp:include page="../public/footer.jsp"></jsp:include>

<form class="layui-form" id="form_id" style="display:none">
	<!-- 提示：如果你不想用form，你可以换成div等任何一个普通元素 -->
	<div class="layui-form-item">
		<label class="layui-form-label">输入框</label>
		<div class="layui-input-block">
			<input type="text" name="" placeholder="请输入" autocomplete="off"
				class="layui-input">
		</div>
	</div>
	<div class="layui-form-item">
		<label class="layui-form-label">下拉选择框</label>
		<div class="layui-input-block">
			<select name="interest" lay-filter="aihao">
				<option value="0">写作</option>
				<option value="1">阅读</option>
			</select>
		</div>
	</div>
	<div class="layui-form-item">
		<label class="layui-form-label">复选框</label>
		<div class="layui-input-block">
			<input type="checkbox" name="like[write]" title="写作"> <input
				type="checkbox" name="like[read]" title="阅读">
		</div>
	</div>
	<div class="layui-form-item">
		<label class="layui-form-label">开关关</label>
		<div class="layui-input-block">
			<input type="checkbox" lay-skin="switch">
		</div>
	</div>
	<div class="layui-form-item">
		<label class="layui-form-label">开关开</label>
		<div class="layui-input-block">
			<input type="checkbox" checked lay-skin="switch">
		</div>
	</div>
	<div class="layui-form-item">
		<label class="layui-form-label">单选框</label>
		<div class="layui-input-block">
			<input type="radio" name="sex" value="0" title="男"> <input
				type="radio" name="sex" value="1" title="女" checked>
		</div>
	</div>
	<div class="layui-form-item layui-form-text">
		<label class="layui-form-label">请填写描述</label>
		<div class="layui-input-block">
			<textarea placeholder="请输入内容" class="layui-textarea"></textarea>
		</div>
	</div>
</form>
