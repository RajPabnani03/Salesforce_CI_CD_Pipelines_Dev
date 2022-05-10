public class TotalEmployeeSalary {
    public static void empTotalSalary() {
        
        List<Employee__c> empList = [SELECT Id , Salary__c , Account__r.Total_Salary__c 
                                     FROM Employee__c 
                                     WHERE CreatedDate = THIS_YEAR];
        
        if(!empList.isEmpty()) {
            for(Employee__c emp : empList) {
             	emp.Salary__c = emp.Account__r.Total_Salary__c;
            }
        }
        if(!empList.isEmpty()){
            update empList;
        }
    }
}