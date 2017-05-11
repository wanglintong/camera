/** 初始化webuploader* */
function initWebuploader() {
	$('#as').diyUpload({
		url : '/camera/upload',
		success : function(data) {
			console.info(data);
		},
		error : function(err) {
			console.info(err);
		},
		buttonText : '选择文件'
	});
}

var app = new Vue({
	el : '#app',
	data : {
		currentStep : 1,
		dutys : [ {
			id : '001',
			hasCheck : 110,
			unCheck : 15,
			time : '2016-05-15'
		}, {
			id : '002',
			hasCheck : 110,
			unCheck : 15,
			time : '2016-05-15'
		}, {
			id : '003',
			hasCheck : 110,
			unCheck : 15,
			time : '2016-05-15'
		} ],
		cameras : [ {
			id : "00000001",
			time : '2016-03-03'
		}, {
			id : "00000001",
			time : '2016-03-03'
		}, {
			id : "00000001",
			time : '2016-03-03'
		} ]
	},
	methods : {
		nextStep : function() {
			//此时说明是由第一步进行跳转需要判断此时是新任务还是继续任务
			if(this.currentStep == 1) {
				var html = $('#nextBtn').html();
				if(html=='继续鉴定') {
					this.currentStep = 4;
					bsStep(this.currentStep);
					return;
				}
			}
			this.currentStep += 1;
			// 更改任务进度
			bsStep(this.currentStep);
			initWebuploader();
		},
		preStep : function() {
			this.currentStep -= 1;
			// 更改任务进度
			bsStep(this.currentStep);
		},
		finish:function() {
			this.currentStep = 1;
			bsStep(this.currentStep);
		}
	}
});

/** 添加任务框点击事件* */
function addDivEvent() {
	$('div[name="duty"]')
			.click(
					function(e) {
						var len = $('#dutys').children().length;
						for (var i = 0; i < len; ++i) {
							$($('#dutys').children()[i])
									.attr(
											'style',
											'position:relative;float: left; border: 1px solid green; width: 28%; height: 200px; margin-left: 45px; margin-top: 35px;line-height:200px;text-align: center');
						}
						var id = $(this).attr('id');
						if (id == 'newDuty') {
							$('#nextBtn').html('新建任务');
							$(this)
									.attr(
											'style',
											'position:relative;background-color:#d0d0d0;float: left; border: 4px solid #007979; width: 28%; height: 200px; margin-left: 45px; margin-top: 35px;line-height:200px;text-align: center');
						} else {
							$('#nextBtn').html('继续鉴定');
							$(this)
									.attr(
											'style',
											'position:relative;float: left; border: 4px solid #007979; width: 28%; height: 200px; margin-left: 45px; margin-top: 35px;line-height:200px;text-align: center');
						}
					});
}
addDivEvent();

/** 初始化任务进度条* */
bsStep(1);

/**加载layui form模块 **/
layui.use('form', function() {
	var form = layui.form();
});

/** 信息鉴定相关事件处理 **/
var currentMediaIndex = new Number(0);
$('tr[name="mediaTR"]').click(function(){
	var len = $(this).siblings().length;
	for (var i = 0; i < len; ++i) {
		$($(this).siblings()[i]).removeClass('checkTR');
	}
	$(this).addClass('checkTR');
	currentMediaIndex = parseInt($(this).attr('data-index'));
	var dataUrl = $(this).attr('data-url');
	if(dataUrl.indexOf('mp4')>0) {
		$('#videoShow').show();
		$('#imgShow').hide();
		$('#videoShow').attr('src','/camera'+dataUrl);
		$('#media').attr('style','float: left; width: 37%; height: 400px; margin-left: 35px');
	}else {
		$('#videoShow').attr('src','');
		$('#videoShow').hide();
		$('#imgShow').show();
		$('#imgShow').attr('src','/camera'+dataUrl);
	}
	$('#ctrlBtn').show();
});

$("#nextMedia").click(function(){
	var len = $('tr[name="mediaTR"]').length;
	if((currentMediaIndex+1)>=len) {
		return;
	}
	for(var i=0;i<len;++i) {
		$($('tr[name="mediaTR"]')[i]).removeClass('checkTR');
	}
	currentMediaIndex += 1;
	$($('tr[name="mediaTR"]')[currentMediaIndex]).addClass('checkTR');
	
	var dataUrl = $($('tr[name="mediaTR"]')[currentMediaIndex]).attr('data-url');
	if(dataUrl.indexOf('mp4')>0) {
		$('#videoShow').show();
		$('#imgShow').hide();
		$('#videoShow').attr('src','/camera'+dataUrl);
		$('#media').attr('style','float: left; width: 37%; height: 400px; margin-left: 35px');
	}else {
		$('#videoShow').attr('src','');
		$('#videoShow').hide();
		$('#imgShow').show();
		$('#imgShow').attr('src','/camera'+dataUrl);
	}
});
$("#preMedia").click(function() {
	if(currentMediaIndex==0) {
		return;
	}
	var len = $('tr[name="mediaTR"]').length;
	for(var i=0;i<len;++i) {
		$($('tr[name="mediaTR"]')[i]).removeClass('checkTR');
	}
	currentMediaIndex -= 1;
	$($('tr[name="mediaTR"]')[currentMediaIndex]).addClass('checkTR');
	var dataUrl = $($('tr[name="mediaTR"]')[currentMediaIndex]).attr('data-url');
	if(dataUrl.indexOf('mp4')>0) {
		$('#videoShow').show();
		$('#imgShow').hide();
		$('#videoShow').attr('src','/camera'+dataUrl);
		$('#media').attr('style','float: left; width: 37%; height: 400px; margin-left: 35px');
	}else {
		$('#videoShow').attr('src','');
		$('#videoShow').hide();
		$('#imgShow').show();
		$('#imgShow').attr('src','/camera'+dataUrl);
	}
});
