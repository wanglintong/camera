<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
<title>中林清风</title>
<link rel="stylesheet" href="${pageContext.request.contextPath }/res/layui/css/layui.css">
<link rel="stylesheet" href="${pageContext.request.contextPath }/res/css/admin.css">
<script src="${pageContext.request.contextPath }/res/layui/layui.js"></script>
<script src="${pageContext.request.contextPath }/res/js/vue.min.js"></script>
<script src="${pageContext.request.contextPath }/res/js/modules/camera.js"></script>
<link rel="stylesheet" href="${pageContext.request.contextPath }/res/css/daterangepicker.css">
<script type="text/javascript" src="${pageContext.request.contextPath }/res/js/jquery.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath }/res/js/moment.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath }/res/js/jquery.daterangepicker.js"></script>
</head>
<body>

	<!-- 主体 -->
	<div class="layui-body">
		<span id="date-range">选择时间&nbsp;&nbsp;▼</span>
		<input type="text" placeholder="选取时间" id='applyTime' readonly />
	</div>

	</div>
	<script type="text/javascript">
		//绑定时间插件
		$('#applyTime').dateRangePicker({

			separator : ' ~ ',
			showShortcuts : true,
			shortcuts : {
				'prev-days' : [ 3, 5, 7 ],
				'prev' : [ 'week', 'month', 'year' ],
				'next-days' : null,
				'next' : null
			}
		}).bind('datepicker-first-date-selected', function(event, obj) {
			/* This event will be triggered when first date is selected */
			console.log('first-date-selected', obj);

		}).bind('datepicker-change', function(event, obj) {
			/* This event will be triggered when second date is selected */
			console.log('change', obj);

		}).bind('datepicker-apply', function(event, obj) {
			/* This event will be triggered when user clicks on the apply button */
			//console.log('apply',obj);
			if (obj.value.indexOf("Invalid date") > 0)
				return;
			$("#applyTime").val(obj.value)
		});
	</script>
</body>
</html>