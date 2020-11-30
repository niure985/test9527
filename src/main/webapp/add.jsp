
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>学生注册</title>
    <script type="text/javascript">
        function verification() {
            var ok = go();
            if(ok){
                document.forms["addStudent"].submit();
            }

            }
        function go() {
            var nameObj = document.getElementById("name");
            if(nameObj.value == ""){
                alert("姓名不能为空！");
                nameObj.focus();
                return false;
            }

            var ageObj = document.getElementById("age");
            var regExp = /^((1[1]|[1-9])?\d)$/;
            if(! regExp.test(ageObj.value)){
                alert("年龄在[1-119]之间！");
                ageObj.value = "";
                ageObj.focus();

                return false;
            }

            return true;

        }
    </script>
</head>
<body>
<center>
    <form action="student/addStudent.do" method="get" name="addStudent">
        <table border="2">
            <tr>
                <td>姓名</td>
                <td>
                    <input type="text" name="name" id="name"/>
                </td>
            </tr>
            <tr>
                <td>年龄</td>
                <td>
                    <input type="text" name="age" id="age"/>
                </td>
            </tr>
            <tr align="center">
                <td></td>
                <td colspan="2">
                    <input type="button" onclick="verification()" value="注册" />
                    <input type="reset" value="清空"/>
                </td>
            </tr>
        </table>
    </form>
</center>
</body>
</html>
