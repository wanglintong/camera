/** layui **/
layui.use(['form','element'], function() {
	var form = layui.form();
	var element = layui.element();
});

/**vue js**/
var app = new Vue({
	el : '#app',
	data : {
		showFormId : 1
	},
	methods : {
		changeFormId : function() {
			if (this.showFormId == 1) {
				this.showFormId = 2;
			} else if (this.showFormId == 2) {
				this.showFormId = 3;
				// 500毫秒之后重新渲染form
				setTimeout(function() {
					layui.form().render();
					console.log('重新渲染form');
					initWebuploader();
					console.log("初始化webuploader");
				}, 500);
			} else {
				this.showFormId = 1;
			}
		},
		backTableDiv : function() {
			this.showFormId = 1;
		}
	}
});

/** webuploader * */
function initWebuploader() {
	/* init webuploader */
	$('#as').diyUpload({
		url : '/camera/upload',
		success : function(data) {
			console.info(data);
		},
		error : function(err) {
			console.info(err);
		},
		buttonText : '选择图片',
		chunked : true,
		// 分片大小
		chunkSize : 512 * 1024,
		// 最大上传的文件数量, 总文件大小,单个文件大小(单位字节);
		fileNumLimit : 50,
		fileSizeLimit : 500000 * 1024,
		fileSingleSizeLimit : 50000 * 1024,
		accept : {}
	});
}

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
