<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html lang="zh-cn">
<head>
    <meta charset="utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta http-equiv="Cache-Control" content="no-siteapp"/>
    <meta name="renderer" content="webkit" />
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" />
    <title>订单确认</title>

    <link rel="stylesheet" type="text/css" href="../css/planeui.min.css" />
	<link rel='stylesheet' href='../css/login.css'>
</head>
<body>
<!--[if lte IE 9]>
<div class="pui-layout pui-browsehappy">
    <a href="javascript:;" class="pui-close" onclick="document.body.removeChild(this.parentNode);"></a>
    <p>您正在使用 <strong class="pui-text-yellow pui-text-xl">过时</strong> 的非现代浏览器，<strong class="pui-text-success pui-text-xl">91.23%</strong> 的人选择 <a href="http://browsehappy.com/" target="_blank" class="pui-text-green-400 pui-text-xl"><strong>升级浏览器</strong></a>，获得了更好、更安全的浏览体验！</p>
</div>
<![endif]-->

<a name="top"></a>

    <div class="pui-layout pui-flexbox pui-flex-column login-layout">
        <div class="pui-layout pui-flex login-main">
            <div class="pui-layout pui-layout-fixed pui-layout-fixed-1200 login-main-con">
                <div class="login-panel">
                  
                    <form id="orderSure" name="orderSure" class="pui-form login-form" action="${pageContext.request.contextPath }/order/payLoad" method="post">
                        <div class="pui-form-group">
                            <h1 class="pui-text-white pui-text-normal">
                                <i class="fa fa-cart-arrow-down fa-2x pui-text-xxxxxxl"></i> 订单确认
                            </h1>
                        </div>
						
						<div class="row">
							<div class="col-md-8">
							 <span>收货地址</span><input type="text" name="address" class="pui-unbordered" maxlength="50" placeholder="您的收货地址" value="${user.username}">
							</div>
						</div>
						
						<div class="row">
							<div class="col-md-6">
								<div>【金色24期免息】vivo X7 全网通 4GB+64GB 移动联通电信4G手机 金色 4G+64G 全网通</div>
								<div>单价：${price}&nbsp;&nbsp;&nbsp;数量 X 1</div>
							</div>
							<div class="col-md-3" style="float:right">
								小计：<span style="color:red">${price}元</span>
							</div>
							<div>
								分期月数：${inlineRadioOptions}个月
							</div>
							<div>
								月供：<span style="color:red">1000元</span>
								<div style="float:right">
									<button type="submit" id="submit" class="pui-btn pui-btn-default pui-round">确认订单</button>
								</div>
							</div>
						</div>
                       
                    </form>
                </div>
            </div>
        </div>
        <footer class="pui-layout pui-layout-fixed pui-layout-fixed-1200 login-footer">
            <div class="copyright">
                <p>Copyright <i class="fa fa-copyright"></i> 2016 趣分期项目 All Rights Reserved.<small class="pui-right"></small></p>
            </div>
        </footer>
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
