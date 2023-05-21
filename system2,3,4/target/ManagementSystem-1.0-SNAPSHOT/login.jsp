
<% pageContext.setAttribute("path", request.getContextPath());%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--<%@ page contentType="text/html;charset=UTF-8" language="java" %>--%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<% String appPath = request.getContextPath(); %>
<html>
<head>
    <title>登录</title>
</head>
<style>
    .bs{
        font-family: 华文隶书;
        font-size: 30px;
    }
</style>
<body background="1.jpg">

<br>
<br>
<br>

<div class="page-header" style="text-align: center;margin: auto">
    <h1>
        教务管理系统
    </h1>

</div>

<!-- action要和后台的@RequestMapping的值保持一致 -->
<form name="form1" action="login" method="post">
    <table class="bs" width="600" border="0" align="center">

        <tr>
            <td>用户名:</td>
            <td><input type="text" name="username">
            </td>
        </tr>
        <tr>
            <td>密码:</td>
            <td><input type="password" name="password" />
            </td>
        </tr>
        <tr>
            <td colspan="2">
                <input type="submit" name="submit" value="登录" /><br><br>
                <span style="position: center">&nbsp;&nbsp;&nbsp;&nbsp;还没账号的同学快来<a
                        href="${path }/register">注册</a></span>
            </td>
        </tr>
    </table>
</form>


</body>
</html>
