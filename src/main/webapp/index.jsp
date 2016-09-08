<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<!-- 启动时直接跳转到指定的controller里的方法，再由方法跳转到相应的视图-->
<script type="text/javascript">
	window.location.href='${pageContext.request.contextPath}/homepage/homepageLoad';
</script>