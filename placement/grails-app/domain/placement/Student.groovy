package placement

class Student {

String name
String coursecode
String notes

static hasMany = [application: Application]

    static constraints = {
    }
}

