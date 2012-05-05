package placement

class Placement_Opportunity {

String jobtitle
String companyname
String status

static hasMany = [application: Application]

    static constraints = {
    }
}

