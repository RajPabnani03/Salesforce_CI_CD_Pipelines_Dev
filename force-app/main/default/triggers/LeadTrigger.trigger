trigger LeadTrigger on Lead (before insert) {

    Set<String> companyName = new Set<String>();
    Map<String,Id> accountsNameWithId = new Map<String,Id>();
    List<Case> newCases = new List<Case>();
    
    for(Lead l : Trigger.new){
        companyName.add(l.Company);
    }
    
    //Get All company Accounts with all the same Name as the Lead being Inserted
    
    List<Account> accList = [SELECT Id,Name FROM Account WHERE Name IN : companyName];
    
    for(Account acc : accList) {
        accountsNameWithId.put(acc.Name, acc.Id);
    }
    
    for(lead l : Trigger.new){
        if(accountsNameWithId.keySet().contains(l.Company)) {
            Case c = new Case();
            c.AccountId = accountsNameWithId.get(l.Company);
            c.Subject = 'Account Already Exists for : ' + l.Company;
            c.Status = 'New';
            newCases.add(c);
        }
        insert newCases;
    }
    
    
    
    
}