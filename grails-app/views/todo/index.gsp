<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <asset:stylesheet src="bootstrap.css"/>
    <title>Todos</title>
</head>

<body>
<g:if test="${flash.message}">
    <div class="alert alert-info" role="alert">${flash.message}</div>
</g:if>
<div class="container">
    <ul class="nav nav-pills">
        <li class="active"><a data-toggle="pill" href="#taskList">Task List</a></li>
        <li><a data-toggle="pill" href="#completedTask">Completed Task</a></li>
    </ul>

    <div class="tab-content">
        <div id="taskList" class="tab-pane fade in active">
            <g:form class="form-inline" controller="todo" action="save">
                <div class="form-group">
                    <label for="detail">Task:</label>
                    <input type="text" class="form-control" id="detail" name="detail">
                </div>
                <button type="submit" class="btn btn-default">Add</button>
            </g:form>
            <div class="container">
                <table class="table table-striped">
                    <tr>
                        <th colspan="2" class="text-center">Task List</th>
                    </tr>
                    <g:each var="todo" in="${notDoneTasks}">
                        <tr>
                            <td class="text-center">${todo.detail}</td>
                            <td class="text-center"><g:link controller="todo" action="update" id="${todo.id}" class="btn btn-default">Done</g:link></td>
                        </tr>
                    </g:each>
                </table>
            </div>
        </div>

        <div id="completedTask" class="tab-pane fade">
            <div class="container">
                <table class="table table-striped">
                    <tr>
                        <th colspan="2" class="text-center">Completed Task List</th>
                    </tr>
                    <g:each var="todo" in="${doneTasks}">
                        <tr>
                            <td class="text-center">${todo.detail}</td>
                        </tr>
                    </g:each>
                </table>
            </div>
        </div>
    </div>
</div>

%{--<table>--}%
%{--<tr>--}%
%{--<th>Status</th>--}%
%{--<th>Title</th>--}%
%{--<th>Detail</th>--}%
%{--</tr>--}%
%{--<g:each in="${notDoneTasks}" var="todo">--}%
%{--<tr>--}%
%{--<td><g:link controller="todo" action="update" id="${todo.id}">Done</g:link></td>--}%
%{--<td>${todo.title}</td>--}%
%{--<td>${todo.detail}</td>--}%
%{--</tr>--}%
%{--</g:each>--}%
%{--</table>--}%
%{--<table>--}%
%{--<tr>--}%
%{--<th>Done</th>--}%
%{--<th>Title</th>--}%
%{--<th>Detail</th>--}%
%{--<th>Done at</th>--}%
%{--</tr>--}%
%{--<g:each in="${doneTasks}" var="todo">--}%
%{--<tr>--}%
%{--<td>Done</td>--}%
%{--<td>${todo.title}</td>--}%
%{--<td>${todo.detail}</td>--}%
%{--<td>${todo.dateDone}</td>--}%
%{--</tr>--}%
%{--</g:each>--}%
%{--</table>--}%

<asset:javascript src="jquery-2.2.0.min.js"/>
<asset:javascript src="bootstrap.js"/>
</body>
</html>