public class TotalContact {
    public static void sumOfAllContactAvailable() {
        
        List<Account> accList = [SELECT Id, Name , (SELECT Id, FirstName, LastName FROM Contacts) 
                                 FROM Account WHERE CreatedDate = THIS_MONTH];
        
        
        if(!accList.isEmpty()) {
            for(Account acc: accList) {
                acc.Total_Contact__c = acc.Contacts.size();
            }
        }   
        
        if(!accList.isEmpty()) {
            update accList;
        }
    }
}