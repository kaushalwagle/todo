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
    <g:each in="${notDoneTasks}" var="todo">
        <tr>
            <td><g:link controller="todo" action="update" id="${todo.id}">Done</g:link></td>
            <td>${todo.title}</td>
            <td>${todo.detail}</td>
        </tr>
    </g:each>
</table>
<table>
    <tr>
        <th>Done</th>
        <th>Title</th>
        <th>Detail</th>
        <th>Done at</th>
    </tr>
    <g:each in="${doneTasks}" var="todo">
        <tr>
            <td>Done</td>
            <td>${todo.title}</td>
            <td>${todo.detail}</td>
            <td>${todo.dateDone}</td>
        </tr>
    </g:each>
</table>
</body>
</html>