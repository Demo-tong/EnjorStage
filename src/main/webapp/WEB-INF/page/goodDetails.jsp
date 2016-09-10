<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link href="../css/bootstrap-3.3.5/dist/css/bootstrap.min.css"
	rel="stylesheet">
<link rel="stylesheet" type="text/css" href="../css/detail.css">
</head>
<body class="container">
	<header class="row">
	<div class="col-sm-12">
		<h1 id="title">商品页面</h1>
	</div>
	</header>
	<section class="row right-section">
	<div class="col-sm-5">
		<img src="../img/${good.goodname}/1.jpg">
	</div>
	<div class="col-md-12 info" style="float: left">
		<p>库存: ${good.storagerate}</p>
		<p>价格: ${good.price} 元</p>

	</div>
	</section>
	<form action="${pageContext.request.contextPath}/good/orderSure?price=${good.price}&goodID=${good.goodID}" method="post">
	<section class="row info-section">
	<div class="col-sm-5">
		<p id="time">分期时间:</p>
		<div id="a-list">
			<label class="radio-inline"> <input type="radio"
				name="inlineRadioOptions" id="inlineRadio1" value="不分期" checked>不分期
			</label> <label class="radio-inline"> <input type="radio"
				name="inlineRadioOptions" id="inlineRadio2" value="三月">三月
			</label> <label class="radio-inline"> <input type="radio"
				name="inlineRadioOptions" id="inlineRadio3" value="六月">六月
			</label>
			<label class="radio-inline"> <input type="radio"
				name="inlineRadioOptions" id="inlineRadio4" value="九月">九月
			</label>
			<label class="radio-inline"> <input type="radio"
				name="inlineRadioOptions" id="inlineRadio5" value="十二月">十二月
			</label>
		</div>
	</div>
	</section>
	<section class="row info-section">
	<div class="col-sm-4" style="float: right; margin-bottom: 20px">
			<button type="submit" class="btn btn-primary">点击购买</button>
	</div>
	</section>
	</form>
	<hr>
	<footer calss="row">
	<div class="col-sm-6">
		<img src="../img/${good.goodname}/2.jpg">
	</div>
	<div class="col-sm-6">
		<img src="../img/${good.goodname}/3.jpg">
	</div>
	</footer>
</body>
</html>