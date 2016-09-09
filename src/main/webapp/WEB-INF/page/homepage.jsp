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
<title>趣分期</title>

<link rel="stylesheet" type="text/css" href="../css/planeui.min.css" />
<link rel="stylesheet" type="text/css" href="../css/login.css">
<link rel="stylesheet" type="text/css" href="../css/buttons.css">
<link rel="stylesheet" type="text/css" href="../css/style.css" />

<link rel="stylesheet" href="../css/bootstrap-3.3.5/dist/css/bootstrap.min.css">
<script src="../css/bootstrap-3.3.5/dist/js/jquery.min.js"></script>
<script src="../css/bootstrap-3.3.5/dist/js/bootstrap.min.js"></script>
</head>
<body>
	<!--[if lte IE 9]>
<div class="pui-layout pui-browsehappy">
  <a href="javascript:;" class="pui-close" onclick="document.body.removeChild(this.parentNode);"></a>
  <p>您正在使用 <strong class="pui-text-yellow pui-text-xl">过时</strong> 的非现代浏览器，<strong class="pui-text-success pui-text-xl">91.23%</strong>
    的人选择 <a href="http://browsehappy.com/" target="_blank" class="pui-text-green-400 pui-text-xl"><strong>升级浏览器</strong></a>，获得了更好、更安全的浏览体验！
  </p>
</div>
<![endif]-->

	<a name="top"></a>

	<div class="pui-layout pui-flexbox pui-flex-column login-layout">
		<div class="pui-layout pui-flex login-main">
			<div
				class="pui-layout pui-layout-fixed pui-layout-fixed-1200 login-main-con">
				<div class="login-panel">
					<div id="login" class="pui-form login-form">
						<div class="pui-form-group">
							<h1 class="pui-text-white pui-text-normal">
								<i class="fa fa-cart-arrow-down fa-2x pui-text-xxxxxxl"></i> 趣分期
							</h1>
						</div>

						<form action="${pageContext.request.contextPath  }/user/loginLoad">
							<div class="pui-form-group input_submit pui-grid-xxl-offset-4"
								style="position: absolute; left: 70px; top: 0px;">
								<button type="submit" id="submit"
									class="button  button-rounded button-lowercase button-primary"
									style="width: 150px;" name="login">
									 登录
								</button>
							</div>
						</form>


						<form action="${pageContext.request.contextPath  }/user/registLoad"
							method="get">
							<div class="pui-form-group input_submit pui-grid-xxl-offset-4"
								style="position: absolute; left: 70px; top: 50px;">

								<button type="submit" id="singup"
									class="button  button-rounded button-lowercase button-primary"
									style="width: 150px;">
									<i class="fa fa-user-plus"></i> 注册
								</button>
							</div>
						</form>

						<div id="carousel-example-generic" class="carousel slide"
							data-ride="carousel">
							<!-- Indicators轮播指标 -->
							<ol class="carousel-indicators">
								<li data-target="carousel-example-generic" data-slide-to="0"
									class="active"></li>
								<li data-target="#carousel-example-generic" data-slide-to="1"></li>
								<li data-target="#carousel-example-generic" data-slide-to="2"></li>
								<li data-target="#carousel-example-generic" data-slide-to="3"></li>
							</ol>

							<!-- Wrapper for slides 轮播项目-->
							<div class="carousel-inner" role="listbox">
								<div class="item active">
									<a href="${pageContext.request.contextPath }/good/doDetail">
										<img src="../img/coolpad/coolpad.jpg" alt="Coolpad">
									</a>
									<div class="carousel-caption"></div>
								</div>
								<div class="item">
									<a href="${pageContext.request.contextPath }/good/doDetail">
										<img src="../img/iphone/iphone.jpg" alt="iphone">
									</a>
									<div class="carousel-caption"></div>
								</div>

								<div class="item">
									<a href="${pageContext.request.contextPath }/good/doDetail">
										<img src="../img/letv/letv.jpg" alt="letv">
										<div class="carousel-caption"></div>
									</a>
								</div>

								<div class="item">
									<a href="${pageContext.request.contextPath }/good/doDetail">
										<img src="../img/mi/mi.jpg" alt="mi">
									</a>
									<div class="carousel-caption"></div>
								</div>

							</div>

							<!-- Controls 轮播导航-->
							<a class="left carousel-control" href="#carousel-example-generic"
								role="button" data-slide="prev"> <span
								class="glyphicon glyphicon-chevron-left"></span> <span
								class="sr-only">Previous</span>
							</a> <a class="right carousel-control"
								href="#carousel-example-generic" role="button" data-slide="next">
								<span class="glyphicon glyphicon-chevron-right"></span> <span
								class="sr-only">Next</span>
							</a>
						</div>

					</div>
				</div>
			</div>
		</div>
		<!--↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓3列菜单开始↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓-->
		<div class="btn3 clearfix">

			<div class="menu" style="text-align: center">
				<div class="bt-name" style="text-align: center">
					<a href="javascript:;"><i class="fa fa-home"></i> 首页</a>
				</div>
			</div>
			<!--menu-->


			<div class="menu">
				<div class="bt-name" style="text-align: center">
					<a href="javascript:;"><i class="fa fa-shopping-cart"></i> 购物车</a>
				</div>
			</div>
			<!--menu-->


			<div class="menu">
				<div class="bt-name" style="text-align: center">
					<i class="fa fa-user"></i> 个人中心
				</div>
				<div class="sanjiao"></div>
				<div class="new-sub">
					<ul>
						<li><a href="javascript:;">地址管理</a></li>
						<li><a href="javascript:;">订单管理</a></li>
						<li><a href="javascript:;">账户管理</a></li>
					</ul>
					<div class="tiggle"></div>
					<div class="innertiggle"></div>
				</div>
			</div>
			<!--menu-->

		</div>
		<!--btn3-->
		<!--↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑3列菜单end↑↑↑↑↑↑↑↑↑↑↑↑↑↑-->
		<script type="text/javascript">
			//弹出垂直菜单
			$(".menu").click(function() {
				if ($(this).hasClass("cura")) {
					$(this).children(".new-sub").hide(); //当前菜单下的二级菜单隐藏
					$(".menu").removeClass("cura"); //同一级的菜单项
				} else {
					$(".menu").removeClass("cura"); //移除所有的样式
					$(this).addClass("cura"); //给当前菜单添加特定样式
					$(".menu").children(".new-sub").slideUp("fast"); //隐藏所有的二级菜单
					$(this).children(".new-sub").slideDown("fast"); //展示当前的二级菜单
				}
			});
		</script>

	</div>

	<!--[if (gte IE 9) | !(IE)]><!-->
	<script src="http://cdn.bootcss.com/jquery/2.1.1/jquery.min.js"></script>
	<!--<![endif]-->

	<!--[if lt IE 9]>
<script src="http://cdn.bootcss.com/jquery/1.11.3/jquery.min.js"></script>
<script type="text/javascript" src="js/planeui.patch.ie8.js"></script>
<![endif]-->

	<!--[if lt IE 10]>
<script type="text/javascript" src="js/planeui.patch.ie9.js"></script>
<![endif]-->
	<script type="text/javascript" src="js/planeui.js"></script>
	<script src='js/login.js'></script>

</body>
</html>
