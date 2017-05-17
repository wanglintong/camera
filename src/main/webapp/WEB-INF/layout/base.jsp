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
<style type="text/css">
#bg {
	position: fixed;
	top: 0;
	right: 0;
	bottom: 0;
	z-index: 10000;
	left: 0;
	background-color: #000;
	opacity: .8;
}

#bigImg {
	position: fixed;
	top: 0px;
	left: 0px;
	right: 0px;
	bottom: 0px;
	margin: auto;
	z-index: 10001;
}

#bigImgWithWord {
	position: fixed;
	top: 0px;
	left: 0px;
	right: 0px;
	bottom: 0px;
	margin: auto;
	z-index: 10001;
	background-color: #DDDDDD;
}

#imgInfo {
	width: 68%;
	height: 500px;
	display: inline-block;
	vertical-align: top;
	margin: 20px;
	margin-top: 0px;
}

#wordInfo {
	width: 25%;
	height: 500px;
	display: inline-block;
}
</style>
</head>
<body>
	<div id="bg" style="display: none"></div>
	<!-- 大图显示开始 -->
	<div id="bigImg" style="width: 1024px; height: 768px; display: none;">
		<img id="imgBig" style="width: 100%; height: 100%">
	</div>
	<!-- 大图显示结束 -->
	<!-- 带文字描述的大图预览 -->
	<div id="bigImgWithWord" style="width: 1024px; height: 570px; display: none;">
		<div style="margin-top: 0; height: 35px; text-align: right;">
			<a href="#" id="closeBigImgWithWord">
				<i class="layui-icon" style="font-size: 32px">&#x1006;</i>
			</a>
		</div>
		<img id="imgInfo" />
		<div id="wordInfo">
			<table class="layui-table" style="margin-top: 0px;background-color: #DDDDDD">
				<tbody>
					<tr>
						<td>温度</td>
						<td>28.3</td>
					</tr>
					<tr>
						<td>物种鉴定人</td>
						<td>张三</td>
					</tr>
					<tr>
						<td>照片名称</td>
						<td>xxxqaa</td>
					</tr>
					<tr>
						<td>拍摄时间</td>
						<td>18:45</td>
					</tr>
					<tr>
						<td>对象类别</td>
						<td>动物</td>
					</tr>
					<tr>
						<td>物种名称</td>
						<td>大熊猫</td>
					</tr>
					<tr>
						<td>动物数量</td>
						<td>1</td>
					</tr>
					<tr>
						<td>物种性别</td>
						<td>难以辨认</td>
					</tr>
					<tr>
						<td>备注</td>
						<td>备注zzzzz</td>
					</tr>
				</tbody>
			</table>
		</div>
	</div>
	<!-- 带文字描述的大图预览 -->

	<!-- 布局容器 -->
	<div class="layui-layout layui-layout-admin">
		<!-- 头部 -->
		<div class="layui-header">
			<div class="layui-main">
				<div class="top-left">
					<!-- logo -->
					<a href="/" class="logo" style="bottom: 0px"> 数字保护区 </a>
					<a href="javascript:;" class="menu-flexible" style="margin-right: 10px">
						<i class="layui-icon" style="vertical-align: middle;"> &#xe60f; </i>
					</a>
				</div>
				<!-- 头部一级菜单 -->
				<ul class="layui-nav top-menu">
					<li class="layui-nav-item">
						<a href="javascript:alert('todo')">地理信息</a>
					</li>
					<li class="layui-nav-item">
						<a href="javascript:alert('todo')">巡护检测</a>
					</li>
					<li class="layui-nav-item">
						<a href="javascript:alert('todo')">生态旅游</a>
					</li>
					<li class="layui-nav-item">
						<a href="javascript:alert('todo')">科研宣教</a>
					</li>
					<li class="layui-nav-item">
						<a href="javascript:alert('todo')">社区共管</a>
					</li>
					<li class="layui-nav-item">
						<a href="javascript:alert('todo')">资源共享</a>
					</li>
					<li class="layui-nav-item">
						<a href="javascript:alert('todo')">办公管理</a>
					</li>
					<li class="layui-nav-item">
						<a href="javascript:alert('todo')">生态监测</a>
					</li>
					<li class="layui-nav-item layui-this">
						<a href="${pageContext.request.contextPath }/cameraDistribution">红外相机</a>
					</li>
					<li class="layui-nav-item">
						<a href="javascript:alert('todo')">无人机</a>
					</li>
				</ul>
				<!-- 头部右侧操作 -->
				<ul class="layui-nav operate">
					<li class="layui-nav-item">
						<a href="javascript:;">
							<img src="${pageContext.request.contextPath }/res/imgs/userLogo.png" />
							&nbsp; 测试用户
						</a>
						<dl class="layui-nav-child">
							<dd>
								<a href="javascript:;">
									<i class="layui-icon">
										<img src="${pageContext.request.contextPath }/res/imgs/userInfo.png" />
									</i>
									&nbsp;
									<cite>个人信息</cite>
								</a>
							</dd>
							<dd>
								<a href="javascript:;">
									<i class="layui-icon">
										<img src="${pageContext.request.contextPath }/res/imgs/password.png" />
									</i>
									&nbsp;
									<cite>修改密码</cite>
								</a>
							</dd>
							<dd>
								<a href="javascript:;">
									<i class="layui-icon">
										<img src="${pageContext.request.contextPath }/res/imgs/logout.png" />
									</i>
									&nbsp;
									<cite>退出登录</cite>
								</a>
							</dd>
						</dl>
					</li>
				</ul>
			</div>
		</div>

		<!-- 左侧菜单 -->
		<div class="layui-side layui-bg-black left-menu-all" id="baseApp">
			<ul class="layui-nav layui-nav-tree left-menu">
				<li id="li1" class="layui-nav-item">
					<a href="${pageContext.request.contextPath }/cameraDistribution">
						<i class="layui-icon">
							<img src="${pageContext.request.contextPath }/res/imgs/cameraDistribution.png" />
						</i>
						&nbsp;
						<cite>相机分布</cite>
					</a>
				</li>
				<li id="li2" class="layui-nav-item">
					<a href="${pageContext.request.contextPath }/photoIdentification">
						<i class="layui-icon">
							<img src="${pageContext.request.contextPath }/res/imgs/photoIdentification.png" />
						</i>
						&nbsp;
						<cite>照片鉴定</cite>
					</a>
				</li>
				<li id="li3" class="layui-nav-item">
					<a href="${pageContext.request.contextPath }/historicalData">
						<i class="layui-icon">
							<img src="${pageContext.request.contextPath }/res/imgs/historicalData.png" />
						</i>
						&nbsp;
						<cite>历史数据</cite>
					</a>
				</li>
				<li id="li4" class="layui-nav-item">
					<a href="javascript:;">
						<i class="layui-icon">
							<img src="${pageContext.request.contextPath }/res/imgs/statisticAnalysis.png" />
						</i>
						&nbsp;
						<cite>统计分析</cite>
					</a>
					<dl class="layui-nav-child">
						<dd id="dd1">
							<a href="${pageContext.request.contextPath }/statisticsByAnimal" style="margin-left: 10px">
								<i class="layui-icon">
									<img src="${pageContext.request.contextPath }/res/imgs/animal.png" />
								</i>
								&nbsp;
								<cite>按动物统计</cite>
							</a>
						</dd>
						<dd id="dd2">
							<a href="${pageContext.request.contextPath }/statisticsByTime" style="margin-left: 10px">
								<i class="layui-icon">
									<img src="${pageContext.request.contextPath }/res/imgs/time.png" />
								</i>
								&nbsp;
								<cite>按时间统计</cite>
							</a>
						</dd>
						<dd id="dd3">
							<a href="${pageContext.request.contextPath }/statisticsByDistribution" style="margin-left: 10px">
								<i class="layui-icon">
									<img src="${pageContext.request.contextPath }/res/imgs/distribution.png" />
								</i>
								&nbsp;
								<cite>按分布统计</cite>
							</a>
						</dd>
					</dl>
				</li>
			</ul>
		</div>

		<!-- 主体 -->
		<div class="layui-body" style="bottom: 0; border-left: solid 2px #1AA094;">
			<tiles:insertAttribute name="body" />
		</div>
	</div>
</body>
</html>
<script>
	setTimeout(function() {
		var url = window.location.href;
		if (url.indexOf('cameraDistribution') > 0) {
			$('#li1').addClass('layui-this');
			$('#li2').removeClass('layui-this');
			$('#li3').removeClass('layui-this');
		} else if (url.indexOf('photoIdentification') > 0) {
			$('#li1').removeClass('layui-this');
			$('#li2').addClass('layui-this');
			$('#li3').removeClass('layui-this');
		} else if (url.indexOf('historicalData') > 0) {
			$('#li1').removeClass('layui-this');
			$('#li2').removeClass('layui-this');
			$('#li3').addClass('layui-this');
		} else if (url.indexOf('statisticsByAnimal') > 0) {
			$('#li1').removeClass('layui-this');
			$('#li4').addClass('layui-nav-itemed');
			$('#dd1').addClass('layui-this');
		} else if (url.indexOf('statisticsByTime') > 0) {
			$('#li1').removeClass('layui-this');
			$('#li4').addClass('layui-nav-itemed');
			$('#dd2').addClass('layui-this');
		} else if (url.indexOf('statisticsByDistribution') > 0) {
			$('#li1').removeClass('layui-this');
			$('#li4').addClass('layui-nav-itemed');
			$('#dd3').addClass('layui-this');
		}
	}, 100);
</script>