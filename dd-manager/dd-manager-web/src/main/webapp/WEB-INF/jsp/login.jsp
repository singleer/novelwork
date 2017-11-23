<%@ page language="java" contentType="text/html; charset=UTF-8"
		 pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en" class="no-js">
<head>
	<meta charset="utf-8">
	<title>Fullscreen Login</title>
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<meta name="description" content="">
	<meta name="author" content="">

	<!-- CSS -->
	<link rel='stylesheet' href='http://fonts.googleapis.com/css?family=PT+Sans:400,700'>
	<link rel="stylesheet" href="${pageContext.request.contextPath }/css/reset.css">
	<link rel="stylesheet" href="${pageContext.request.contextPath }/css/supersized.css">
	<link rel="stylesheet" href="${pageContext.request.contextPath }/css/style.css">

	<!-- HTML5 shim, for IE6-8 support of HTML5 elements -->
	<!--[if lt IE 9]>
	<script src="http://html5shim.googlecode.com/svn/trunk/html5.js"></script>
	<![endif]-->
	<script language="javascript" type="text/javascript">
        <!--
        //获得当前时间,刻度为一千分一秒
        var initializationTime=(new Date()).getTime();
        function showLeftTime()
        {
            var now=new Date();
            var year=now.getFullYear();
            var month=now.getMonth()+1;
            var day=now.getDate();
            var hours=now.getHours();
            var minutes=now.getMinutes();
            var seconds=now.getSeconds();
            document.all.show.innerHTML=""+year+"年"+month+"月"+day+"日 "+hours+":"+minutes+":"+seconds+"";
//一秒刷新一次显示时间
            var timeID=setTimeout(showLeftTime,1000);
        }
	</script>
</head>

<body onload="showLeftTime()">
<label id="show" style="padding-left: 800px">显示时间的位置</label>
<div class="page-container">
	<h1>Login</h1>
	<form id="myform" method="post" action="#">
		<input type="text" id="username" name="username" class="username" placeholder="Username">
		<span id="sp"></span>
		<input type="password" id="password" name="password" class="password" placeholder="Password">
		<button type="submit">Sign me in</button>
		<div class="error"><span>+</span></div>
	</form>

</div>
<!-- Javascript -->
<script src="${pageContext.request.contextPath }/js/jquery-1.8.2.min.js"></script>
<script src="${pageContext.request.contextPath }/js/supersized.3.2.7.min.js"></script>
<script src="${pageContext.request.contextPath }/js/supersized-init.js"></script>
<script src="${pageContext.request.contextPath }/js/scripts.js"></script>
<script>
        $(function () {
            $("#myform").submit(function(){
                var username = $("#username").val();
                var password = $("#password").val();
                var jsonObj = {"adminname":username,"password":password};
                //$.ajax提交
                $.ajax({
                    url:"${pageContext.request.contextPath}/checkname",
                    data:jsonObj,
                    dataType:"text",
                    type:"post",
                    cache:false,
                    success:function(rec){
                        /* if(rec==0){
                             $("#sp1").html("用户名不能为空").css("color","red");
                         }else if(rec==1){
                             $("#sp2").html("密码不能为空").css("color","red");
                         }else*/
                        if(rec=='3'){
                            if (username!=""&&password!="") {
                                alert("用户名或密码错误，请重新输入");
                                username = "";
                                password = "";
                            }
                        }else{
                            location.href="${pageContext.request.contextPath}/index"
                        }
                    },
                    error:function(){
                        alert("服务器出错!");
                    }
                });
            });
        });
</script>
</body>

</html>
