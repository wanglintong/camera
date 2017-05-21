/** layui * */
layui.use([ 'laydate', 'form', 'element' ], function() {
	var form = layui.form();
	var element = layui.element();
});

/** openlayer* */
var attribution = new ol.control.Attribution({
	collapsible : false
});
var map = new ol.Map({
	layers : [ new ol.layer.Tile({
		source : new ol.source.OSM()
	}) ],
	controls : ol.control.defaults({
		attribution : false
	}).extend([ attribution ]),
	target : 'mapDiv',
	view : new ol.View({
		center : [ 0, 0 ],
		zoom : 2
	})
});

function checkSize() {
	var small = map.getSize()[0] < 600;
	attribution.setCollapsible(small);
	attribution.setCollapsed(small);
}

window.addEventListener('resize', checkSize);
checkSize();

// 绑定时间插件
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

}).bind(
		'datepicker-apply',
		function(event, obj) {
			/* This event will be triggered when user clicks on the apply button */
			// console.log('apply',obj);
			if (obj.value.indexOf("Invalid date") > 0)
				return;
			$("#applyTime").val(obj.value);

			if ($('#applyTime').hasClass("nzw12")) {
			} else {
				$('#applyTime').addClass("nzw12");
				// var zhiclass =
				// $(this).parents("dd").siblings("dt").find("a").text();
				zhicon = $('#applyTime').attr('value');
				tianjaneir = "<span class='crumb-select-item'><a href='/'><b>"
						+ '时间 : ' + "</b><em>" + zhicon
						+ "</em><i class='icon-remove'></i></a></span>"
				$(".shaixuan-tj").children().last().after(tianjaneir);
				// THIP.css("display","none");
			}

		});

$('div[name="open"]').click(function() {
	console.log('zzz');
	var m = $(this).attr('class');
	if (m.indexOf('layui-form-onswitch') > 0) {
		$(this).removeClass('layui-form-onswitch');
		$(this).children(':first').html('隐藏');
	} else {
		$(this).addClass('layui-form-onswitch');
		$(this).children(':first').html('显示');
	}
});