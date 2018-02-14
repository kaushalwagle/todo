package todo

class TodoController {

    def index() {
        List<Todo> todos = Todo.list()
        List<Todo> done = []
        List<Todo> notDone = []
        for (def i = 0; i < todos.size(); i++) {
            if (todos[i].isDone) {
                done.add(todos[i])
            } else {
                notDone.add(todos[i])
            }
        }
        render view: "index.gsp", model: [doneTasks: done, notDoneTasks: notDone]
    }

    def save(Todo todo) {
        todo.dateCreated = new Date()
        if (todo.validate()) {
            todo.save flush: true, failOrError: true
            flash.message = "You have successfully created a new task."
        } else {      // something failed
            flash.message = "Error occurred while creating new task"
        }
        redirect action: "addtask"
    }

    def addtask() {
        render view: "addtask.gsp"
    }
}
