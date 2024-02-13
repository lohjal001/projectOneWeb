<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <title>Start Page</title>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
            background-color: #f0f0f0;
            text-align: center;
        }
        h1 {
            color: #333;
            margin-top: 20px;
        }
        table {
            width: 70%;
            margin: 20px auto;
            border-collapse: collapse;
            background-color: #fff;
            border-radius: 5px;
        }
        th, td {
            padding: 10px;
            border-bottom: 1px solid #ddd;
        }
        th {
            background-color: #007bff;
            color: #fff;
        }
        tr:nth-child(even) {
            background-color: #f2f2f2;
        }
        a {
            display: block;
            margin: 10px;
            padding: 10px 20px;
            background-color: #007bff;
            color: #fff;
            text-decoration: none;
            border-radius: 5px;
        }
        a:hover {
            background-color: #0056b3;
        }
    </style>
</head>
<body>
<nav>
    <a href="showStudents">Show Students</a>
    <a href="showAttendance">Show Attendance</a>
    <a href="showCourses">Show Courses</a>
</nav>
<h1>Showing all courses</h1>
<table>

    <c:forEach items="${UserBean.data }" var="dataPunkt">

        <tr>
            <td>${dataPunkt[1]}</td>
            <td>${ dataPunkt[2] }</td>
            <td>${ dataPunkt[3] }</td>
        </tr>
    </c:forEach>


</table>

</body>
</html>