package placement

class Application {

Student student
Placement_Opportunity placement
Date dateCreated
Date lastUpdated
Status status

static belongsTo = [student: Student,placement: Placement_Opportunity]

    static constraints = {
    }
}

