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
.layui-nav .myClass {
	position: relative;
	display: inline-block;
	*display: inline;
	*zoom: 1;
	vertical-align: middle;
	line-height: 60px
}

.layui-nav .myClass a {
	display: block;
	padding: 0 20px;
	color: #c2c2c2;
	transition: all .3s;
	-webkit-transition: all .3s
}

.layui-nav .myClass a:hover, .layui-nav .layui-this a {
	color: #fff
}

.layui-nav-tree .myClass {
	display: block;
	width: 100%;
	line-height: 45px
}

.layui-nav-tree .myClass a {
	height: 45px;
	text-overflow: ellipsis;
	overflow: hidden;
	white-space: nowrap
}

.layui-nav-tree .myClass a:hover {
	background-color: #4E5465
}
.myClass .myThis {
	background-color: #5FB878
}
</style>
</head>
<body>
	<!-- 布局容器 -->
	<div class="layui-layout layui-layout-admin">
		<!-- 头部 -->
		<div class="layui-header">
			<div class="layui-main">
				<div class="top-left">
					<!-- logo -->
					<a href="/" class="logo">
						<img src="${pageContext.request.contextPath }/res/imgs/logo.png" />
						数字保护区
					</a>
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
				<li v-bind:class="cameraDistributionClass">
					<a href="${pageContext.request.contextPath }/cameraDistribution">
						<i class="layui-icon">
							<img src="${pageContext.request.contextPath }/res/imgs/cameraDistribution.png" />
						</i>
						&nbsp;
						<cite>相机分布</cite>
					</a>
				</li>
				<li v-bind:class="photoIdentificationClass">
					<a href="${pageContext.request.contextPath }/photoIdentification">
						<i class="layui-icon">
							<img src="${pageContext.request.contextPath }/res/imgs/photoIdentification.png" />
						</i>
						&nbsp;
						<cite>照片鉴定</cite>
					</a>
				</li>
				<li v-bind:class="historicalDataClass">
					<a href="${pageContext.request.contextPath }/historicalData">
						<i class="layui-icon">
							<img src="${pageContext.request.contextPath }/res/imgs/historicalData.png" />
						</i>
						&nbsp;
						<cite>历史数据</cite>
					</a>
				</li>
				<li class="layui-nav-item">
					<a href="javascript:;">
						<i class="layui-icon">
							<img src="${pageContext.request.contextPath }/res/imgs/statisticAnalysis.png" />
						</i>
						&nbsp;
						<cite>统计分析</cite>
					</a>
					<dl class="layui-nav-child">
						<dd>
							<a href="#" style="margin-left: 10px">
								<i class="layui-icon">
									<img src="${pageContext.request.contextPath }/res/imgs/animal.png" />
								</i>
								&nbsp;
								<cite>按动物统计</cite>
							</a>
						</dd>
						<dd>
							<a href="#" style="margin-left: 10px">
								<i class="layui-icon">
									<img src="${pageContext.request.contextPath }/res/imgs/time.png" />
								</i>
								&nbsp;
								<cite>按时间统计</cite>
							</a>
						</dd>
						<dd>
							<a href="#" style="margin-left: 10px">
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
	<script type="text/javascript">
		var url = window.location.href + '';
		var flag = 0;
		if(url.indexOf('cameraDistribution')>0) {
			flag = 1;
		}else if(url.indexOf('photoIdentification')>0) {
			flag = 2;
		}else if(url.indexOf('historicalData')>0) {
			flag = 3;
		}
		console.log(flag);
		var app = new Vue({
			el:"#baseApp",
			data: {
				cameraDistributionClass : flag==1 ? 'myClass layui-this' : 'myClass',
				photoIdentificationClass : flag==2 ? 'myClass layui-this' : 'myClass',
				historicalDataClass : flag==3 ? 'myClass layui-this' : 'myClass'
			}
		});
	</script>
</body>
</html>