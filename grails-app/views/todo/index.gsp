<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Todos</title>
</head>

<body>
<table>
    <tr>
        <th>Status</th>
        <th>Title</th>
        <th>Detail</th>
    </tr>
    <g:each in="${notDsoneTasks}" var="task">
        <tr>
            <td><g:checkBox name="" value="${task.isDone}"/></td>
            <td>${task.title}</td>
            <td>${task.detail}</td>
        </tr>
    </g:each>
</table>
</body>
</html>