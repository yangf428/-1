<%--
  Created by IntelliJ IDEA.
  User: apple
  Date: 2019/4/25
  Time: 13:43
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>所有学生</title>
    <style>
        .main {
            width: 1240px;
            margin-left: 30%;
            margin-top: 100px;
        }

        tr {
            height: 60px;
        }

        .sub {
            width: 100px;
            height: 35px;
            line-height: 35px;
            background: transparent url(https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1556257482429&di=9a4a119b99d154fa04661832bff29acc&imgtype=0&src=http%3A%2F%2Fpic2.cxtuku.com%2F00%2F01%2F73%2Fb965170e468f.jpg) no-repeat;
            border: none;
            font-family: '楷体';
            color: black;
            font-size: 20px;
            font-weight: bold;
        }

        .sss {
            position: absolute;
            top: 100px;
            height: 100px;
            left: 20%;
        }

        .hh {
            width: 150px;
            height: 35px;
            line-height: 35px;
        }

        body {
            color: white;
        }
    </style>
</head>

<body style="background-image:url(https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1556258540514&di=ae81c72b98f2a1bf63b58ff16a2c77c8&imgtype=0&src=http%3A%2F%2Fpic.90sjimg.com%2Fback_pic%2Fqk%2Fback_origin_pic%2F00%2F04%2F45%2F6011487d649bc9f8e0b86ac63298a2d4.jpg)">
<div class="main">
    <table>

        <tr>
            <td>ID</td>
            <td>name</td>
            <td>birDate</td>
            <td>gender</td>
        </tr>

        <c:forEach items="${studentList}" var="student">
            <tr>
                <td>${student.ID}</td>
                <td>${student.name}</td>
                <td>${student.birDate}</td>
                <td>${student.gender}</td>
                <td><a href="/StudentResult/delStudent?name=${student.name}">
                    <button>删除</button>
                </a></td>
                <td><a href="/StudentResult/toupdate?name=${student.name}">
                    <button>编辑</button>
                </a></td>
            </tr>
        </c:forEach>
    </table>

    <span class="sss">
        <a href="/StudentResult/toindex">
            <input class="sub" type="submit" value="返回主页">
        </a>
      </span>
</div>
</body>
</html>
