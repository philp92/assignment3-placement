import placement.Status
import placement.Student
import placement.Placement_Opportunity
class BootStrap {

    def init = { servletContext ->
	new Status(code:'Applied',description:'Has sent application for placement').save();
	new Status(code:'Not Invited For Interview',description:'Recieved reply from placement, not offered interview').save();
	new Status(code:'Invited For Interview',description:'Recieved reply from placement, offered interview').save();
	new Status(code:'Not Offered',description:'Had interview, placement not  offered').save();
	new Status(code:'Offered',description:'Had interview, placement offered').save();
	new Status(code:'Accepted',description:'Recieved offer, and accepted placement').save();
	new Status(code:'Rejected',description:'Rejected placement').save();
	new Student(name:'Phil',coursecode:'g500',notes:'successful').save();
	new Student(name:'Rob',coursecode:'g501',notes:'second test').save();
	new Student(name:'John',coursecode:'g502', notes:'input data').save();
	new Student(name:'Ryan',coursecode:'f90', notes:'final student').save();
	new Placement_Opportunity(companyname:'IBM',jobtitle:'Network engineer',status:'Open').save();
	new Placement_Opportunity(companyname:'Natwest',jobtitle:'Database analyst',status:'Open').save();
	new Placement_Opportunity(companyname:'Microsoft',jobtitle:'IT manager',status:'Open').save();
	new Placement_Opportunity(companyname:'Dell',jobtitle:'Safety technician',status:'Open').save();
	new Placement_Opportunity(companyname:'HP',jobtitle:'Programmer',status:'Closed').save();
    }
    def destroy = {
    }
}
