global class LeadProcessor implements Database.Batchable<sObject>{
    
    global Database.QueryLocator start(Database.BatchableContext bc){
    	return Database.getQueryLocator('select id ,leadsource from Lead');
    }
    
    global void execute(Database.BatchableContext bc,List<lead> scope)
    {
        List<Lead> leads=new List<Lead>();
        for(lead l : scope)
        {
            l.LeadSource='Dreamforce';
            leads.add(l);
        }
        update leads;
    }
    
    global void finish(Database.BatchableContext bc)
    {
      AsyncApexJob job = [SELECT Id, Status, NumberOfErrors, 
            JobItemsProcessed,
            TotalJobItems, CreatedBy.Email
            FROM AsyncApexJob
            WHERE Id = :bc.getJobId()];
        system.debug(job);
    }     
        
}