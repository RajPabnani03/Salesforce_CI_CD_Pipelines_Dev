public class PropertyUtility {
    
    public static void newListedProperties(){
        List<Property__c> newPropList = new List<Property__c>();
        
        newPropList = [SELECT Name,Broker__r.Email__c,Days_On_Market__c FROM Property__c WHERE Days_On_Market__c <=30];
        
        if(!newPropList.isEmpty()) {
            for(Property__c pro : newPropList) {
                String propEmail = pro.Name+' : '+ pro.Broker__r.Email__c;
                
                System.debug(propEmail);
            }
        }
    }
}