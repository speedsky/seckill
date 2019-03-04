<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@include file="common/tag.jsp" %>
<html>
<head>
    <title>秒杀详情页</title>
    <!--设置APP_PATH值  -->
<%
	pageContext.setAttribute("APP_PATH", request.getContextPath());
	
%>
    <%-- 静态包含 --%>
    <%@include file="common/head.jsp" %>
    
    <%-- 提示：编写script语句时，勿用"/>"结尾，不然语句之下的js浏览器不加载 --%>

<%--jQery文件,务必在bootstrap.min.js之前引入--%>
<!-- jQuery文件。务必在bootstrap.min.js 之前引入 -->
<script src="${APP_PATH}/static/jquery/jquery-3.2.1.min.js"></script>

<!-- 最新的 Bootstrap 核心 JavaScript 文件 -->
<script src="${APP_PATH}/static/bootstrap/js/bootstrap.min.js"></script>
<%--使用CDN 获取公共js http://www.bootcdn.cn/--%>
<%--jQuery Cookie操作插件--%>
<script src="${APP_PATH}/static/script/jquery.cookie.min.js"></script>
<%--jQuery countDown倒计时插件--%>
<script src="${APP_PATH}/static/script/jquery.countdown.min.js"></script>

<script src="${APP_PATH}/static/script/seckill.js" type="text/javascript"></script>
<link href="${APP_PATH}/static/bootstrap/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>

<div class="container">
    <div class="panel panel-default">
        <div class="panel-heading text-center">
            <h1>${seckill.name}</h1>
        </div>

        <div class="panel-body">
            <h2 class="text-danger">
                <%-- 显示time图标 --%>
                <span class="glyphicon glyphicon-time"></span>
                <%-- 展示倒计时 --%>
                <span class="glyphicon" id="seckill-box"></span>
            </h2>
        </div>
    </div>
</div>

<%-- 由于关注点在秒杀，而直接引入登陆插件，一般判断应传回后台进行 --%>
<%--登录弹出层 输入电话--%>
<div id="killPhoneModal" class="modal fade">

    <div class="modal-dialog">

        <div class="modal-content">
            <div class="modal-header">
                <h3 class="modal-title text-center">
                    <span class="glyphicon glyphicon-phone"> </span>秒杀电话:
                </h3>
            </div>

            <div class="modal-body">
                <div class="row">
                    <div class="col-xs-8 col-xs-offset-2">
                        <input type="text" name="killPhone" id="killPhoneKey"
                               placeholder="填写手机号^o^" class="form-control">
                    </div>
                </div>
            </div>

            <div class="modal-footer">
                <%--验证信息--%>
                <span id="killPhoneMessage" class="glyphicon"> </span>
                <button type="button" id="killPhoneBtn" class="btn btn-success">
                    <span class="glyphicon glyphicon-phone"></span>
                    Submit
                </button>
            </div>

        </div>
    </div>

</div>



<script type="text/javascript">
    $(function (){
        //使用EL表达式传入参数
        seckill.detail.init({
            seckillId: ${seckill.seckillId},
            startTime: ${seckill.startTime.time},//毫秒
            endTime: ${seckill.endTime.time}
        });
    })
</script>

</body>
</html>
