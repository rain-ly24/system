<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%
    pageContext.setAttribute("path", request.getContextPath());
%>
<!DOCTYPE HTML>
<html>
<head>
    <title>首页</title>
    <style type="text/css">
        a {
            text-decoration: none;
            color: black;
            font-size: 18px;
        }

        h3 {
            width: 180px;
            height: 38px;
            margin: 100px auto;
            text-align: center;
            line-height: 38px;
            background: grey;
            border-radius: 4px;
        }
        body{
          background-image:url("2.jpg");
        }
        .page-header{
            background-image: url("2.jpg");
        }

    </style>
</head>
<body>
<div class="container">
    <div class="row clearfix">
        <div class="col-md-12 column">
            <div class="page-header" style="text-align: center;margin: auto">
                <h1>
                    教务管理系统（简略页面）
                </h1>

            </div>
        </div>
    </div>
</div>

<h3>
    <a href="${path }/content/allContent">由此进入管理</a>
</h3>
</body>
</html>
