public class MyDemo {
    public static void updateAccountPhone() {
        
        List<Account> accList = [SELECT Id , Name FROM Account WHERE CreatedDate = LAST_WEEK];
        
        if(!accList.isEmpty()) {
            
            for(Account acc : accList) {
                acc.Phone = '123456'; 
            }
        }
        if(!accList.isEmpty()) {
            update accList; 
        }
    }
}