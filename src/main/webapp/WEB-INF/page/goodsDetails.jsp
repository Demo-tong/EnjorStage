
<%@page import="java.util.HashMap"%>
<%@page import="util.DbTool"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.SQLException"%>
<%@page import="java.util.HashMap"%>
<%@page import="java.util.Map"%>
<%@page import="com.enjoyStage.entity.Good"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<%
	// 数据库操作
	Connection connection = DbTool.getConnection();
	PreparedStatement prst = null;
	ResultSet rSet = null;
	String sql_querygGood_by_goodname = "SELECT storagerate, price FROM goods WHERE goodname = 'coolpad'"; /// 查询条件应该改掉以查询不同的 good

	Map<String, Integer> good = new HashMap<String, Integer>();
	try {
		prst = connection.prepareStatement(sql_querygGood_by_goodname);
		rSet = prst.executeQuery();
		if (rSet.next()) {
			good.put("storagerate", rSet.getInt("storagerate"));
			good.put("price", rSet.getInt("price"));
		}
	} catch (SQLException e) {
		e.printStackTrace();
	}
	request.setAttribute("good", good);
%>

<%
	// 获取数据库查询结果
	Map<String, Integer> coolPad = (Map<String, Integer>) request.getAttribute("good");
%>

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
body {
	background-color: #1D88E6;
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
		<p>
			库存:
			<%=coolPad.get("storagerate")%></p>
		<p>
			价格:
			<%=coolPad.get("price")%>
			元
		</p>

	</div>
	</section>
	<section class="row info-section">
	<div class="col-sm-5">
		<p id="time">分期时间:</p>
		<div id="a-list">
			<a href="#" style="padding: 0 20px 10px; color: black">一月</a> <a
				href="#" style="padding: 0 20px 10px; color: black">二月</a> <a
				href="#" style="padding: 0 20px 10px; color: black">三月</a>
		</div>
	</div>
	</section>
	<section class="row info-section">
	<div class="col-sm-4" style="float: right; margin-bottom: 20px">
		<a href="${pageContext.request.contextPath}/good/orderSure">
			<button class="btn btn-primary">点击购买</button>
		</a>
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