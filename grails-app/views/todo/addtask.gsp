<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Add Task</title>
</head>

<body>
    <g:form controller="todo" action="save" >
        <input name="title" type="text">
        <input name="detail" type="text">
        <input type="submit">
    </g:form>
</body>
</html>