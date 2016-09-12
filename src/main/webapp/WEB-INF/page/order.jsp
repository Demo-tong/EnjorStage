<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html lang="zh-cn">
<head>
<meta charset="utf-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<meta http-equiv="Cache-Control" content="no-siteapp" />
<meta name="renderer" content="webkit" />
<meta name="viewport"
	content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" />
<title>订单确认</title>

<link rel="stylesheet" type="text/css" href="../css/planeui.min.css" />
<link rel='stylesheet' href='../css/login.css'>
<link rel="stylesheet" type="text/css"
	href="../css/bootstrap-3.3.5/dist/css/bootstrap.min.css">
<script src="../css/bootstrap-3.3.5/dist/js/jquery.min.js"></script>
<script src="../css/bootstrap-3.3.5/dist/js/bootstrap.min.js"></script>


</head>
<body style="background: #f7f7f7">
	<!--[if lte IE 9]>
<div class="pui-layout pui-browsehappy">
    <a href="javascript:;" class="pui-close" onclick="document.body.removeChild(this.parentNode);"></a>
    <p>您正在使用 <strong class="pui-text-yellow pui-text-xl">过时</strong> 的非现代浏览器，<strong class="pui-text-success pui-text-xl">91.23%</strong> 的人选择 <a href="http://browsehappy.com/" target="_blank" class="pui-text-green-400 pui-text-xl"><strong>升级浏览器</strong></a>，获得了更好、更安全的浏览体验！</p>
</div>
<![endif]-->



	<div style="background: #f7f7f7">
		<div style="background: #f7f7f7">
			<div style="margin: 0 40%;">
				<h1>
					<i class="glyphicon glyphicon-pencil"></i> 订单确认
				</h1>
			</div>

			<form id="orderSure" name="orderSure" method="post"
				action="${pageContext.request.contextPath }/order/alipayLoad">
				<table class="table table-condensed"
					style="margin: 0 25%; width: 50%">
					<tr>
						<td class="success"><h4>
								<div class="form-group">
									<div class="input-group">
										<span class="input-group-addon glyphicon glyphicon-map-marker"></span><input
											type="text" name="address" class="form-control"
											maxlength="50" placeholder="您的收货地址" value="${user.username}">
									</div>
								</div>
							</h4></td>
					</tr>

					<tr>
						<td class="warning">
							<h4>【金色24期免息】vivo X7 全网通 4GB+64GB 移动联通电信4G手机 金色 4G+64G全网通</h4>
						</td>
					</tr>

					<tr>
						<td class="danger row">
							<div class="col-md-6">
								<h4>
									單價：<span>${price}</span>
								</h4>
							</div>
							<div class="col-md-6">
								<h4>數量 X 1</h4>
							</div>
						</td>
					</tr>

					<tr>
						<td class="active row">
							<div class="col-md-6">
								<h4>
									分期月数：<span style="color: red">${inlineRadioOptions}</span>
								</h4>
							</div>
							<div class="col-md-6">
								<h4>
									總價：<span style="color: red">${subMoney}元</span>
								</h4>
							</div>
						</td>
					</tr>

					<tr>
						<td class="info">
							<h4 class="col-md-6">
								月供：<span style="color: red">${monthPay}元</span>
							</h4>
						</td>
					</tr>

					<tr>
						<td>
							<div class="col-md-4" style="float: right">
								<button type="submit" id="submit"
									class="btn btn-success btn-lg btn-block" >
									<h4>确认订单</h4>
								</button>
							</div>
						</td>
					</tr>
				</table>
			</form>
		</div>
	</div>


	<footer
		class="pui-layout pui-layout-fixed pui-layout-fixed-1200 login-footer"
		style="margin:0 35%">
	<div class="copyright">
		<p>
			Copyright <i class="glyphicon glyphicon-copyright-mark"></i> 2016
			趣分期项目 All Rights Reserved.<small class="pui-right"></small>
		</p>
	</div>
	</footer>



	</div>
	</div>

	<!--[if (gte IE 9) | !(IE)]><!-->
	<script src="http://cdn.bootcss.com/jquery/2.1.1/jquery.min.js"></script>
	<!--<![endif]-->

	<!--[if lt IE 9]>
<script src="http://cdn.bootcss.com/jquery/1.11.3/jquery.min.js"></script>
<script type="text/javascript" src="./js/planeui.patch.ie8.js"></script>
<![endif]-->

	<!--[if lt IE 10]>
<script type="text/javascript" src="./js/planeui.patch.ie9.js"></script>
<![endif]-->
	<script type="text/javascript" src="./js/planeui.js"></script>
	<script src='./js/login.js'></script>

</body>
</html>
