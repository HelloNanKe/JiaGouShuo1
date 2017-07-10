<%@ page import="java.util.Map" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<html>
<head>
    <%
        int i = 0;
    %>
    <link rel="stylesheet" href="http://www.bootcss.com/p/layoutit/css/bootstrap-combined.min.css">
</head>
<body>
<h2>基本信息列表</h2>
<div class="container-fluid">
    <div class="row-fluid">
        <div class="span12">
            <table class="table">
                <thead>
                <tr>
                    <th>
                        部门编号
                    </th>
                    <th>
                        部门名称
                    </th>
                    <th>
                        gender
                    </th>
                    <th>
                        邮箱
                    </th>
                </tr>
                </thead>

                <tbody>
                <c:forEach var="employee" items="${list}">
                    <tr class="<%
                    i++;
                    switch (i%5){
                        case 0:
                            out.write("success");
                            break;
                        case 1:
                            out.print("error");
                            break;
                        case 2:
                            out.print("info");
                            break;
                         case 3:
                         out.print("");
                         break;
                        default:
                            out.print("warning");
                            break;
                    }
                    %>">
                        <td>
                                ${employee.empId}
                        </td>
                        <td>
                                ${employee.empName}
                        </td>
                        <td>
                                ${employee.gender}
                        </td>
                        <td>
                                ${employee.email}
                        </td>
                    </tr>
                </c:forEach>
                </tbody>
            </table>
        </div>
    </div>
</div>

<%--分页组件--%>
<div class="container-fluid">
    <div class="row-fluid">
        <div class="span12">
            <div class="pagination pagination-right pagination-large">
                <ul>
                    <li>
                        <a href="#">上一页</a>
                    </li>
                    <li>
                        <a href="#">1</a>
                    </li>
                    <li>
                        <a href="#">2</a>
                    </li>
                    <li>
                        <a href="#">3</a>
                    </li>
                    <li>
                        <a href="#">4</a>
                    </li>
                    <li>
                        <a href="#">5</a>
                    </li>
                    <li>
                        <a href="#">下一页</a>
                    </li>
                </ul>
            </div>
        </div>
    </div>
</div>
</body>
</html>
