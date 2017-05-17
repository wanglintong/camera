<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE html>

<html>

<head>

<meta charset="UTF-8">

<title>Insert title here</title>
<link rel="stylesheet" href="${pageContext.request.contextPath }/res/css/daterangepicker.css">
<script type="text/javascript" src="${pageContext.request.contextPath }/res/js/jquery.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath }/res/js/moment.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath }/res/js/jquery.daterangepicker.js"></script>
</head>

<body>

	<span id="date-range">选择时间&nbsp;&nbsp;▼</span>
	<input type="text" placeholder="选取时间" id='applyTime' readonly />

	<script>
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