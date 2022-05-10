public class EmpContactUpdate {
    public static void EmpPhone() {
        
        List<Employee__c> empList = [SELECT Id , Name , Phone__c,Salary__c , Account__r.Phone 
                                     FROM Employee__c 
                                     WHERE CreatedDate = LAST_WEEK];
        
        if(!empList.isEmpty()) {
            
            for(Employee__c emp : empList) {
                    emp.Phone__c = emp.Account__r.Phone;
                
                if(emp.Salary__c == 90000) {
                    emp.Salary__c = 700000;
                }
            }
        }
        
        if(!empList.isEmpty()) {
            update empList;
        }
    }
}