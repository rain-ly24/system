<% pageContext.setAttribute("path", request.getContextPath());%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<% String appPath = request.getContextPath(); %>
<html>
<head>
    <title>管理列表</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <!-- 引入 Bootstrap -->
    <link href="https://cdn.bootcss.com/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">
</head>
<body >
<div class="container" style="text-align: center" >
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
                    <small>课程信息显示</small>
                </h1>
            </div>
            <h4>
                注意：开课学院为计算机学院，代号为1；外国语学院，代号为2
            </h4>
        </div>
    </div>
    <div class="row" style="text-align: left">
        <div class="col-md-4 column" align="right">
            <a class="btn btn-primary" href="${path}/content/toAddContent">新增</a>
        </div>
    </div>
    <div class="row clearfix" >
        <div class="col-md-12 column" >
            <table class="table table-hover table-striped"  align="center">
                <thead>
                <tr>
                    <th>编号</th>
                    <th>封面</th>
                    <th>课程名</th>
                    <th>课时数</th>
                    <th>开课学院</th>
                    <th>操作</th>
                </tr>
                </thead>
                <tbody>
                <c:forEach var="content" items="${requestScope.get('list')}" varStatus="status">
                    <tr>
                        <td>${content.contentId}</td>
                        <td><img src="https://m1.miaomc.cn/uploads/20230519_646749c469668.png" width="100"></td>
                        <td>${content.contentName}</td>
                        <td>${content.contentNum}</td>
                        <td>${content.contentDetail}</td>
                        <td>
                            <a href="${path}/content/toUpdateContent?id=${content.contentId}">编辑</a> |
                            <a href="<%=appPath%>/content/del/${content.contentId}">删除</a>
                        </td>
                    </tr>
                </c:forEach>
                </tbody>
            </table>
        </div>
    </div>
</div>
