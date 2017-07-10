<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<html>
<head>
    <link rel="stylesheet" href="http://www.bootcss.com/p/layoutit/css/bootstrap-combined.min.css">
</head>
<body>
<h2>SSM</h2>
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

                    <tr class="success">
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
</body>
</html>
