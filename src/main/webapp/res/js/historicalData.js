/** layui * */
var layer;
var form;
var flow;
layui.use([ 'laydate', 'form', 'element', 'laypage', 'layer', 'flow' ],
		function() {
			form = layui.form();
			layer = layui.layer;
			var element = layui.element();
			var laypage = layui.laypage;
			flow = layui.flow;
			laypage({
				cont : 'demo1',
				pages : 100, // 总页数
				groups : 5,
				jump : function(obj, first) {
					var curr = obj.curr;
					console.log('curr=' + curr);
				}
			});

		});

var app = new Vue(
		{
			el : '#app',
			data : {
				showPageNum : 1
			},
			methods : {
				back : function() {
					this.showPageNum -= 1;
				},
				nextPage : function() {
					this.showPageNum += 1;
					if(this.showPageNum == 3) {
						var length = $('#imgContainer').children().length;
						console.log('length = ' + length);
						setTimeout(() => {
							// 按屏加载图片
							flow.lazyimg({
								elem : '#layImgContainer1 img',
								scrollElem : '#layImgContainer1' // 一般不用设置，此处只是演示需要。
							});
							flow.lazyimg({
								elem : '#layImgContainer2 img',
								scrollElem : '#layImgContainer2' // 一般不用设置，此处只是演示需要。
							});
						}, 1000);
					}
				},
				showBaseInfoForm : function() {
					layer
							.open({
								skin : 'layui-layer-molv',
								title : '基本信息',
								area : '650px',
								content : '<form class="layui-form" action=""> <div class="layui-form-item"> <div class="layui-inline"> <label class="layui-form-label">布设时间</label> <div class="layui-input-inline" style="width: 150px;"> <input class="layui-input" placeholder="请选择布设时间" onclick="layui.laydate({elem: this, istime: true, format: '
										+ "'YYYY-MM-DD'"
										+ '})"> </div>  <label class="layui-form-label">回收时间</label>  <div class="layui-input-inline" style="width: 150px;"> <input class="layui-input" placeholder="请选择回收时间" onclick="layui.laydate({elem: this, istime: true, format: '
										+ "'YYYY-MM-DD'"
										+ '})"> </div> </div> </div> <div class="layui-form-item"> <div class="layui-inline"> <label class="layui-form-label">布设点编号</label> <div class="layui-input-inline" style="width: 150px;"> <input type="text" autocomplete="off" class="layui-input"> </div>  <label class="layui-form-label">存储卡编号</label>  <div class="layui-input-inline" style="width: 150px;"> <input type="text" autocomplete="off" class="layui-input"> </div> </div> </div> <div class="layui-form-item"> <div class="layui-inline"> <label class="layui-form-label">布设人员</label> <div class="layui-input-inline" style="width: 150px;"> <input type="text" autocomplete="off" class="layui-input"> </div>  <label class="layui-form-label">回收人员</label>  <div class="layui-input-inline" style="width: 150px;"> <input type="text" autocomplete="off" class="layui-input"> </div> </div> </div> <div class="layui-form-item"> <div class="layui-inline"> <label class="layui-form-label">经度</label> <div class="layui-input-inline" style="width: 150px;"> <input type="text" autocomplete="off" class="layui-input"> </div>  <label class="layui-form-label">纬度</label>  <div class="layui-input-inline" style="width: 150px;"> <input type="text" autocomplete="off" class="layui-input"> </div> </div> </div> <div class="layui-form-item"> <div class="layui-inline"> <label class="layui-form-label">海拔</label> <div class="layui-input-inline" style="width: 150px;"> <input type="text" autocomplete="off" class="layui-input"> </div>  <label class="layui-form-label">相机型号</label>  <div class="layui-input-inline" style="width: 150px;"> <input type="text" autocomplete="off" class="layui-input"> </div> </div> </div> </form>',
								btn : [ '修改', '取消' ],
								btn1 : function(index, layero) {
									layer.close(index); // 如果设定了yes回调，需进行手工关闭
								},
								btn2 : function(index, layero) {
								}
							});
				},
				showSjInfoForm : function() {
					layer
							.open({
								skin : 'layui-layer-molv',
								title : '生境信息',
								area : '650px',
								content : '<form class="layui-form" action=""> <div class="layui-form-item"> <div class="layui-inline"> <label class="layui-form-label">坡向</label> <div class="layui-input-inline" style="width: 150px;"> <select name="px"> <option value=""></option> <option value="0">东</option> <option value="1">南</option> <option value="2">西</option> <option value="3">北</option> <option value="4">东南</option> <option value="4">东北</option> <option value="4">西南</option> <option value="4">西北</option> <option value="4">无坡向</option> </select> </div>  <label class="layui-form-label">生境类型</label>  <div class="layui-input-inline" style="width: 150px;"> <select name="szlx"> <option value=""></option> <option value="0">落叶阔叶林</option> <option value="1">常绿阔叶林</option> <option value="2">落叶/常绿阔叶林</option> <option value="3">针叶林</option> <option value="4">针阔混交林</option> <option value="5">灌丛</option> <option value="6">草地\草甸</option> <option value="7">农田</option> <option value="8">裸岩</option> <option value="9">其它</option> </select> </div> </div> </div> <div class="layui-form-item"> <div class="layui-inline"> <label class="layui-form-label">森林起源</label>  <div class="layui-input-inline" style="width: 150px;"> <select name="slqy"> <option value=""></option> <option value="0">原始林</option> <option value="1">次生林</option> <option value="2">人工针叶林</option> </select> </div>  <label class="layui-form-label">乔木郁闭度</label>  <div class="layui-input-inline" style="width: 150px;"> <input type="text" autocomplete="off" class="layui-input"> </div> </div> </div> <div class="layui-form-item"> <div class="layui-inline"> <label class="layui-form-label">乔木胸径</label>  <div class="layui-input-inline" style="width: 150px;"> <input type="text" autocomplete="off" class="layui-input"> </div>  <label class="layui-form-label">灌木优势种</label>  <div class="layui-input-inline" style="width: 150px;"> <input type="text" autocomplete="off" class="layui-input"> </div> </div> </div> <div class="layui-form-item"> <div class="layui-inline"> <label class="layui-form-label">干扰类型</label>  <div class="layui-input-inline" style="width: 150px;"> <select name="slqy"> <option value=""></option> <option value="0">游客</option> <option value="1">建设工程</option> <option value="2">伐木</option> <option value="3">公路</option> <option value="4">放牧</option> <option value="5">盗猎</option> <option value="6">采矿</option> <option value="7">其它</option> </select> </div>  <label class="layui-form-label">动物痕迹</label>  <div class="layui-input-inline" style="width: 150px;"> <input type="text" autocomplete="off" class="layui-input"> </div> </div> </div> <div class="layui-form-item"> <div class="layui-inline"> <label class="layui-form-label">痕迹类型</label>  <div class="layui-input-inline" style="width: 150px;"> <select name="slqy"> <option value=""></option> <option value="0">粪便</option> <option value="1">脚印</option> <option value="2">取食痕迹</option> <option value="3">挖掘痕迹</option> <option value="4">动物身体遗落物(毛发,刺等)</option> <option value="5">盗猎</option> <option value="6">采矿</option> <option value="7">其它</option> </select> </div>  <label class="layui-form-label">坡度</label>  <div class="layui-input-inline" style="width: 150px;"> <input type="text" autocomplete="off" class="layui-input"> </div> </div> </div> <div class="layui-form-item"> <div class="layui-inline"> <label class="layui-form-label">小生境</label>  <div class="layui-input-inline" style="width: 150px;"> <select name="slqy"> <option value=""></option> <option value="0">林下</option> <option value="1">灌丛</option> <option value="2">草地</option> <option value="3">裸岩</option> <option value="4">河边</option> <option value="5">洞穴</option> <option value="6">其它</option> </select> </div>  <label class="layui-form-label">灌木高度</label>  <div class="layui-input-inline" style="width: 150px;"> <input type="text" autocomplete="off" class="layui-input"> </div> </div> </div> <div class="layui-form-item"> <div class="layui-inline"> <label class="layui-form-label">干扰强度</label>  <div class="layui-input-inline" style="width: 150px;"> <select name="slqy"> <option value=""></option> <option value="0">强</option> <option value="1">中</option> <option value="2">弱</option> </select> </div>  <label class="layui-form-label">灌木盖度</label>  <div class="layui-input-inline" style="width: 150px;"> <input type="text" autocomplete="off" class="layui-input"> </div> </div> </div> <div class="layui-form-item"> <div class="layui-inline"> <label class="layui-form-label">干扰频率</label>  <div class="layui-input-inline" style="width: 150px;"> <select name="slqy"> <option value=""></option> <option value="0">经常</option> <option value="1">一般</option> <option value="2">很少</option> </select> </div>  <label class="layui-form-label">乔木高度</label>  <div class="layui-input-inline" style="width: 150px;"> <input type="text" autocomplete="off" class="layui-input"> </div> </div> </div> <div class="layui-form-item layui-form-text"> <label class="layui-form-label">总备注</label> <div class="layui-input-block" style="width: 420px;"> <textarea name="desc" placeholder="请输入内容" class="layui-textarea"></textarea> </div> </div> </form>',
								btn : [ '修改', '取消' ],
								btn1 : function(index, layero) {
									layer.close(index); // 如果设定了yes回调，需进行手工关闭
								},
								btn2 : function(index, layero) {
								}
							});
					form.render();
				}
			}
		});

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
$(function() {
	$(".shaixuan-tj span.crumb-select-item").live('hover', function(event) {
		if (event.type == 'mouseenter') {
			$(this).addClass("crumb-select-itemon");
		} else {
			$(this).removeClass("crumb-select-itemon");
		}
	});
	$(".shaixuan-tj span.crumb-select-item").live('click', function(event) {
		var html = $(this).html();
		event.preventDefault();
		$(this).remove();
		var TTR = $(this).find("em").text();
		$(".show-con a").each(function() {
			var TT = $(this).text();
			THI = $(this);
			THIPP = $(this).parents("dl");
			if (TTR == TT) {
				THI.removeClass("nzw12");
				THIPP.css("display", "block");
			}
		})
		if (html.indexOf('时间') > 0) {
			$('#applyTime').removeClass("nzw12");
			$('#applyTime').val('');
		}
	});
	$(".show-con a")
			.click(
					function(event) {
						event.preventDefault();
						THIP = $(this).parents("dl");
						if ($(this).hasClass("nzw12")) {
						} else {
							$(this).addClass("nzw12");
							var zhiclass = $(this).parents("dd").siblings("dt")
									.find("a").text();
							zhicon = $(this).text();
							tianjaneir = "<span class='crumb-select-item'><a href='/'><b>"
									+ zhiclass
									+ "</b><em>"
									+ zhicon
									+ "</em><i class='icon-remove'></i></a></span>"
							$(".shaixuan-tj").children().last().after(
									tianjaneir);
							// THIP.css("display","none");
						}
					});
	/*
	 * $(".show-con div input").click(function(event) { if($(this).hasClass("nzw12")) {} else { $(this).addClass("nzw12"); //var zhiclass =
	 * $(this).parents("dd").siblings("dt").find("a").text(); zhicon = $(this).attr('value'); console.log('时间值是：' + zhicon); tianjaneir = "<span
	 * class='crumb-select-item'><a href='/'><b>" + '时间 : ' + "</b><em>" + zhicon + "</em><i class='icon-remove'></i></a></span>"
	 * $(".shaixuan-tj").children().last().after(tianjaneir); //THIP.css("display","none"); } });
	 */
	$(".show-more").click(function(event) {
		event.preventDefault();
		var ticon = $(this).find("i");
		tspan = $(this).find("span");
		if ($(this).hasClass("zk")) {
			$(this).siblings(".show-con").css("height", "30px");
			ticon.removeClass("icon-angle-up");
			ticon.addClass("icon-angle-down");
			tspan.html("更多");
			$(this).removeClass("zk")
		} else {
			$(this).siblings(".show-con").css("height", "auto");
			ticon.removeClass("icon-angle-down");
			ticon.addClass("icon-angle-up");
			tspan.html("收起");
			$(this).addClass("zk")
		}
	});
	$("#sxbtn").click(function(event) {
		event.preventDefault();
		var xicon = $(this).find("span i");
		xspan = $(this).find("span em");
		if ($(this).hasClass("zkon")) {
			xspan.text("收起筛选");
			xicon.removeClass("icon-angle-down");
			xicon.addClass("icon-angle-up");
			$(".sxcon").slideDown();
			$(this).removeClass("zkon")
		} else {
			xspan.text("查看筛选");
			xicon.removeClass("icon-angle-up");
			xicon.addClass("icon-angle-down");
			$(".sxcon").slideUp();
			$(this).addClass("zkon")
		}
	})
})

/** * */
$('#open1').click(function() {
	var m = $(this).attr('class');
	if (m.indexOf('layui-form-onswitch') > 0) {
		$(this).removeClass('layui-form-onswitch');
		$('#em1').html('否');
	} else {
		$(this).addClass('layui-form-onswitch');
		$('#em1').html('是');
	}
});
$('#open2').click(function() {
	var m = $(this).attr('class');
	if (m.indexOf('layui-form-onswitch') > 0) {
		$(this).removeClass('layui-form-onswitch');
		$('#em2').html('否');
	} else {
		$(this).addClass('layui-form-onswitch');
		$('#em2').html('是');
	}
});

/** 历史图片选中放大* */
$("#imgContainer img").click(function(){
	var imgSrc = $(this).attr('src');
	$('#imgBig').attr('src',imgSrc);
	$('#bg').show();
	$('#bigImg').show();
});
$('#bg').click(function(){
	$('#bg').hide();
	$('#bigImg').hide();
});

