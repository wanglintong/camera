<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<link rel="stylesheet" href="${pageContext.request.contextPath }/res/openlayer/ol.css" type="text/css">
<link rel="stylesheet" href="${pageContext.request.contextPath }/res/css/daterangepicker.css">
<div id="app">
	<blockquote class="layui-elem-quote">
		<div style="position: relative; height: 26px">
			<img style="vertical-align: middle; width: 24px; height: 24px" src="${pageContext.request.contextPath }/res/imgs/camera.png" />
			&nbsp;
			<span style="font-size: 19px; position: absolute; top: 2px;">分布统计</span>
		</div>
	</blockquote>
	<div>
		<div id="mapDiv" class="map" style="width: 58%; height: 800px; border: 1px solid black; margin-left: 5%; display: inline-block;"></div>
		<div id="selectInfo" style="width: 25%; height: 800px; border: 1px solid #dddddd; display: inline-block; margin-left: 2%">
			<table class="layui-table" style="margin-top: 0" lay-skin="nob">
				<thead>
					<tr>
						<th width="17%">时间</th>
						<th width="83%">
							<input type="text" placeholder="请选择时间" id="applyTime" style="height: 30px;width: 75%" />
						</th>
					</tr>
					<tr>
						<th width="17%">动物</th>
						<th width="83%">
							<input type="text" placeholder="请输入动物名称" style="height: 30px;width: 75%" />
							&nbsp;&nbsp;
							<button class="layui-btn layui-btn-normal layui-btn-small" style="width:15%;display: inline-block;">搜索</button>
						</th>
					</tr>
				</thead>
			</table>
			<div style="margin: 0 auto; width: 80%; height: 650px;">
				<table class="layui-table" style="margin-top: 0" lay-skin="nob">
					<tr>
						<td width="50%">
							<input type="checkbox">
							&nbsp;
							<font style="font-weight: bold;">动物名称</font>
						</td>
						<td width="50%" style="text-align: right;">
							<div name="open" class="layui-unselect layui-form-switch" lay-skin="_switch" style="margin-top: 0px">
								<em id="em1">隐藏</em>
								<i></i>
							</div>
						</td>
					</tr>
					<tr>
						<td width="50%">
							<input type="checkbox">
							&nbsp;大熊猫
						</td>
						<td width="50%" style="text-align: right;">
							<div name="open" class="layui-unselect layui-form-switch" lay-skin="_switch" style="margin-top: 0px">
								<em id="em1">隐藏</em>
								<i></i>
							</div>
						</td>
					</tr>
					<tr>
						<td width="50%">
							<input type="checkbox">
							&nbsp;棕熊
						</td>
						<td width="50%" style="text-align: right;">
							<div name="open" class="layui-unselect layui-form-switch" lay-skin="_switch" style="margin-top: 0px">
								<em id="em1">隐藏</em>
								<i></i>
							</div>
						</td>
					</tr>
					<tr>
						<td width="50%">
							<input type="checkbox">
							&nbsp;金丝猴
						</td>
						<td width="50%" style="text-align: right;">
							<div name="open" class="layui-unselect layui-form-switch" lay-skin="_switch" style="margin-top: 0px">
								<em id="em1">隐藏</em>
								<i></i>
							</div>
						</td>
					</tr>
				</table>
			</div>
		</div>
	</div>
</div>
<script type="text/javascript" src="${pageContext.request.contextPath }/res/js/jquery-3.2.1.min.js"></script>
<script src="https://cdn.polyfill.io/v2/polyfill.min.js?features=requestAnimationFrame,Element.prototype.classList,URL"></script>
<script src="${pageContext.request.contextPath }/res/openlayer/ol.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath }/res/js/moment.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath }/res/js/jquery.daterangepicker.js"></script>
<script src="${pageContext.request.contextPath }/res/js/statisticsByDistribution.js"></script>