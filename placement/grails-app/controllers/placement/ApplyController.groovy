package placement

class ApplyController {

    def index() {}

     def processApplication() {
   
    def student = Student.findByName(params.student)
    def jobtitle = Placement_Opportunity.findByJobtitle(params.jobtitle)
   
    def status = Status.findByCode ('Applied')
    def application1 = new Application (student:student, placement:jobtitle).save()
 }
}

