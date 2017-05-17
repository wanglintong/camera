<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<style>
#imgContainer img {
	width: 192px;
	height: 108px;
	margin: 3px;
}
#monthImgContainer img {
	width: 192px;
	height: 108px;
	margin: 3px;
}
.imgBlock {
	width: 100%;
	min-height: 120px;
	max-height: 220px;
	overflow: hidden;
}
</style>
<div id="app">
	<blockquote class="layui-elem-quote">
		<div style="position: relative; height: 26px">
			<img style="vertical-align: middle; width: 24px; height: 24px" src="${pageContext.request.contextPath }/res/imgs/data.png" />
			&nbsp;
			<span style="font-size: 19px; position: absolute; top: 2px;">时间分类统计</span>
			<button class="layui-btn layui-btn-small" style="position: absolute; right: 5px; bottom: 0.5px" @click="back" v-if="mode==3">返回</button>
		</div>
	</blockquote>
	<div style="width: 95%; margin: 0 auto; text-align: right" v-show="mode!=3">
		<select style="height: 24px">
			<option>2016</option>
			<option selected>2017</option>
		</select>
		&nbsp;&nbsp;
		<div id="changeMode" class="layui-unselect layui-form-switch" lay-skin="_switch" style="margin-top: 0px" @click.prevent="changeMode">
			<em id="em">图文</em>
			<i></i>
		</div>
	</div>
	<!-- 图文模式 -->
	<div id="imgContainer" style="width: 95%; margin: 0 auto; padding: 20px" v-show="mode==1">
		<div>
			<p>
				2014/03月&nbsp;&nbsp;照片:222&nbsp;视频:335&nbsp;大熊猫:225&nbsp;金丝猴:20&nbsp;其它:35&nbsp;&nbsp;
				<a href="#" style="color: #00BBFF; float: right;" @click.prevent="detailInfo">进入>>></a>
			</p>
			<hr>
			<div class="imgBlock">
				<img src="${pageContext.request.contextPath }/res/imgs/ceshi/1.jpg" />
				<img src="${pageContext.request.contextPath }/res/imgs/ceshi/2.jpg" />
				<img src="${pageContext.request.contextPath }/res/imgs/ceshi/3.jpg" />
				<img src="${pageContext.request.contextPath }/res/imgs/ceshi/4.jpg" />
				<img src="${pageContext.request.contextPath }/res/imgs/ceshi/5.jpg" />
			</div>
			<br />
		</div>
		<div>
			<p>
				2014/04月&nbsp;&nbsp;照片:222&nbsp;视频:335&nbsp;大熊猫:225&nbsp;金丝猴:20&nbsp;其它:35&nbsp;&nbsp;
				<a href="#" style="color: #00BBFF; float: right;">进入>>></a>
			</p>
			<hr>
			<div class="imgBlock">
				<img src="${pageContext.request.contextPath }/res/imgs/ceshi/1.jpg" />
				<img src="${pageContext.request.contextPath }/res/imgs/ceshi/2.jpg" />
				<img src="${pageContext.request.contextPath }/res/imgs/ceshi/3.jpg" />
				<img src="${pageContext.request.contextPath }/res/imgs/ceshi/4.jpg" />
				<img src="${pageContext.request.contextPath }/res/imgs/ceshi/5.jpg" />
				<img src="${pageContext.request.contextPath }/res/imgs/ceshi/1.jpg" />
				<img src="${pageContext.request.contextPath }/res/imgs/ceshi/2.jpg" />
				<img src="${pageContext.request.contextPath }/res/imgs/ceshi/3.jpg" />
			</div>
			<br />
		</div>
		<div>
			<p>
				2014/05月&nbsp;&nbsp;照片:222&nbsp;视频:335&nbsp;大熊猫:225&nbsp;金丝猴:20&nbsp;其它:35&nbsp;&nbsp;
				<a href="#" style="color: #00BBFF; float: right;">进入>>></a>
			</p>
			<hr>
			<div class="imgBlock">
				<img src="${pageContext.request.contextPath }/res/imgs/ceshi/1.jpg" />
				<img src="${pageContext.request.contextPath }/res/imgs/ceshi/2.jpg" />
				<img src="${pageContext.request.contextPath }/res/imgs/ceshi/3.jpg" />
			</div>
			<br />
		</div>
	</div>
	<!-- 图文模式 -->

	<!-- 统计图模式 -->
	<div id="imgContainer" style="width: 95%; margin: 0 auto; padding: 20px" v-show="mode==2">
		<div id="charts1" style="width: 1080px; height: 400px;margin: 0 auto"></div>
		<div id="charts2" style="width: 1080px; height: 400px;margin: 0 auto"></div>
	</div>
	<!-- 统计图模式 -->
	
	
	<!-- 具体月份模式 -->
	<div id="monthImgContainer" style="width: 95%; margin: 0 auto; padding: 20px" v-show="mode==3">
		<div>
			<p>
				2014/03/11&nbsp;&nbsp;照片:222&nbsp;视频:335&nbsp;大熊猫:225&nbsp;金丝猴:20&nbsp;其它:35&nbsp;&nbsp;
			</p>
			<hr>
			<div class="imgBlock">
				<img src="${pageContext.request.contextPath }/res/imgs/animals/laohu.jpg" />
				<img src="${pageContext.request.contextPath }/res/imgs/animals/shizi.jpg" />
				<img src="${pageContext.request.contextPath }/res/imgs/animals/daishu.jpg" />
				<img src="${pageContext.request.contextPath }/res/imgs/animals/changjinglu.jpg" />
			</div>
			<br />
		</div>
		<div>
			<p>
				2014/03/12&nbsp;&nbsp;照片:222&nbsp;视频:335&nbsp;大熊猫:225&nbsp;金丝猴:20&nbsp;其它:35&nbsp;&nbsp;
			</p>
			<hr>
			<div class="imgBlock">
				<img src="${pageContext.request.contextPath }/res/imgs/animals/xuebao.jpg" />
				<img src="${pageContext.request.contextPath }/res/imgs/animals/jinsihou.jpg" />
				<img src="${pageContext.request.contextPath }/res/imgs/animals/laohu.jpg" />
				<img src="${pageContext.request.contextPath }/res/imgs/animals/shizi.jpg" />
				<img src="${pageContext.request.contextPath }/res/imgs/animals/daxiang.jpg" />
				<img src="${pageContext.request.contextPath }/res/imgs/animals/xiongmao.jpg" />
				<img src="${pageContext.request.contextPath }/res/imgs/animals/changjinglu.jpg" />
				<img src="${pageContext.request.contextPath }/res/imgs/animals/daishu.jpg" />
				<img src="${pageContext.request.contextPath }/res/imgs/animals/ying.jpg" />
				<img src="${pageContext.request.contextPath }/res/imgs/animals/wuya.jpg" />
			</div>
			<br />
		</div>
		<div>
			<p>
				2014/03/13&nbsp;&nbsp;照片:222&nbsp;视频:335&nbsp;大熊猫:225&nbsp;金丝猴:20&nbsp;其它:35&nbsp;&nbsp;
			</p>
			<hr>
			<div class="imgBlock">
				<img src="${pageContext.request.contextPath }/res/imgs/animals/ying.jpg" />
				<img src="${pageContext.request.contextPath }/res/imgs/animals/laohu.jpg" />
				<img src="${pageContext.request.contextPath }/res/imgs/animals/shizi.jpg" />
			</div>
			<br />
		</div>
	</div>
	<!-- 具体月份模式 -->
</div>









<script type="text/javascript" src="${pageContext.request.contextPath }/res/js/jquery.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath }/res/js/echarts.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath }/res/js/statisticsByTime.js"></script>