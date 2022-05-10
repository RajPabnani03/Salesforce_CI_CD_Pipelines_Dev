public class ContactDetailsUpdate {
    public static void ContactUpdate() {
        
        List<Contact> conList = [SELECT Id,Name,Phone , Account.Phone FROM Contact];
        
        if(!conList.isEmpty())
        {
            for(Contact con : conList) {
                if(con.Phone == NULL){
                    con.Phone = con.Account.Phone;
                }
            }
        }
        
        if(!conList.isEmpty()) {
            update conList;
        }
    }
}