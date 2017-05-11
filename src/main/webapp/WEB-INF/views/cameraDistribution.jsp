<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<link rel="stylesheet" href="${pageContext.request.contextPath }/res/css/cameraDistribution.css">
<link rel="stylesheet" href="${pageContext.request.contextPath }/res/webuploader/css/webuploader.css">
<link rel="stylesheet" href="${pageContext.request.contextPath }/res/webuploader/css/diyUpload.css">
<link rel="stylesheet" href="https://openlayers.org/en/v4.1.1/css/ol.css" type="text/css">
<div id="app">
	<blockquote class="layui-elem-quote">
		<div style="position: relative; height: 26px">
			<img style="vertical-align: middle; width: 24px; height: 24px" src="${pageContext.request.contextPath }/res/imgs/camera.png" />
			&nbsp;
			<span style="font-size: 19px; position: absolute; top: 2px;">相机分布</span>
			<button class="layui-btn layui-btn-small" style="position: absolute; right: 5px; bottom: 0.5px" @click="changeFormId" v-if="showFormId==1">布设相机</button>
		</div>
	</blockquote>
	<div id="cameraMsg" style="width: 98%; height: 100%; margin-left: 25px">
		<div id="mapDiv" class="map" style="float: left; width: 58%; height: 800px; margin-right: 50px;border:1px solid black"></div>
		<transition name="slide-fade" mode="out-in" appear> <!-- 表格DIV开始 -->
		<div v-if="showFormId==1" key="tableDiv" style="float: left; width: 35%; height: 100%;">
			<table class="layui-table" lay-even lay-skin="nob">
				<colgroup>
					<col width="150">
					<col width="200">
					<col>
				</colgroup>
				<thead>
					<tr>
						<th>布设点编号</th>
						<th>布设时间</th>
						<th>经度</th>
						<th>纬度</th>
						<th>卡编号</th>
					</tr>
				</thead>
				<tbody>
					<tr>
						<td>001</td>
						<td>2016-11-29</td>
						<td>111</td>
						<td>222</td>
						<td>1</td>
					</tr>
					<tr>
						<td>002</td>
						<td>2016-11-30</td>
						<td>111</td>
						<td>222</td>
						<td>2</td>
					</tr>
				</tbody>
			</table>
		</div>
		<!-- 表格DIV结束 --> <!-- 基本信息div开始 -->
		<div v-if="showFormId==2" key="baseInfoFrom">
			<fieldset class="layui-elem-field">
				<legend>基本信息填写</legend>
				<div style="text-align: right;padding-right: 15px">
					<a href="#" @click.prevent="backTableDiv" >
						<i class="layui-icon">&#x1006;</i>
					</a>
				</div>
				<form class="layui-form" action="" v-on:submit.prevent="changeFormId">
					<div class="layui-form-item">
						<label class="layui-form-label">布设点编号</label>
						<div class="layui-input-block">
							<label class="layui-form-label" style="color: gray">自动生成</label>
						</div>
					</div>
					<div class="layui-form-item">
						<label class="layui-form-label">存储卡号</label>
						<div class="layui-input-block">
							<input type="text" placeholder="请输入存储卡号" autocomplete="off" class="layui-input">
						</div>
					</div>
					<div class="layui-form-item">
						<label class="layui-form-label">布设时间</label>
						<div class="layui-input-block">
							<input type="text" placeholder="请输入布设时间" autocomplete="off" class="layui-input">
						</div>
					</div>
					<div class="layui-form-item">
						<label class="layui-form-label">回收时间</label>
						<div class="layui-input-block">
							<input type="text" placeholder="请输入回收时间" autocomplete="off" class="layui-input">
						</div>
					</div>
					<div class="layui-form-item">
						<label class="layui-form-label">经度</label>
						<div class="layui-input-block">
							<input type="text" placeholder="请输入经度" autocomplete="off" class="layui-input">
						</div>
					</div>
					<div class="layui-form-item">
						<label class="layui-form-label">纬度</label>
						<div class="layui-input-block">
							<input type="text" placeholder="请输入纬度" autocomplete="off" class="layui-input">
						</div>
					</div>
					<div class="layui-form-item">
						<label class="layui-form-label">海拔</label>
						<div class="layui-input-block">
							<input type="text" placeholder="请输入海拔" autocomplete="off" class="layui-input">
						</div>
					</div>
					<div class="layui-form-item">
						<label class="layui-form-label">相机型号</label>
						<div class="layui-input-block">
							<input type="text" placeholder="请输入相机型号" autocomplete="off" class="layui-input">
						</div>
					</div>
					<div class="layui-form-item">
						<div class="layui-input-block">
							<button class="layui-btn" lay-submit>生境信息填写</button>
						</div>
					</div>
				</form>
			</fieldset>
		</div>
		<!-- 基本信息DIV结束 --> <!-- 生境信息DIV开始 -->
		<div v-if="showFormId==3" key="sjInfoForm">
			<fieldset class="layui-elem-field">
				<legend>生境信息填写</legend>
				<div style="text-align: right;padding-right: 15px">
					<a href="#" @click.prevent="backTableDiv" >
						<i class="layui-icon">&#x1006;</i>
					</a>
				</div>
				<form class="layui-form" action="" v-on:submit.prevent="changeFormId">
					<div class="layui-form-item">
						<div class="layui-inline">
							<div id="demo" style="padding-left: 50px">
								<div id="as"></div>
							</div>
						</div>
					</div>
					<div class="layui-form-item">
						<div class="layui-inline">
							<label class="layui-form-label">坡向</label>
							<div class="layui-input-inline" style="width: 150px;">
								<select name="px">
									<option value=""></option>
									<option value="0">东</option>
									<option value="1">南</option>
									<option value="2">西</option>
									<option value="3">北</option>
									<option value="4">东南</option>
									<option value="4">东北</option>
									<option value="4">西南</option>
									<option value="4">西北</option>
									<option value="4">无坡向</option>
								</select>
							</div>

							<label class="layui-form-label">生境类型</label>

							<div class="layui-input-inline" style="width: 150px;">
								<select name="szlx">
									<option value=""></option>
									<option value="0">落叶阔叶林</option>
									<option value="1">常绿阔叶林</option>
									<option value="2">落叶/常绿阔叶林</option>
									<option value="3">针叶林</option>
									<option value="4">针阔混交林</option>
									<option value="5">灌丛</option>
									<option value="6">草地\草甸</option>
									<option value="7">农田</option>
									<option value="8">裸岩</option>
									<option value="9">其它</option>
								</select>
							</div>
						</div>
					</div>
					<div class="layui-form-item">
						<div class="layui-inline">
							<label class="layui-form-label">森林起源</label>

							<div class="layui-input-inline" style="width: 150px;">
								<select name="slqy">
									<option value=""></option>
									<option value="0">原始林</option>
									<option value="1">次生林</option>
									<option value="2">人工针叶林</option>
								</select>
							</div>

							<label class="layui-form-label">乔木郁闭度</label>

							<div class="layui-input-inline" style="width: 150px;">
								<input type="text" autocomplete="off" class="layui-input">
							</div>
						</div>
					</div>
					<div class="layui-form-item">
						<div class="layui-inline">
							<label class="layui-form-label">乔木胸径</label>

							<div class="layui-input-inline" style="width: 150px;">
								<input type="text" autocomplete="off" class="layui-input">
							</div>

							<label class="layui-form-label">灌木优势种</label>

							<div class="layui-input-inline" style="width: 150px;">
								<input type="text" autocomplete="off" class="layui-input">
							</div>
						</div>
					</div>
					<div class="layui-form-item">
						<div class="layui-inline">
							<label class="layui-form-label">干扰类型</label>

							<div class="layui-input-inline" style="width: 150px;">
								<select name="slqy">
									<option value=""></option>
									<option value="0">游客</option>
									<option value="1">建设工程</option>
									<option value="2">伐木</option>
									<option value="3">公路</option>
									<option value="4">放牧</option>
									<option value="5">盗猎</option>
									<option value="6">采矿</option>
									<option value="7">其它</option>
								</select>
							</div>

							<label class="layui-form-label">动物痕迹</label>

							<div class="layui-input-inline" style="width: 150px;">
								<input type="text" autocomplete="off" class="layui-input">
							</div>
						</div>
					</div>
					<div class="layui-form-item">
						<div class="layui-inline">
							<label class="layui-form-label">痕迹类型</label>

							<div class="layui-input-inline" style="width: 150px;">
								<select name="slqy">
									<option value=""></option>
									<option value="0">粪便</option>
									<option value="1">脚印</option>
									<option value="2">取食痕迹</option>
									<option value="3">挖掘痕迹</option>
									<option value="4">动物身体遗落物(毛发,刺等)</option>
									<option value="5">盗猎</option>
									<option value="6">采矿</option>
									<option value="7">其它</option>
								</select>
							</div>

							<label class="layui-form-label">坡度</label>

							<div class="layui-input-inline" style="width: 150px;">
								<input type="text" autocomplete="off" class="layui-input">
							</div>
						</div>
					</div>
					<div class="layui-form-item">
						<div class="layui-inline">
							<label class="layui-form-label">小生境</label>

							<div class="layui-input-inline" style="width: 150px;">
								<select name="slqy">
									<option value=""></option>
									<option value="0">林下</option>
									<option value="1">灌丛</option>
									<option value="2">草地</option>
									<option value="3">裸岩</option>
									<option value="4">河边</option>
									<option value="5">洞穴</option>
									<option value="6">其它</option>
								</select>
							</div>

							<label class="layui-form-label">灌木高度</label>

							<div class="layui-input-inline" style="width: 150px;">
								<input type="text" autocomplete="off" class="layui-input">
							</div>
						</div>
					</div>
					<div class="layui-form-item">
						<div class="layui-inline">
							<label class="layui-form-label">干扰强度</label>

							<div class="layui-input-inline" style="width: 150px;">
								<select name="slqy">
									<option value=""></option>
									<option value="0">强</option>
									<option value="1">中</option>
									<option value="2">弱</option>
								</select>
							</div>

							<label class="layui-form-label">灌木盖度</label>

							<div class="layui-input-inline" style="width: 150px;">
								<input type="text" autocomplete="off" class="layui-input">
							</div>
						</div>
					</div>
					<div class="layui-form-item">
						<div class="layui-inline">
							<label class="layui-form-label">干扰频率</label>

							<div class="layui-input-inline" style="width: 150px;">
								<select name="slqy">
									<option value=""></option>
									<option value="0">经常</option>
									<option value="1">一般</option>
									<option value="2">很少</option>
								</select>
							</div>

							<label class="layui-form-label">乔木高度</label>

							<div class="layui-input-inline" style="width: 150px;">
								<input type="text" autocomplete="off" class="layui-input">
							</div>
						</div>
					</div>
					<div class="layui-form-item layui-form-text">
						<label class="layui-form-label">总备注</label>
						<div class="layui-input-block" style="width: 420px;">
							<textarea name="desc" placeholder="请输入内容" class="layui-textarea"></textarea>
						</div>
					</div>
					<div class="layui-form-item">
						<div class="layui-input-block">
							<button class="layui-btn" lay-submit lay-filter="formDemo">立即提交</button>
							<button type="reset" class="layui-btn layui-btn-primary">重置</button>
						</div>
					</div>
				</form>
			</fieldset>
		</div>
		<!-- 生境信息div结束 --> </transition>
	</div>
</div>
</div>
<script type="text/javascript" src="${pageContext.request.contextPath }/res/js/jquery-3.2.1.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath }/res/webuploader/js/webuploader.html5only.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath }/res/webuploader/js/diyUpload.js"></script>
<script src="https://cdn.polyfill.io/v2/polyfill.min.js?features=requestAnimationFrame,Element.prototype.classList,URL"></script>
<script src="https://openlayers.org/en/v4.1.1/build/ol.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath }/res/js/cameraDistribution.js"></script>
