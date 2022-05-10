@isTest
public class UpdatePhoneNumberTest {
	@isTest
    private static void PhoneNumberUpdate(){
        Account acc = new Account();
        acc.Name = 'Test Account';
        insert acc;
        
        Contact con = new Contact();
        con.AccountId = acc.Id;
        con.FirstName = 'Test';
        con.LastName ='Account';
        insert con;
        
        con = [SELECT Id From Contact WHERE Id =: con.Id];
        con.AccountId = acc.Id;
        update con;
        
        List<Contact> conList = [SELECT Id FROM Contact WHERE Id =: con.Id];
        UpdatePhoneNumber.PhoneNumberInput();
    }
}