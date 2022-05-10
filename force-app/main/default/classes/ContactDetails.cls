public class ContactDetails {
    public static void contactPhoneValue() {
        
        List<Contact> conList = [SELECT Id , Name , Phone FROM Contact WHERE FirstName LIKE '%Sanjay%'];
        
        if(!conList.isEmpty()){
            for(Contact con : conList) {
                
                if(con.Phone == NULL) {
                    con.Phone = '9511818525';
                }
            }
        }
        
        if(!conList.isEmpty()) {
            update conList;
        }
        
    }
}