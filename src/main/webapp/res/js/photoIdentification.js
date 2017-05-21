/** 加载layui* */
layui.use([ 'form', 'element' ], function() {
	var form = layui.form();
	var element = layui.element();
});
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
			// 此时说明是由第一步进行跳转需要判断此时是新任务还是继续任务
			if (this.currentStep == 1) {
				var html = $('#nextBtn').html();
				if (html == '继续鉴定') {
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
		finish : function() {
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

/** 信息鉴定相关事件处理 * */
var currentMediaIndex = new Number(0);
$('tr[name="mediaTR"]')
		.click(
				function() {
					var len = $(this).siblings().length;
					for (var i = 0; i < len; ++i) {
						$($(this).siblings()[i]).removeClass('checkTR');
					}
					$(this).addClass('checkTR');
					currentMediaIndex = parseInt($(this).attr('data-index'));
					var dataUrl = $(this).attr('data-url');
					if (dataUrl.indexOf('mp4') > 0) {
						$('#videoShow').show();
						$('#imgShow').hide();
						$('#videoShow').attr('src', '/camera' + dataUrl);
						$('#media')
								.attr('style',
										'float: left; width: 37%; height: 400px; margin-left: 35px');
					} else {
						$('#videoShow').attr('src', '');
						$('#videoShow').hide();
						$('#imgShow').show();
						$('#imgShow').attr('src', '/camera' + dataUrl);
					}
					$('#ctrlBtn').show();
				});

$("#nextMedia")
		.click(
				function() {
					var len = $('tr[name="mediaTR"]').length;
					if ((currentMediaIndex + 1) >= len) {
						return;
					}
					for (var i = 0; i < len; ++i) {
						$($('tr[name="mediaTR"]')[i]).removeClass('checkTR');
					}
					currentMediaIndex += 1;
					$($('tr[name="mediaTR"]')[currentMediaIndex]).addClass(
							'checkTR');

					var dataUrl = $($('tr[name="mediaTR"]')[currentMediaIndex])
							.attr('data-url');
					if (dataUrl.indexOf('mp4') > 0) {
						$('#videoShow').show();
						$('#imgShow').hide();
						$('#videoShow').attr('src', '/camera' + dataUrl);
						$('#media')
								.attr('style',
										'float: left; width: 37%; height: 400px; margin-left: 35px');
					} else {
						$('#videoShow').attr('src', '');
						$('#videoShow').hide();
						$('#imgShow').show();
						$('#imgShow').attr('src', '/camera' + dataUrl);
					}
				});
$("#preMedia")
		.click(
				function() {
					if (currentMediaIndex == 0) {
						return;
					}
					var len = $('tr[name="mediaTR"]').length;
					for (var i = 0; i < len; ++i) {
						$($('tr[name="mediaTR"]')[i]).removeClass('checkTR');
					}
					currentMediaIndex -= 1;
					$($('tr[name="mediaTR"]')[currentMediaIndex]).addClass(
							'checkTR');
					var dataUrl = $($('tr[name="mediaTR"]')[currentMediaIndex])
							.attr('data-url');
					if (dataUrl.indexOf('mp4') > 0) {
						$('#videoShow').show();
						$('#imgShow').hide();
						$('#videoShow').attr('src', '/camera' + dataUrl);
						$('#media')
								.attr('style',
										'float: left; width: 37%; height: 400px; margin-left: 35px');
					} else {
						$('#videoShow').attr('src', '');
						$('#videoShow').hide();
						$('#imgShow').show();
						$('#imgShow').attr('src', '/camera' + dataUrl);
					}
				});

var lastClickLiId = null;
var currentImg = null;
var currentStatus = 'hide';
function showMsg(img) {
	var li = $(img).parent().parent();// 得到外层的li
	if (lastClickLiId != null) {
		$('#' + lastClickLiId).attr('style', '');
	}
	lastClickLiId = $(li).attr('id');
	currentImg = $(img).attr('src');
	$(li).attr('style', 'border:5px solid black');
	$('#imgInfo2').attr('src', $(img).attr('src'));
}
//监听键盘4个方向键 enter delete
$(document).keydown(function(event) {
	if(lastClickLiId!=null) {
		if(event.keyCode==37 || event.keyCode==38 || event.keyCode==39 || event.keyCode==40 || event.keyCode==13 || event.keyCode==46 ) {
			event.preventDefault();
		}
		if(event.keyCode==46) {
			var prev = $('#'+lastClickLiId).next();
			var file_id = $('#'+lastClickLiId).attr('id');
			file_id = file_id.substring(8,file_id.length);
			var $li = $('#'+lastClickLiId);
			var id = $(prev).attr('id');
			//删除自身
			$.wup.removeFile( file_id );
			if ( $li.siblings('li').length <= 0 ) {
				$li.parents('.parentFileBox').remove();
			} else {
				$li.remove();
			}
			if(id!=undefined) {
				$(prev).attr('style', 'border:5px solid black');
				var img = $(prev).children(":first").children(":first");
				$('#imgInfo2').attr('src', $(img).attr('src'));
				
				lastClickLiId = id;
				currentImg = $(img).attr('src');
				
				$('#imgBig').attr('src', currentImg);
			}
		}
		if(event.keyCode==13) {
			if(currentStatus=='hide') {
				$('#imgBig').attr('src', currentImg);
				$('#bg').show();
				$('#bigImg').show();
				currentStatus = 'show';
			}else {
				$('#bg').hide();
				$('#bigImg').hide();
				currentStatus = 'hide';
			}
		}
		if(event.keyCode==37) {
			//切换到左边图片
			var prev = $('#'+lastClickLiId).prev();
			var id = $(prev).attr('id');
			if(id!=undefined) {
				/*
				 * 如果当前图片有上一张图片 那么需要做的事情有
				 * 1.去除当前图片的选中样式，给上一张图片添加选中样式
				 * 2.右侧图片显示区修改
				 * 3.lastClickLiId 和 currentImg
				 */
				$('#'+lastClickLiId).attr('style','');
				$(prev).attr('style','border:5px solid black');
				
				var img = $(prev).children(":first").children(":first");
				$('#imgInfo2').attr('src', $(img).attr('src'));
				
				lastClickLiId = id;
				currentImg = $(img).attr('src');
				
				$('#imgBig').attr('src', currentImg);
			}
		}else if(event.keyCode==38) {
			//切换到上边图片
			var prev = $('#'+lastClickLiId).prev().prev().prev().prev().prev().prev().prev().prev();
			var id = $(prev).attr('id');
			if(id!=undefined) {
				$('#'+lastClickLiId).attr('style','');
				$(prev).attr('style','border:5px solid black');
				
				var img = $(prev).children(":first").children(":first");
				$('#imgInfo2').attr('src', $(img).attr('src'));
				
				lastClickLiId = id;
				currentImg = $(img).attr('src');
				
				$('#imgBig').attr('src', currentImg);
			}
		}else if(event.keyCode==39) {
			//切换到右边的图片
			var next = $('#'+lastClickLiId).next();
			var id = $(next).attr('id');
			if(id!=undefined) {
				$('#'+lastClickLiId).attr('style','');
				$(next).attr('style','border:5px solid black');
				
				var img = $(next).children(":first").children(":first");
				$('#imgInfo2').attr('src', $(img).attr('src'));
				
				lastClickLiId = id;
				currentImg = $(img).attr('src');
				
				$('#imgBig').attr('src', currentImg);
			}
		}else if(event.keyCode==40) {
			//切换到下边的图片
			var next = $('#'+lastClickLiId).next().next().next().next().next().next().next().next();
			var id = $(next).attr('id');
			if(id!=undefined) {
				$('#'+lastClickLiId).attr('style','');
				$(next).attr('style','border:5px solid black');
				
				var img = $(next).children(":first").children(":first");
				$('#imgInfo2').attr('src', $(img).attr('src'));
				
				lastClickLiId = id;
				currentImg = $(img).attr('src');
				
				$('#imgBig').attr('src', currentImg);
			}
		}
	}
});





