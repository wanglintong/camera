/** layui * */
var layer;
var form;
var flow;
layui.use([ 'laydate', 'form', 'element', 'laypage', 'layer', 'flow' ],
		function() {
			form = layui.form();
			layer = layui.layer;
			flow = layui.flow;
			var element = layui.element();
			var laypage = layui.laypage;
		});

var app = new Vue({
	el : '#app',
	data : {
		showPageNum : 1,
		mode:1
	},
	methods : {
		back : function() {
			this.mode = 1;
		},
		nextPage : function() {
			this.showPageNum += 1;
			if(this.showPageNum == 2) {
				setTimeout(() => {
					// 按屏加载图片
					flow.lazyimg({
						elem : '#layImgContainer img',
						scrollElem : '#layImgContainer' // 一般不用设置，此处只是演示需要。
					});
				}, 1000);
			}
		},
		changeMode:function() {
			var m = $("#changeMode").attr('class');
			if (m.indexOf('layui-form-onswitch') > 0) {
				$("#changeMode").removeClass('layui-form-onswitch');
				$('#em').html('图文');
				this.mode = 1;
			} else {
				$("#changeMode").addClass('layui-form-onswitch');
				$('#em').html('统计图');
				this.mode = 2;
			}
		},
		detailInfo:function() {
			this.mode = 3;
		}
	}
});
/**echarts**/
function initEcharts() {
	var myChart1 = echarts.init(document.getElementById('charts1'));
	var myChart2 = echarts.init(document.getElementById('charts2'));
	// 指定图表的配置项和数据
	var option1 = {
		title: {
			text: '按照月份统计',
			x: 'center'
		},
		tooltip: {},
		xAxis: {
			name: '时间',
			data: ["0点", "6点", "12点", "18点", "24点"]
		},
		yAxis: {
			name: '平均拍到次数'
		},
		series: [{
			name: '平均拍到次数',
			type: 'line',
			data: [5, 20, 36, 10, 10]
		}]
	};
	var option2 = {
			title: {
				text: '按照年份统计',
				x: 'center'
			},
			tooltip: {},
			xAxis: {
				name: '月份',
				data: ["1月", "2月", "3月", "4月", "5月", "6月", "7月", "8月", "9月", "10月", "11月", "12月"]
			},
			yAxis: {
				name: '拍到次数'
			},
			series: [{
				name: '拍到次数',
				type: 'bar',
				data: [5, 20, 36, 10, 10, 30, 40, 60, 12, 5, 8, 33]
			}]
		};
	// 使用刚指定的配置项和数据显示图表。
	myChart1.setOption(option1);
	myChart2.setOption(option2);
}
initEcharts();

/*
var currSrc = null;
$('#layImgContainer').children().click(function() {
	currSrc = $(this).attr('src');
	$("#imgShow").attr('src',currSrc);
});
$('#imgShow').click(function(){
	if(currSrc!=null) {
		$('#bg').show();
		$('#imgInfo').attr('src',currSrc);
		$('#bigImgWithWord').show();
	}
});
$('#closeBigImgWithWord').click(function(){
	$('#bg').hide();
	$('#bigImgWithWord').hide();
});
*/


