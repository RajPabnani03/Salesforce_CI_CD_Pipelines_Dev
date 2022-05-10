public class UpdateAccounts {
    public static void updateAccount(){
     	
        List<Account> accList = new List<Account>();
        Set<Id> accIdSet = new Set<Id>();
        
        for(Contact con : [SELECT Id, Account.Id FROM Contact 
                           WHERE NAME LIKE '%test%'
                           AND Account.Id != NULL]){
                               if(!accIdSet.contains(con.Account.Id)){
                                   Account acc = new Account();
                                   acc.Id = con.Account.Id;
                                   acc.Active__c = 'Yes';
                                   acc.Rating = 'Hot';
                                   accList.add(acc);
                                   accIdSet.add(con.Account.Id);
                               }
                           }
        if(!accList.isEmpty())
        {
            update accList;
        }
    }
}