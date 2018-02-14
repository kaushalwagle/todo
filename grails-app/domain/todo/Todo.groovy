package todo

class Todo {

    Date dateCreated
    String title
    String detail
    Boolean isDone = false
    Date dateDone

    static constraints = {
        dateDone nullable: true
    }
}
