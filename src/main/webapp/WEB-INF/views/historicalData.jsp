<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<link rel="stylesheet" href="${pageContext.request.contextPath }/res/css/font-awesome.min.css">
<link rel="stylesheet" href="${pageContext.request.contextPath }/res/css/reset.css">
<link rel="stylesheet" href="${pageContext.request.contextPath }/res/css/style.css">
<link rel="stylesheet" href="${pageContext.request.contextPath }/res/css/daterangepicker.css">
<style>
#sjInfoTable select {
	width: 100%
}

.myFooterDiv {
	float: left;
	width: 100%;
	height: 80px;
	margin-top: 10px;
}

#round {
	width: 100%;
	height: 100%;
	-moz-border-radius: 15px;
	-webkit-border-radius: 15px;
	border-radius: 15px;
}

#page3 img {
	width: 192px;
	height: 108px;
	margin: 3px;
}

.imgBlock {
	width: 100%;
	min-height: 120px;
	max-height: 400px;
	overflow: auto;
}
</style>
<div id="app">
	<blockquote class="layui-elem-quote">
		<div style="position: relative; height: 26px">
			<img style="vertical-align: middle; width: 24px; height: 24px" src="${pageContext.request.contextPath }/res/imgs/data.png" />
			&nbsp;
			<span style="font-size: 19px; position: absolute; top: 2px;">历史数据</span>
			<button class="layui-btn layui-btn-small" style="position: absolute; right: 5px; bottom: 0.5px" @click="back" v-if="showPageNum!=1">返回</button>
		</div>
	</blockquote>
	<div id="page1" v-show="showPageNum==1">
		<!-- 条件选择开始 -->
		<div style="width: 90%; margin: 0 auto; padding: 20px">
			<div class="clearfix">
				<p class="shaixuan-tj floatLeft clearfix">
					<span>
						<strong>筛选条件</strong>
					</span>
					<i class="icon-angle-right"></i>
				</p>
				<p id="sxbtn" class="shaixuan-btn clearfix">
					<span>
						<em>收起筛选</em>
						<i class="icon-angle-up"></i>
					</span>
				</p>
			</div>
			<div id="page-search-store" class="mb10 border sxcon" style="width: 100%;">
				<div class="search-by by-category relative" style="width: 95%">
					<dl class="relative clearfix" style="width: 100%">
						<dt class="floatLeft" style="width: 10%">
							<a href="/">存储卡编号：</a>
						</dt>
						<dd class="floatLeft show-con" style="width: 80%">
							<a href="/" class="">卡303232</a>
							<a href="/" class="">卡303232</a>
							<a href="/" class="">卡303232</a>
							<a href="/" class="">卡303232</a>
							<a href="/" class="">卡303232</a>
							<a href="/" class="">卡303232</a>
							<a href="/" class="">卡303232</a>
							<a href="/" class="">卡303232</a>
							<a href="/" class="">卡303232</a>
							<a href="/" class="">卡303232</a>
							<a href="/" class="">卡303232</a>
							<a href="/" class="">卡303232</a>
							<a href="/" class="">卡303232</a>
						</dd>
						<dd class="floatLeft show-more">
							<h3 class="pointer clearfix">
								<span>更多</span>
								<i class="icon-angle-down"></i>
							</h3>
						</dd>
					</dl>
					<dl class="relative clearfix" style="width: 100%">
						<dt class="floatLeft" style="width: 10%">
							<a href="/">布设人员：</a>
						</dt>
						<dd class="floatLeft show-con" style="width: 80%">
							<a href="/" class="">张三哈哈</a>
							<a href="/" class="">张三哈哈</a>
							<a href="/" class="">张三哈哈</a>
							<a href="/" class="">张三哈哈</a>
							<a href="/" class="">张三哈哈</a>
							<a href="/" class="">张三哈哈</a>
							<a href="/" class="">张三哈哈</a>
							<a href="/" class="">张三哈哈</a>
							<a href="/" class="">张三哈哈</a>
							<a href="/" class="">张三哈哈</a>
							<a href="/" class="">张三哈哈</a>
							<a href="/" class="">张三哈哈</a>
							<a href="/" class="">张三哈哈</a>
							<a href="/" class="">张三哈哈</a>
							<a href="/" class="">张三哈哈</a>
							<a href="/" class="">张三哈哈</a>
							<a href="/" class="">张三哈哈</a>
							<a href="/" class="">张三哈哈</a>
							<a href="/" class="">张三哈哈</a>
							<a href="/" class="">张三哈哈</a>
						</dd>
						<dd class="floatLeft show-more">
							<h3 class="pointer clearfix">
								<span>更多</span>
								<i class="icon-angle-down"></i>
							</h3>
						</dd>
					</dl>
					<dl class="relative clearfix" style="width: 100%">
						<dt class="floatLeft" style="width: 10%">
							<a href="/">回收人员：</a>
						</dt>
						<dd class="floatLeft show-con" style="width: 80%">
							<a href="/" class="">张三哈哈</a>
							<a href="/" class="">张三哈哈</a>
							<a href="/" class="">张三哈哈</a>
							<a href="/" class="">张三哈哈</a>
							<a href="/" class="">张三哈哈</a>
							<a href="/" class="">张三哈哈</a>
							<a href="/" class="">张三哈哈</a>
							<a href="/" class="">张三哈哈</a>
							<a href="/" class="">张三哈哈</a>
							<a href="/" class="">张三哈哈</a>
							<a href="/" class="">张三哈哈</a>
							<a href="/" class="">张三哈哈</a>
							<a href="/" class="">张三哈哈</a>
							<a href="/" class="">张三哈哈</a>
							<a href="/" class="">张三哈哈</a>
							<a href="/" class="">张三哈哈</a>
							<a href="/" class="">张三哈哈</a>
							<a href="/" class="">张三哈哈</a>
							<a href="/" class="">张三哈哈</a>
							<a href="/" class="">张三哈哈</a>
						</dd>
						<dd class="floatLeft show-more">
							<h3 class="pointer clearfix">
								<span>更多</span>
								<i class="icon-angle-down"></i>
							</h3>
						</dd>
					</dl>
					<dl class="relative clearfix" style="border-bottom: 0; width: 100%">
						<dt class="floatLeft" style="width: 10%">
							<span id="date-range">时间：</span>
						</dt>
						<dd class="floatLeft show-con">
							<div class="layui-inline" style="height: 30px; margin-left: 20px;">
								<input id='applyTime' readonly style="height: 90%; width: 200px" class="layui-input" placeholder="请选择时间">
							</div>
						</dd>
					</dl>
					<dl class="relative clearfix" style="border-bottom: 0; width: 100%">
						<dt class="floatLeft" style="width: 10%">
							<span id="date-range">回收与鉴定：</span>
						</dt>
						<dd class="floatLeft show-con">
							<div class="layui-inline" style="height: 30px; margin-left: 20px;">
								是否回收&nbsp;
								<div id="open1" class="layui-unselect layui-form-switch" lay-skin="_switch" style="margin-top: 0px">
									<em id="em1">否</em>
									<i></i>
								</div>
								&nbsp;&nbsp;&nbsp;是否鉴定&nbsp;
								<div id="open2" class="layui-unselect layui-form-switch" lay-skin="_switch" style="margin-top: 0px">
									<em id="em2">否</em>
									<i></i>
								</div>
							</div>
						</dd>
					</dl>
				</div>
			</div>
		</div>
		<!-- 条件选择结束 -->
		<br />
		<hr>
		<!-- 表格 开始-->
		<div style="width: 90%; margin: 0 auto; padding: 20px">
			<table class="layui-table" lay-skin="line">
				<colgroup>
					<col width="150">
					<col width="200">
					<col>
				</colgroup>
				<thead>
					<tr>
						<th>布设时间</th>
						<th>回收时间</th>
						<th>布设点编号</th>
						<th>存储卡编号</th>
						<th>布设人员</th>
						<th>回收人员</th>
						<th>回收情况</th>
						<th>甄选情况</th>
						<th>操作</th>
					</tr>
				</thead>
				<tbody>
					<tr>
						<td>2016-11-29</td>
						<td>2016-11-29</td>
						<td>adasdas</td>
						<td>zzzzzzz</td>
						<td>张三</td>
						<td>李四</td>
						<td>未收回</td>
						<td>未鉴定</td>
						<td>
							<button class="layui-btn layui-btn-mini layui-btn-danger" @click="nextPage">详情</button>
							<button class="layui-btn layui-btn-mini">删除</button>
						</td>
					</tr>
					<tr>
						<td>2016-11-29</td>
						<td>2016-11-29</td>
						<td>adasdas</td>
						<td>zzzzzzz</td>
						<td>张三</td>
						<td>李四</td>
						<td>未收回</td>
						<td>未鉴定</td>
						<td>
							<button class="layui-btn layui-btn-mini layui-btn-danger">详情</button>
							<button class="layui-btn layui-btn-mini">删除</button>
						</td>
					</tr>
					<tr>
						<td>2016-11-29</td>
						<td>2016-11-29</td>
						<td>adasdas</td>
						<td>zzzzzzz</td>
						<td>张三</td>
						<td>李四</td>
						<td>未收回</td>
						<td>未鉴定</td>
						<td>
							<button class="layui-btn layui-btn-mini layui-btn-danger">详情</button>
							<button class="layui-btn layui-btn-mini">删除</button>
						</td>
					</tr>
					<tr>
						<td>2016-11-29</td>
						<td>2016-11-29</td>
						<td>adasdas</td>
						<td>zzzzzzz</td>
						<td>张三</td>
						<td>李四</td>
						<td>未收回</td>
						<td>未鉴定</td>
						<td>
							<button class="layui-btn layui-btn-mini layui-btn-danger">详情</button>
							<button class="layui-btn layui-btn-mini">删除</button>
						</td>
					</tr>
					<tr>
						<td>2016-11-29</td>
						<td>2016-11-29</td>
						<td>adasdas</td>
						<td>zzzzzzz</td>
						<td>张三</td>
						<td>李四</td>
						<td>未收回</td>
						<td>未鉴定</td>
						<td>
							<button class="layui-btn layui-btn-mini layui-btn-danger">详情</button>
							<button class="layui-btn layui-btn-mini">删除</button>
						</td>
					</tr>
				</tbody>
			</table>
		</div>
		<!-- 表格结束 -->

		<!-- 分页开始 -->
		<div id="demo1" style="text-align: center"></div>

		<!-- 分页结束 -->
	</div>
	<!-- 详情页开始 -->
	<div id="page2" v-show="showPageNum==2">
		<div style="width: 90%; margin: 0 auto; padding: 20px">
			<div>
				基本信息&nbsp;
				<a href="#" @click.prevent='showBaseInfoForm'>
					<i class="layui-icon">&#xe642;</i>
				</a>
			</div>
			<!-- 基本信息表格开始 -->
			<table id="tab1" class="layui-table">
				<colgroup>
					<col width="150">
					<col width="200">
					<col>
				</colgroup>
				<thead>
					<tr>
						<th style="width: 16%">布设时间</th>
						<th style="width: 16%">回收时间</th>
						<th style="width: 16%">布设点编号</th>
						<th style="width: 16%">存储卡编号</th>
						<th style="width: 16%">布设人员</th>
						<th style="width: 16%">回收人员</th>
					</tr>
				</thead>
				<tbody>
					<tr>
						<td>2017-03-03</td>
						<td>2016-11-29</td>
						<td>11111</td>
						<td>11111</td>
						<td>张三</td>
						<td>李四</td>
					</tr>
					</tr>
				</tbody>
				<thead>
					<tr>
						<th>经度</th>
						<th>纬度</th>
						<th>海拔</th>
						<th>相机型号</th>
						<th></th>
						<th></th>
					</tr>
				</thead>
				<tbody>
					<tr>
						<td>111111</td>
						<td>22222</td>
						<td>33333</td>
						<td>nikon</td>
						<td></td>
						<td></td>
					</tr>
					</tr>
				</tbody>
			</table>
			<!-- 基本信息表格结束-->
			<br />
			<div>
				生境信息&nbsp;
				<a href="#" @click.prevent='showSjInfoForm'>
					<i class="layui-icon">&#xe642;</i>
				</a>
			</div>
			<!-- 生境信息表格开始 -->
			<table id="tab2" class="layui-table">
				<colgroup>
					<col width="150">
					<col width="200">
					<col>
				</colgroup>
				<thead>
					<tr>
						<th style="width: 16%">坡向</th>
						<th style="width: 16%">乔木高度</th>
						<th style="width: 16%">生境类型</th>
						<th style="width: 16%">森林起源</th>
						<th style="width: 16%">灌木高度</th>
						<th style="width: 16%">乔木浓郁度</th>
					</tr>
				</thead>
				<tbody>
					<tr>
						<td>东南</td>
						<td>190</td>
						<td>阔叶混交</td>
						<td></td>
						<td>80%</td>
						<td>20%</td>
					</tr>
					</tr>
				</tbody>
				<thead>
					<tr>
						<th>乔木胸径</th>
						<th>干扰频率</th>
						<th>灌木优势种</th>
						<th>动物痕迹</th>
						<th>灌木高度</th>
						<th>干扰类型</th>
					</tr>
				</thead>
				<tbody>
					<tr>
						<td></td>
						<td></td>
						<td>芦苇</td>
						<td>爪印</td>
						<td></td>
						<td>放牧</td>
					</tr>
					</tr>
				</tbody>
				<thead>
					<tr>
						<th>1KM网格编号</th>
						<th>痕迹备注</th>
						<th>痕迹类型</th>
						<th>干扰强度</th>
						<th>小生境</th>
						<th>总备注</th>
					</tr>
				</thead>
				<tbody>
					<tr>
						<td>004</td>
						<td>无</td>
						<td>爪印</td>
						<td>高</td>
						<td>河边</td>
						<td>无</td>
					</tr>
					</tr>
				</tbody>
			</table>
			<!-- 生境信息表格结束 -->
		</div>
		<!-- 图片显示区域开始 -->
		<div style="width: 90%; margin: 0 auto; padding: 20px; margin-top: 10px">
			<div>甄选照片</div>
			<br />
			<div id="div1" style="width: 14%; height: 210px; display: inline-block;" @click.prevent="nextPage">
				<img id="round" src='${pageContext.request.contextPath }/res/imgs/daxiongmao.jpg' />
				<div>
					<span style="display: inline-block; float: left">大熊猫</span>
					<span style="display: inline-block; float: right;">200</span>
				</div>
			</div>
			<div id="div2" style="width: 14%; margin-left: 2.5%; height: 210px; display: inline-block;">
				<img id="round" src='${pageContext.request.contextPath }/res/imgs/yezhu.jpg' />
				<div>
					<span style="display: inline-block; float: left">大熊猫</span>
					<span style="display: inline-block; float: right;">200</span>
				</div>
			</div>
			<div id="div3" style="width: 14%; margin-left: 2.5%; height: 210px; display: inline-block;">
				<img id="round" src='${pageContext.request.contextPath }/res/imgs/jinsihou.jpg' />
				<div>
					<span style="display: inline-block; float: left">大熊猫</span>
					<span style="display: inline-block; float: right;">200</span>
				</div>
			</div>
			<div id="div4" style="width: 14%; margin-left: 2.5%; height: 210px; display: inline-block;">
				<img id="round" src='${pageContext.request.contextPath }/res/imgs/xuebao.jpg' />
				<div>
					<span style="display: inline-block; float: left">大熊猫</span>
					<span style="display: inline-block; float: right;">200</span>
				</div>
			</div>
			<div id="div5" style="width: 14%; margin-left: 2.5%; height: 210px; display: inline-block;">
				<img id="round" src='${pageContext.request.contextPath }/res/imgs/huli.jpg' />
				<div>
					<span style="display: inline-block; float: left">大熊猫</span>
					<span style="display: inline-block; float: right;">200</span>
				</div>
			</div>
			<div id="div6" style="width: 14%; margin-left: 2.5%; height: 210px; display: inline-block;">
				<img id="round" src='${pageContext.request.contextPath }/res/imgs/she.jpg' />
				<div>
					<span style="display: inline-block; float: left">大熊猫</span>
					<span style="display: inline-block; float: right;">200</span>
				</div>
			</div>
		</div>
		<!-- 图片显示区域结束 -->
		<div class="myFooterDiv"></div>
	</div>
	<!-- 详情页结束 -->

	<!-- 具体动物照片显示开始 -->
	<div id="page3" v-show="showPageNum==3">
		<div id="imgContainer" style="width: 95%; margin: 0 auto; padding: 20px">
			<div>
				<p>2014-02-11&nbsp;&nbsp;相机编号：2222222</p>
				<hr>
				<div class="imgBlock" id="layImgContainer1">
					<img lay-src="${pageContext.request.contextPath }/res/imgs/ceshi/1.jpg" />
					<img lay-src="${pageContext.request.contextPath }/res/imgs/ceshi/2.jpg" />
					<img lay-src="${pageContext.request.contextPath }/res/imgs/ceshi/3.jpg" />
					<img lay-src="${pageContext.request.contextPath }/res/imgs/ceshi/4.jpg" />
					<img lay-src="${pageContext.request.contextPath }/res/imgs/ceshi/5.jpg" />
				</div>
			</div>
			<div>
				<p>2014-02-11&nbsp;&nbsp;相机编号：2222222</p>
				<hr>
				<div class="imgBlock" id="layImgContainer2">
					<img lay-src="${pageContext.request.contextPath }/res/imgs/ceshi/1.jpg" />
					<img lay-src="${pageContext.request.contextPath }/res/imgs/ceshi/2.jpg" />
					<img lay-src="${pageContext.request.contextPath }/res/imgs/ceshi/3.jpg" />
					<img lay-src="${pageContext.request.contextPath }/res/imgs/ceshi/4.jpg" />
					<img lay-src="${pageContext.request.contextPath }/res/imgs/ceshi/5.jpg" />
					<img lay-src="${pageContext.request.contextPath }/res/imgs/ceshi/6.jpg" />
					<img lay-src="${pageContext.request.contextPath }/res/imgs/ceshi/7.jpg" />
					<img lay-src="${pageContext.request.contextPath }/res/imgs/ceshi/8.jpg" />
					<img lay-src="${pageContext.request.contextPath }/res/imgs/ceshi/9.jpg" />
					<img lay-src="${pageContext.request.contextPath }/res/imgs/ceshi/1.jpg" />
					<img lay-src="${pageContext.request.contextPath }/res/imgs/ceshi/2.jpg" />
					<img lay-src="${pageContext.request.contextPath }/res/imgs/ceshi/3.jpg" />
					<img lay-src="${pageContext.request.contextPath }/res/imgs/ceshi/4.jpg" />
					<img lay-src="${pageContext.request.contextPath }/res/imgs/ceshi/5.jpg" />
					<img lay-src="${pageContext.request.contextPath }/res/imgs/ceshi/6.jpg" />
					<img lay-src="${pageContext.request.contextPath }/res/imgs/ceshi/7.jpg" />
					<img lay-src="${pageContext.request.contextPath }/res/imgs/ceshi/8.jpg" />
					<img lay-src="${pageContext.request.contextPath }/res/imgs/ceshi/9.jpg" />
					<img lay-src="${pageContext.request.contextPath }/res/imgs/ceshi/1.jpg" />
					<img lay-src="${pageContext.request.contextPath }/res/imgs/ceshi/2.jpg" />
					<img lay-src="${pageContext.request.contextPath }/res/imgs/ceshi/3.jpg" />
					<img lay-src="${pageContext.request.contextPath }/res/imgs/ceshi/4.jpg" />
					<img lay-src="${pageContext.request.contextPath }/res/imgs/ceshi/5.jpg" />
					<img lay-src="${pageContext.request.contextPath }/res/imgs/ceshi/6.jpg" />
					<img lay-src="${pageContext.request.contextPath }/res/imgs/ceshi/7.jpg" />
					<img lay-src="${pageContext.request.contextPath }/res/imgs/ceshi/8.jpg" />
					<img lay-src="${pageContext.request.contextPath }/res/imgs/ceshi/9.jpg" />
					<img lay-src="${pageContext.request.contextPath }/res/imgs/ceshi/1.jpg" />
					<img lay-src="${pageContext.request.contextPath }/res/imgs/ceshi/2.jpg" />
					<img lay-src="${pageContext.request.contextPath }/res/imgs/ceshi/3.jpg" />
					<img lay-src="${pageContext.request.contextPath }/res/imgs/ceshi/4.jpg" />
					<img lay-src="${pageContext.request.contextPath }/res/imgs/ceshi/5.jpg" />
					<img lay-src="${pageContext.request.contextPath }/res/imgs/ceshi/6.jpg" />
					<img lay-src="${pageContext.request.contextPath }/res/imgs/ceshi/7.jpg" />
					<img lay-src="${pageContext.request.contextPath }/res/imgs/ceshi/8.jpg" />
					<img lay-src="${pageContext.request.contextPath }/res/imgs/ceshi/9.jpg" />
					<img lay-src="${pageContext.request.contextPath }/res/imgs/ceshi/1.jpg" />
					<img lay-src="${pageContext.request.contextPath }/res/imgs/ceshi/2.jpg" />
					<img lay-src="${pageContext.request.contextPath }/res/imgs/ceshi/3.jpg" />
					<img lay-src="${pageContext.request.contextPath }/res/imgs/ceshi/4.jpg" />
					<img lay-src="${pageContext.request.contextPath }/res/imgs/ceshi/5.jpg" />
					<img lay-src="${pageContext.request.contextPath }/res/imgs/ceshi/6.jpg" />
					<img lay-src="${pageContext.request.contextPath }/res/imgs/ceshi/7.jpg" />
					<img lay-src="${pageContext.request.contextPath }/res/imgs/ceshi/8.jpg" />
					<img lay-src="${pageContext.request.contextPath }/res/imgs/ceshi/9.jpg" />
					<img lay-src="${pageContext.request.contextPath }/res/imgs/ceshi/1.jpg" />
					<img lay-src="${pageContext.request.contextPath }/res/imgs/ceshi/2.jpg" />
					<img lay-src="${pageContext.request.contextPath }/res/imgs/ceshi/3.jpg" />
					<img lay-src="${pageContext.request.contextPath }/res/imgs/ceshi/4.jpg" />
					<img lay-src="${pageContext.request.contextPath }/res/imgs/ceshi/5.jpg" />
					<img lay-src="${pageContext.request.contextPath }/res/imgs/ceshi/6.jpg" />
					<img lay-src="${pageContext.request.contextPath }/res/imgs/ceshi/7.jpg" />
					<img lay-src="${pageContext.request.contextPath }/res/imgs/ceshi/8.jpg" />
					<img lay-src="${pageContext.request.contextPath }/res/imgs/ceshi/9.jpg" />
					<img lay-src="${pageContext.request.contextPath }/res/imgs/ceshi/1.jpg" />
					<img lay-src="${pageContext.request.contextPath }/res/imgs/ceshi/2.jpg" />
					<img lay-src="${pageContext.request.contextPath }/res/imgs/ceshi/3.jpg" />
					<img lay-src="${pageContext.request.contextPath }/res/imgs/ceshi/4.jpg" />
					<img lay-src="${pageContext.request.contextPath }/res/imgs/ceshi/5.jpg" />
					<img lay-src="${pageContext.request.contextPath }/res/imgs/ceshi/6.jpg" />
					<img lay-src="${pageContext.request.contextPath }/res/imgs/ceshi/7.jpg" />
					<img lay-src="${pageContext.request.contextPath }/res/imgs/ceshi/8.jpg" />
					<img lay-src="${pageContext.request.contextPath }/res/imgs/ceshi/9.jpg" />
					<img lay-src="${pageContext.request.contextPath }/res/imgs/ceshi/1.jpg" />
					<img lay-src="${pageContext.request.contextPath }/res/imgs/ceshi/2.jpg" />
					<img lay-src="${pageContext.request.contextPath }/res/imgs/ceshi/3.jpg" />
					<img lay-src="${pageContext.request.contextPath }/res/imgs/ceshi/4.jpg" />
					<img lay-src="${pageContext.request.contextPath }/res/imgs/ceshi/5.jpg" />
					<img lay-src="${pageContext.request.contextPath }/res/imgs/ceshi/6.jpg" />
					<img lay-src="${pageContext.request.contextPath }/res/imgs/ceshi/7.jpg" />
					<img lay-src="${pageContext.request.contextPath }/res/imgs/ceshi/8.jpg" />
					<img lay-src="${pageContext.request.contextPath }/res/imgs/ceshi/9.jpg" />
				</div>
			</div>
		</div>
	</div>
	<!-- 具体动物照片显示结束 -->
</div>

<script type="text/javascript" src="${pageContext.request.contextPath }/res/js/jquery.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath }/res/js/moment.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath }/res/js/jquery.daterangepicker.js"></script>
<script src="${pageContext.request.contextPath }/res/js/historicalData.js"></script>