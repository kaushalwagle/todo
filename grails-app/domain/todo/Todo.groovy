package todo

class Todo {

    Date dateCreated
    String detail
    Boolean isDone = false
    Date dateDone

    static constraints = {
        dateDone nullable: true
    }
}
