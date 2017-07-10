<%--
  Created by IntelliJ IDEA.
  User: apple
  Date: 2017/7/10
  Time: 下午4:08
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>ajax</title>

    <script type="text/javascript">
        function ajaxFunction( url) {
            alert("调用");
            var xmlHttp;
            try {
                xmlHttp=new XMLHttpRequest();
                alert("创建成功");
            }catch(e) {
                try {
                    xmlHttp=new ActiveXObject("Msxml2.XMLHTTP");
                }catch (e){
                    try{
                        xmlHttp=new ActiveXObject("Microsoft.XMLHTTP");
                    }catch (e){
                            alert("你使用的什么垃圾浏览器啊，该换了！！");
                            return false;
                    }
                }
            }

            if(xmlHttp){
                xmlHttp.open('GET',url,false);
                xmlHttp.onreadystatechange=function () {
                    //客户端接收完成
                    if(xmlHttp.readyState==4){
                        alert("接收完成");
                     //响应成功

                            alert("响应成功");
                            document.getElementById('vv').innerHTML="sucess";

                    }
                };
                xmlHttp.send(null);
            }else {
                alert("error");
            }
        }
    </script>
</head>
<body>
<input type="button" id="test" onclick="ajaxFunction('/detail.jsp')" value="测试">
<hr>
<div id="vv">
    这是一个盒子
</div>

</body>
</html>
