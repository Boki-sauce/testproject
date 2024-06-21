<%--
  Created by IntelliJ IDEA.
  User: boki
  Date: 2023/8/12
  Time: 22:02
  To change this template use File | Settings | File Templates.
--%>
<%--
  Created by IntelliJ IDEA.
  User: boki
  Date: 2023/8/12
  Time: 10:24
  To change this template use File | Settings | File Templates.

  todo   学生端报修查看
--%>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
    <!-- 引入 Bootstrap -->
    <script src="https://cdn.bootcss.com/jquery/2.2.4/jquery.min.js"></script>
    <link href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">
    <!-- 引入 font-awesome -->
    <link href="https://cdn.bootcss.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet">
    <script src="https://cdn.bootcss.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    <link rel="stylesheet" type="text/css" href="css/top.css">
    <title>宿舍管理系统</title>
</head>
<body>
<div class="container-fluid">
    <div class="row" style="background-image: url('img/4.jpg');min-height: 600px;background-attachment: fixed">
        <div class="col-sm-10">
            <!-- 顶部搜索部分 -->
            <div class="panel panel-default" style="background: #FFFFFF00">
                <div class="panel-heading" style="background: #FFFFFF00">搜索</div>
                <div class="panel-body">
                    <form role="form" class="form-inline" action="/repair?method=studentsearch" method="post">
                        <div class="form-group">
                            <label for="key">字段：</label>
                            <select name="key" id="key" class="form-control">
                                <option value="studentName">学生</option>
                                <option value="dormitoryName">宿舍</option>
                                <option value="createDate">时间</option>
                                <option value="state">状态</option>
                            </select>
                        </div>
                        <div class="form-group" style="margin-left: 20px">
                            <label for="value">值：</label>
                            <input type="text" class="form-control" name="value" id="value" placeholder="字段值" maxlength="12" style="width: 130px">
                        </div>
                        <div class="form-group " style="margin-left: 20px">
                            <button type="submit" class="btn btn-info " style="background-color: rgba(218,215,20,0.38)">
										<span style="margin-right: 5px"
                                              class="glyphicon glyphicon-search" aria-hidden="true" >
                                            <strong style="color: #333333;font-family: 宋体 ;font-size: 18px;font-weight: 590">开始搜索</strong>
										</span>
                            </button>
                        </div>

                    </form>
                </div>
            </div>
            <!-- 列表展示-->
            <div class="table-responsive">
                <table class="table table-hover ">
                    <thead>
                    <tr>
                        <th>ID</th>
                        <th>宿舍</th>
                        <th>学号</th>
                        <th>学生</th>
                        <th>宿管</th>
                        <th>状态</th>
                        <th>介绍</th>
                        <th>报修时间</th>
                    </tr>
                    </thead>
                    <tbody>
                    <c:forEach items="${list}" var="repair">
                        <tr>
                            <td>${repair.id}</td>
                            <td>${repair.dormitoryName}</td>
                            <td>${repair.studentNumber}</td>
                            <td>${repair.studentName}</td>
                            <td>${repair.dormitoryAdminName}</td>
                            <td>${repair.state}</td>
                            <td>${repair.instruction}</td>
                            <td>${repair.createDate}</td>
                        </tr>
                    </c:forEach>
                    </tbody>
                </table>
            </div>
        </div>
    </div>
</div>

<div id="gotop"><a class="gotop"></a></div>
<script>
    $("#gotop").hide();
    $(window).scroll(function () {
        if ($(window).scrollTop() > 100) {
            $("#gotop").fadeIn()
        } else {
            $("#gotop").fadeOut()
        }
    });
    $("#gotop").click(function () {
        $('html,body').animate({
            'scrollTop': 0
        }, 500)
    });
</script>

</body>

</html>
