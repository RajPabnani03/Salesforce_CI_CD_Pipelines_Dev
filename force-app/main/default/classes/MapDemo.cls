public class MapDemo {
    public void mapDemoMethod() {
        Map<Id,Account> accIdMap = new Map<Id,Account>([SELECT Id, Name from Account Limit 2]);
        
        System.debug('accIdMap => ' + accIdMap);
    }	
}