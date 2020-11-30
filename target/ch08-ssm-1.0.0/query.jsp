
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>学生查询</title>
    <script type="text/javascript" src="js/jquery-3.4.1.js"></script>
    <script type="text/javascript">
        $(function () {
            loadStudentData();
            $("#btn").click(function () {
                loadStudentData();
            })
        })

        function loadStudentData() {
            $.ajax({
                url:"student/queryStudent.do",
                type:"get",
                dataType:"json",
                success:function (resp) {
                    $("#info").empty();
                    $.each(resp,function (i,n) {
                        $("#info").append("<tr>")
                            .append("<td>" + n.id + "</td>")
                            .append("<td>" + n.name + "</td>")
                            .append("<td>" + n.age + "</td>")
                            .append("</tr>");
                    })
                }

            })
        }
    </script>
</head>
<body>
<center>
    <table id="dataTable" border="1">
        <thead>
        <tr>
            <td>id</td>
            <td>姓名</td>
            <td>年龄</td>
        </tr>
        </thead>
        <tbody id="info">

        </tbody>

    </table>
    <input type="button" id="btn" value="查询">
</center>
</body>
</html>
