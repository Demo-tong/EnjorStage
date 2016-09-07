<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
<head>
<title></title>
<meta charset="utf-8">

<link href="../css/bootstrap-3.3.5/dist/css/bootstrap.min.css"
	rel="stylesheet">
<style type="text/css">
body{
	background-color:#1D88E6;
}
#title {
	text-align: center;
	border-bottom: 1px solid #666;
}

.info {
	margin-top: 50px;
	font-size: 25px;
	font-weight: bold;
}

.info-section {
	font-size: 20px;
	font-weight: bold;
	margin-bottom: 20px;
}

.right-section {
	margin-bottom: 100px;
}

#time {
	float: left
}
</style>
</head>
<body class="container">
	<header class="row">
	<div class="col-sm-12">
		<h1 id="title">商品页面</h1>
	</div>
	</header>
	<section class="row right-section">
	<div class="col-sm-5">
		<img src="../img/coolpad/coolpad.jpg">
	</div>
	<div class="col-md-4 info">
		<p>库存:</p>
		<p>价格:</p>
	</div>
	</section>
	<section class="row info-section">
	<div class="col-sm-5">
		<form class="form-inline">
			<div class="form-group">
				<label for="exampleInputName2">首付比例:</label> <input type="text"
					class="form-control" id="exampleInputName2" placeholder="Jane Doe">
			</div>
			<button type="submit" class="btn btn-default">提交</button>
		</form>
	</div>
	</section>
	<section class="row info-section">
	<div class="col-sm-5">
		<p id="time">分期时间:</p>
		<div id="a-list">
			<a href="#">一月</a><a href="#">二月</a><a href="#">三月</a>
		</div>
	</div>
	</section>
	<section class="row info-section">
	<div class="col-sm-5">
		<form class="form-inline">
			<div class="form-group">
				<label for="exampleInputName2">需要付款:</label> <input type="text"
					class="form-control" id="exampleInputName2" placeholder="Jane Doe">
			</div>
			<button type="submit" class="btn btn-default">提交</button>
		</form>
	</div>
	<div class="col-sm-4" style="float: right">
		<button class="btn btn-primary">点击购买</button>
	</div>
	</section>
	<hr>
	<footer calss="row">
	<div class="col-sm-6">
		<img src="../img/coolpad/coolpad2.jpg">
	</div>
	<div class="col-sm-6">
		<img src="../img/coolpad/coolpad3.jpg">
	</div>
	</footer>
</body>
</html>