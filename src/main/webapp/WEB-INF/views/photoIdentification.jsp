<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<link rel="stylesheet" href="${pageContext.request.contextPath }/res/css/bootstrap.min.css" />
<link rel="stylesheet/less" href="${pageContext.request.contextPath }/res/less/style.less" />
<link rel="stylesheet" href="${pageContext.request.contextPath }/res/css/photoIdentification.css" />
<link rel="stylesheet" href="${pageContext.request.contextPath }/res/webuploader/css/webuploader.css">
<link rel="stylesheet" href="${pageContext.request.contextPath }/res/webuploader/css/diyUpload.css">
<style>
a:hover {
	text-decoration: none;
}

a:-webkit-any-link {
	cursor: auto;
	text-decoration: none;
}

</style>
<div id="app">
	<blockquote class="layui-elem-quote">
		<div style="position: relative; height: 26px">
			<img style="vertical-align: middle; width: 24px; height: 24px" src="${pageContext.request.contextPath }/res/imgs/cameraCheck.png" />
			&nbsp;
			<span style="font-size: 19px; position: absolute; top: 2px;">照片甄选</span>
		</div>
	</blockquote>
	<div class="container" style="border: 0px">
		<ul class="nav nav-pills nav-justified step step-round" data-step="1">
			<li>
				<a>选择鉴定任务</a>
			</li>
			<li>
				<a>选择相机</a>
			</li>
			<li>
				<a>文件预操作</a>
			</li>
			<li>
				<a>信息鉴定</a>
			</li>
			<li>
				<a>鉴定完成</a>
			</li>
		</ul>
	</div>

	<hr>
	<div id="dutyDiv" style="height: 600px; margin: 20px" v-show="currentStep==1">
		<div style="margin-left: 30px; margin-bottom: 30px">
			<h2 style="color: green;">选择鉴定任务</h2>
		</div>
		<div id="dutys" style="overflow: auto; width: 70%; height: 85%; border: 3px solid green; margin: 0 auto">
			<div id="newDuty" name="duty" class="newDutyDiv">
				<span style="font-size: 16px">新的鉴定任务</span>
			</div>
			<div name="duty" class="dutyDiv" v-for="duty in dutys">
				<table class="layui-table" lay-skin="nob">
					<tr>
						<td>布设点编号</td>
						<td>{{duty.id}}</td>
					</tr>
					<tr>
						<td>已鉴定</td>
						<td>{{duty.hasCheck}}</td>
					</tr>
					<tr>
						<td>未鉴定</td>
						<td>{{duty.unCheck}}</td>
					</tr>
					<tr>
						<td>时间</td>
						<td>{{duty.time}}</td>
					</tr>
				</table>
				<div class="publishDiv">发布</div>
			</div>
		</div>
		<div style="width: 70%; margin: 0 auto">
			<div align="right" style="margin-top: 10px">
				<button class="layui-btn layui-btn-danger" id="nextBtn" @click='nextStep'>新建任务</button>
			</div>
		</div>
	</div>
	<div id="selectCameraDiv" style="height: 600px; margin: 20px" v-show="currentStep==2">
		<div style="margin-left: 30px; margin-bottom: 30px">
			<h2 style="color: green;">选择相机</h2>
		</div>
		<div id="cameras" style="width: 50%; height: 85%; border: 3px solid #DDDDDD; margin: 0 auto">
			<blockquote class="layui-elem-quote">
				<div style="position: relative; height: 26px">
					<span style="font-size: 19px; position: absolute; top: 2px;">所有已回收相机</span>
				</div>
			</blockquote>
			<div style="width: 100%; height: 86%; overflow: auto">
				<table class="layui-table" lay-skin="nob">
					<tr v-for="camera in cameras">
						<td>存储卡号:{{camera.id}}</td>
						<td>布设时间:{{camera.time}}</td>
						<td>
							<input type="radio" name="cameraRadio">
						</td>
					</tr>
				</table>
			</div>
		</div>
		<div style="width: 70%; margin: 0 auto">
			<div align="right" style="margin-top: 10px">
				<button class="layui-btn" @click='preStep'>上一步</button>
				<button class="layui-btn layui-btn-danger" @click='nextStep'>下一步</button>
			</div>
		</div>
	</div>
	<div id="photosCheck" style="height: 600px; margin: 20px" v-show="currentStep==3">
		<div style="margin-left: 30px; margin-bottom: 30px">
			<h2 style="color: green;">文件预操作</h2>
		</div>
		<div id="selectDiv">
			<table class="layui-table" lay-skin="row" style="margin-top: 0px; width: 100%">
				<tr>
					<td>
						<select name="fileName">
							<option value="">请选择命名规则</option>
							<option value="0">BJSS-布设日期-相机编号</option>
							<option value="1">BJSS布设日期-相机编号</option>
							<option value="2">BJSS布设日期相机编号</option>
						</select>
					</td>
				</tr>
				<tr>
					<td>布设点编号:xxxxx</td>
				</tr>
				<tr>
					<td>放置日期:2016-05-14</td>
				</tr>
				<tr>
					<td>相机编号:xxxx</td>
				</tr>
			</table>
		</div>
		<div id="photos">
			<div id="as"></div>
		</div>
		<div id="photoMsg">
			<img id="imgInfo2" style="width: 100%; height: 100%" />
		</div>
		<div style="float: right; margin-right: 200px; margin-top: 60px">
			<button class="layui-btn" @click='preStep'>上一步</button>
			<button class="layui-btn layui-btn-danger" @click='nextStep'>下一步</button>
		</div>
		<div style="float: right; height: 300px"></div>
	</div>
	<div id="infoCheck" style="height: 600px; margin: 20px" v-show="currentStep==4">
		<div style="margin-left: 30px; margin-bottom: 30px">
			<h2 style="color: green;">信息鉴定</h2>
		</div>
		<div id="mediaMessage" style="border: 1px solid #AAAAAA; float: left; width: 20%; height: 400px; margin-left: 45px; position: relative;">
			<div>
				<table class="layui-table" lay-skin="line" style="margin: 0px">
					<tr>
						<th>总数：9</th>
						<th>照片：8</th>
						<th>视频：1</th>
					</tr>
				</table>
			</div>
			<div style="overflow: auto; height: 320px">
				<form class="layui-form" action="" style="padding: 0px; margin: 0px">
					<table id="mediaTable" style="margin-top: 0px; width: 100%; text-align: center">
						<tr data-url="/uploads/yueyu.mp4" name="mediaTR" data-index="0">
							<td colspan="2">照片1111.jpg</td>
							<td>
								<input type="checkbox" name="switch" lay-skin="switch" lay-text="√|">
							</td>
						</tr>
						<tr data-url="/uploads/003.mp4" name="mediaTR" data-index="1">
							<td colspan="2">照片1111.jpg</td>
							<td>
								<input type="checkbox" name="switch" lay-skin="switch" lay-text="√|">
							</td>
						</tr>
						<tr data-url="/uploads/1.jpg" name="mediaTR" data-index="2">
							<td colspan="2">照片1111.jpg</td>
							<td>
								<input type="checkbox" name="switch" lay-skin="switch" lay-text="√|">
							</td>
						</tr>
						<tr data-url="/uploads/2.jpg" name="mediaTR" data-index="3">
							<td colspan="2">照片1111.jpg</td>
							<td>
								<input type="checkbox" name="switch" lay-skin="switch" lay-text="√|">
							</td>
						</tr>
					</table>
				</form>
			</div>
			<div style="position: absolute; bottom: 0px; width: 100%">
				<table class="layui-table" lay-skin="line" style="margin: 0px">
					<tr>
						<th>通过:2</th>
						<th>放弃：8</th>
						<th>待办：1</th>
					</tr>
				</table>
			</div>
		</div>
		<div id="media" style="border: 1px solid #DDDDDD; float: left; width: 37%; height: 400px; margin-left: 35px">
			<video id="videoShow" autoplay="autoplay" src="" controls="controls" style="width: 100%; height: 85%; display: none;"></video>
			<img id="imgShow" style="width: 100%; height: 85%; display: none;" />
			<div style="height: 5%"></div>
			<div id="ctrlBtn" style="width: 100%; height: 10%; text-align: center; display: none">
				<button id="preMedia" class="layui-btn layui-btn-small layui-btn-normal">
					<i class="layui-icon">&#xe603;</i>
				</button>
				<button id="nextMedia" class="layui-btn layui-btn-small layui-btn-warm">
					<i class="layui-icon">&#xe602;</i>
				</button>
			</div>
		</div>
		<div id="mediaForm" style="border: 1px solid #DDDDDD; float: left; width: 30%; height: 400px; margin-left: 35px">
			<form action="" style="width: 100%; height: 100%; padding-left: 30px">
				<table style="width: 100%; height: 100%; padding: 5px; margin: 5px">
					<tr>
						<td>温度</td>
						<td>自动填写</td>
					</tr>
					<tr>
						<td>物种鉴定人</td>
						<td>自动填写</td>
					</tr>
					<tr>
						<td>照片名称</td>
						<td>自动填写</td>
					</tr>
					<tr>
						<td>拍摄时间</td>
						<td>自动填写</td>
					</tr>
					<tr>
						<td>对象类别</td>
						<td>
							<input type="radio" name="sex" value="动物">
							动物&nbsp;
							<input type="radio" name="sex" value="植物">
							植物&nbsp;
							<input type="radio" name="sex" value="真菌">
							真菌&nbsp;
						</td>
					</tr>
					<tr>
						<td>物种名称</td>
						<td>
							<input type="text">
						</td>
					</tr>
					<tr>
						<td>动物数量</td>
						<td>
							<input type="text">
						</td>
					</tr>
					<tr>
						<td>物种性别</td>
						<td>
							<input type="radio" name="sex" value="动物">
							雌性&nbsp;
							<input type="radio" name="sex" value="植物">
							雄性&nbsp;
							<input type="radio" name="sex" value="真菌">
							雌雄都有&nbsp;
							<input type="radio" name="sex" value="真菌">
							难以辨认&nbsp;
						</td>
					</tr>
					<tr>
						<td>备注</td>
						<td>
							<input type="text">
						</td>
					</tr>
					<tr>
						<td colspan="2">
							<button type="reset" class="layui-btn">重置</button>
						</td>
					</tr>
				</table>
			</form>
		</div>
		<div style="width: 95%; margin: 0 auto; float: left">
			<div align="right" style="margin-top: 20px">
				<button class="layui-btn" @click='preStep'>上一步</button>
				<button class="layui-btn layui-btn-danger" @click='nextStep'>结束</button>
			</div>
		</div>
	</div>
	<div id="checkFinish" style="height: 600px; margin: 20px" v-show="currentStep==5">
		<div style="margin-left: 30px; margin-bottom: 30px">
			<h2 style="color: green;">鉴定完成</h2>
		</div>
		<div id="cameraInfo" style="width: 250px; height: 350px; margin: 0 auto; float: left; margin-left: 200px">
			<table style="width: 100%; height: 100%;">
				<tr>
					<th style="color: #FF5511; font-size: 18px">相机信息</th>
					<th></th>
				</tr>
				<tr>
					<td style="color: #FFA488">相机编号</td>
					<td>2-1</td>
				</tr>
				<tr>
					<td style="color: #FFA488">相机型号</td>
					<td>2-1</td>
				</tr>
				<tr>
					<td style="color: #FFA488">布设点编号</td>
					<td>2-1</td>
				</tr>
				<tr>
					<td style="color: #FFA488">2KM编号</td>
					<td>2-1</td>
				</tr>
				<tr>
					<td style="color: #FFA488">1KM编号</td>
					<td>2-1</td>
				</tr>
				<tr>
					<td style="color: #FFA488">经度</td>
					<td>2-1</td>
				</tr>
				<tr>
					<td style="color: #FFA488">纬度</td>
					<td>2-1</td>
				</tr>
			</table>
		</div>
		<div id="checkInfo" style="width: 250px; height: 350px; margin: 0 auto; float: left; margin-left: 100px">
			<table style="width: 100%; height: 100%;">
				<tr>
					<th style="color: #FF5511; font-size: 18px">鉴定信息</th>
					<th></th>
					<th></th>
					<th></th>
				</tr>
				<tr>
					<td style="color: #FFA488">照片总数</td>
					<td>265</td>
					<td></td>
					<td></td>
				</tr>
				<tr>
					<td style="color: #FFA488">保留照片</td>
					<td>14张</td>
					<td style="color: #FFA488">删除照片</td>
					<td>89张</td>
				</tr>
				<tr>
					<td style="color: #FFA488">保留视频</td>
					<td>1段</td>
					<td style="color: #FFA488">删除视频</td>
					<td>3段</td>
				</tr>
				<tr>
					<td style="color: #FFA488">未甄选</td>
					<td>13</td>
					<td></td>
					<td></td>
				</tr>
				<tr>
					<td></td>
					<td></td>
					<td></td>
					<td></td>
				</tr>
				<tr>
					<td></td>
					<td></td>
					<td></td>
					<td></td>
				</tr>
				<tr>
					<td></td>
					<td></td>
					<td></td>
					<td></td>
				</tr>
			</table>
		</div>
		<hr>
		<div style="width: 85%; margin: 0 auto; float: left">
			<div align="right" style="margin-top: 150px">
				<button class="layui-btn" @click='finish'>继续鉴定</button>
			</div>
		</div>
	</div>
</div>
<script type="text/javascript" src="${pageContext.request.contextPath }/res/js/jquery-3.2.1.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath }/res/js/less.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath }/res/js/lib.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath }/res/webuploader/js/webuploader.html5only.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath }/res/webuploader/js/diyUpload.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath }/res/js/photoIdentification.js"></script>