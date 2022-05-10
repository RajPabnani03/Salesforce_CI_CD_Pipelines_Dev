@isTest(SeeAllData=false)
public class AccountTriggerTest {
	
    @isTest
    static void accountTrigerUnitTest(){
        Account acc = new Account();
        acc.Name = 'ABC Prop LTD.';
        acc.Phone = '5471412769';
        
        Test.startTest();
        insert acc;
        Test.stopTest();
        
        //SOQL to fetch Type Field
        Account accountResponse = [
            SELECT Id,Type
            FROM Account
            WHERE Id=: acc.Id
        ];
        //Validating the Trigger Outcome
        System.assertEquals('Prospect', acc.Type);
    }
}