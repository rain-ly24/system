<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://"
            + request.getServerName() + ":" + request.getServerPort()
            + path + "/";
%>
<html>
<head>
    <title>新增内容</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <!-- 引入 Bootstrap -->
    <link href="https://cdn.bootcss.com/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>
<div class="container" style="text-align: center">
    <div class="row clearfix">
        <div class="col-md-12 column">
            <div class="page-header">
                <h1>
                    教务管理系统
                </h1>

            </div>
        </div>
    </div>

    <div class="row clearfix">
        <div class="col-md-12 column">
            <div class="page-header">
                <h1>
                    <small>新增内容</small>
                </h1>
            </div>
        </div>
    </div>
    <form:form action="user/upload" method="post" enctype="multipart/form-data" >
        课程名：<input type="text" name="contentName">
        课时数：<input type="text" name="contentNum">
        开课学院代号：<input type="text" name="contentDetail">
        封面: <input type="text" name="picPath"><input type="file" name="file" value="请选择图片" ><br>
        <input type="button" value="添加" onclick="addContent()">
    </form:form>

    <script type="text/javascript">
        function addContent() {
            var form = document.forms[0];
            form.action = "<%=basePath %>content/addContent";
            form.method = "post";
            form.submit();
        }
    </script>
</div>