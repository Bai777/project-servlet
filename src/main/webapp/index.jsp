<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<%@ page import="com.tictactoe.Sign" %>
<!DOCTYPE html>
<html>
<head>
    <title>Tic-Tac-Toe</title>
    <link href="static/main.css" rel="stylesheet">
    <script src="<c:url value="/static/jquery-3.6.0.min.js"/>"></script>
</head>
<body>
<h1>Tic-Tac-Toe</h1>

<table>
    <tr>
        <td onclick="window.location='/logic?click=0'">
            <span class="${data.get(0) == 'CROSS' ? 'x-sign' : (data.get(0) == 'NOUGHT' ? 'o-sign' : '')}">${data.get(0).getSign()}</span>
        </td>
        <td onclick="window.location='/logic?click=1'">
            <span class="${data.get(1) == 'CROSS' ? 'x-sign' : (data.get(1) == 'NOUGHT' ? 'o-sign' : '')}">${data.get(1).getSign()}</span>
        </td>
        <td onclick="window.location='/logic?click=2'">
            <span class="${data.get(2) == 'CROSS' ? 'x-sign' : (data.get(2) == 'NOUGHT' ? 'o-sign' : '')}">${data.get(2).getSign()}</span>
        </td>
    </tr>
    <tr>
        <td onclick="window.location='/logic?click=3'">
            <span class="${data.get(3) == 'CROSS' ? 'x-sign' : (data.get(3) == 'NOUGHT' ? 'o-sign' : '')}">${data.get(3).getSign()}</span>
        </td>
        <td onclick="window.location='/logic?click=4'">
            <span class="${data.get(4) == 'CROSS' ? 'x-sign' : (data.get(4) == 'NOUGHT' ? 'o-sign' : '')}">${data.get(4).getSign()}</span>
        </td>
        <td onclick="window.location='/logic?click=5'">
            <span class="${data.get(5) == 'CROSS' ? 'x-sign' : (data.get(5) == 'NOUGHT' ? 'o-sign' : '')}">${data.get(5).getSign()}</span>
        </td>
    </tr>
    <tr>
        <td onclick="window.location='/logic?click=6'">
            <span class="${data.get(6) == 'CROSS' ? 'x-sign' : (data.get(6) == 'NOUGHT' ? 'o-sign' : '')}">${data.get(6).getSign()}</span>
        </td>
        <td onclick="window.location='/logic?click=7'">
            <span class="${data.get(7) == 'CROSS' ? 'x-sign' : (data.get(7) == 'NOUGHT' ? 'o-sign' : '')}">${data.get(7).getSign()}</span>
        </td>
        <td onclick="window.location='/logic?click=8'">
            <span class="${data.get(8) == 'CROSS' ? 'x-sign' : (data.get(8) == 'NOUGHT' ? 'o-sign' : '')}">${data.get(8).getSign()}</span>
        </td>
    </tr>
</table>

<hr>
<c:set var="CROSSES" value="<%=Sign.CROSS%>"/>
<c:set var="NOUGHTS" value="<%=Sign.NOUGHT%>"/>

<c:if test="${winner == CROSSES}">
    <h1 class="winner-msg x-sign">CROSSES WIN!</h1>
    <button onclick="restart()">Start again</button>
</c:if>
<c:if test="${winner == NOUGHTS}">
    <h1 class="winner-msg o-sign">NOUGHTS WIN!</h1>
    <button onclick="restart()">Start again</button>
</c:if>
<c:if test="${draw}">
    <h1>IT'S A DRAW</h1>
    <br>
    <button onclick="restart()">Start again</button>
</c:if>

<script>
    function restart() {
            $.ajax({
                url: '/restart',
                type: 'POST',
                contentType: 'application/json;charset=UTF-8',
                async: false,
                success: function () {
                    location.reload();
                }
            });
        }
</script>

</body>
</html>