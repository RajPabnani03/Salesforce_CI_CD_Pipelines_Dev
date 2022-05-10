public class EmployeeSalary {
    public static void countEmployeeSalary() {
        
        List<Account> accList = [SELECT Id,Total_Salary__c, (SELECT Id,Salary__c FROM Employees__r) 
                                 FROM Account 
                                 WHERE CreatedDate = THIS_YEAR];
        
        if(!accList.isEmpty()){
            for(Account acc : accList){
                Decimal TotalSal = 0;
                for(Employee__c emp : acc.Employees__r) {
                    TotalSal = TotalSal + emp.Salary__c;
                }
                acc.Total_Salary__c = TotalSal;
            }
        }
        if(!accList.isEmpty()){
            update accList;
        }
    }
}