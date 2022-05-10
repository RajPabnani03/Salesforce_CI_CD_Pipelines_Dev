public class SaveAccountWithProperties {
    
    public string accountName{get;set;}
    public string accountType{get;set;}
    public 	pagereference saveAccount(){
        
        Account actObj = new Account();
        actObj.Name = accountName;
        actObj.Type = accountType;
        
        insert actObj;
        
        return new pagereference('/'+actObj.Id);
        
    }
    
}