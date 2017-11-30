<%--
  User: Administrator
  Date: 2017/11/27
  Time: 18:53
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title></title>
    <script type="text/javascript">
        function mulu1() {
            divset=document.getElementsByClassName("1");
            for (var i = 0; i<divset.length;i++) {
                divset[i].style.display="none";
            };
            divset1=document.getElementsByClassName("2");
            for (var i = 0; i<divset1.length;i++) {
                divset1[i].style.display="none";
            };
        }
    </script>
</head>
<body>
<input type="button" onclick="mulu1()" value="aaa">
<div class="1">
     sdsadddassad
</div>
<div class="2">
    bvvvvvvvv
</div>
</body>
</html>
