public class AccountTriggerHandler {
    public static void updateRating(List<Account> newList) {
        for(Account acc : newList) {
            if(acc.Industry != null && acc.Industry == 'Media') {
                acc.Rating = 'Hot';
            }
            else {
                acc.Rating = 'Cold';
            }
        }
    }
    
    public static void createRelatedOpp(List<Account> newList) {
        List<Opportunity> oppToBeInserted = new List<Opportunity>();
        
        for(Account acc : newList) {
            Opportunity opp = new Opportunity();
            opp.Name = acc.Name;
            opp.AccountId = acc.Id;
            opp.StageName = 'Prospecting';
            opp.CloseDate = system.today();
            oppToBeInserted.add(opp);
        }
        
        if(!oppToBeInserted.isEmpty()){
            insert oppToBeInserted;
        }
    }
    
    public static void updatePhoneDescription(List<Account> newList,Map<Id,Account> oldMap){
        
        for(Account acc : newList){
            if(oldMap!=NULL && acc.Phone != oldMap.get(acc.Id).Phone) {
                acc.Description = 'Phone is modified on Account';
            }
        }
    }
    
    public static void updateRelatedOppPhone(List<Account> newList,Map<Id,Account> oldMap){
        
        Map<Id,Account> accIdToAccountMap = new Map<Id,Account>();
        list<Opportunity> oppList = new list<Opportunity>();
        
        for(Account acc : newList){
            if(oldMap!=NULL && acc.Phone != oldMap.get(acc.Id).Phone){
                accIdToAccountMap.put(acc.Id, acc);
            }
        }
        
        oppList = [SELECT Id, Phone_Number__c FROM Opportunity WHERE AccountId IN :accIdToAccountMap.keySet()];
    }
}