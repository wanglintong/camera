<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<style>
#round {
	width: 100%;
	height: 100%;
	-moz-border-radius: 15px;
	-webkit-border-radius: 15px;
	border-radius: 15px;
}

.imgBlock {
	width: 40%;
	height: 384px;
	border: 1px solid #DDDDDD;
	overflow: auto;
	display: inline-block;
	margin-right: 5%;
	display: inline-block;
}

.imgShow {
	width: 512px;
	height: 384px;
	border: 1px solid #DDDDDD;
	vertical-align: top;
	display: inline-block;
}

.imgBlock img {
	width: 192px;
	height: 108px;
	margin: 3px;
}
</style>
<div id="app">
	<blockquote class="layui-elem-quote">
		<div style="position: relative; height: 26px">
			<img style="vertical-align: middle; width: 24px; height: 24px" src="${pageContext.request.contextPath }/res/imgs/data.png" />
			&nbsp;
			<span style="font-size: 19px; position: absolute; top: 2px;">动物分类统计</span>
			<button class="layui-btn layui-btn-small" style="position: absolute; right: 5px; bottom: 0.5px" @click="back" v-if="showPageNum!=1">返回</button>
		</div>
	</blockquote>
	<!-- page1 -->
	<div id="page1" v-show="showPageNum==1">
		<!-- 动物显示开始 -->
		<div style="width: 90%; margin: 0 auto; padding: 20px">
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
		<!-- 动物显示结束 -->
	</div>
	<!-- page1 -->

	<!-- page2 -->
	<div id="page2" v-show="showPageNum==2">
		<div style="width: 90%; margin: 0 auto; padding: 20px; text-align: center;">
			<div style="height: 40px; text-align: left; margin-left: 9%">
				时间：
				<input style="display: inline-block;" placeholder="请选择时间" onclick="layui.laydate({elem: this, istime: true, format: 'YYYY-MM'})">
			</div>
			<div class="imgBlock" id="layImgContainer">
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
			<img class="imgShow" id="imgShow" />
		</div>
		<hr>
		<div style="width: 90%; margin: 0 auto; padding: 20px; text-align: center">
			<div style="border: 1px solid #DDDDDD">
				<div style="text-align: right; margin-bottom: 30px;padding: 10px">
					<button class="layui-btn">根据时间统计</button>
					<button class="layui-btn layui-btn-primary">根据生境统计</button>
				</div>
				<div style="display: inline-block;">
					<div style="text-align: left; padding-left: 20px">
						时间选择：
						<select id="time1" style="width: 80px">

						</select>
					</div>
					<div id="charts1" style="width: 600px; height: 400px; padding: 20px"></div>
				</div>
				<div style="display: inline-block;">
					<div style="text-align: left; padding-left: 20px">
						时间选择：
						<select id="time2" style="width: 80px">

						</select>
					</div>
					<div id="charts2" style="width: 600px; height: 400px; padding: 20px"></div>
				</div>
			</div>
		</div>
	</div>
	<!-- page2 -->
</div>
<script type="text/javascript" src="${pageContext.request.contextPath }/res/js/jquery.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath }/res/js/echarts.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath }/res/js/statisticsByAnimal.js"></script>