public class UpdatePhoneNumber {
    public static void PhoneNumberInput() {
         List<Contact> updateconList = new List<Contact>();
        List<Contact> conList = [SELECT Id , FirstName , Phone , Account.Phone,Stage__c FROM Contact WHERE AccountId!=NULL];
        System.debug('conList::'+conList);
        if(!conList.isEmpty()) {
            for(Contact con : conList) {                
                if(con.Phone == NULL){
                    con.Phone = con.Account.Phone;
                }
                if(con.Stage__c == NULL) {
                    con.Stage__c = 'Prospect';
                }
                updateconList.add(con);
            }
        }
        System.debug('updateContact::'+updateconList);
        if(!updateconList.isEmpty()){
            update updateconList;
        }
    }
}