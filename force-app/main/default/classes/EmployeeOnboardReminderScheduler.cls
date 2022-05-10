global class EmployeeOnboardReminderScheduler implements Schedulable {
	
    global void execute(SchedulableContext ctx)
    {
        List<Employee__c> opptys = [SELECT Id,Name,on__c,JoiningDate__c
                                   FROM Employee__c WHERE on__c !='Completed'
                                   AND JoiningDate__c < TODAY];
        
        List<Messaging.SingleEmailMessage> allEmails = new List<Messaging.SingleEmailMessage>();
        List<String> toAddress = new List<String>();
        for(Employee__c emp : [SELECT Id,Name,on__c,JoiningDate__c
                                   FROM Employee__c WHERE on__c !='Completed'
                                   AND JoiningDate__c < TODAY])
        {
            
        }
    }
}