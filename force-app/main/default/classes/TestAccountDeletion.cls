@isTest
public class TestAccountDeletion {
    @isTest static void TestDeleteAccountWithOneOpportunity(){
        // Test data setup
        // Create an account with an opportunity, and then try to delete it
        Account acct = new Account(Name = 'Test Account');
        insert acct;
        
        Opportunity opp = new Opportunity(Name=acct.Name + 'Opportunity',
                                         StageName = 'Prospect',
                                         CloseDate=System.today().addMonths(1),
                                         AccountId=acct.Id);
        insert opp;
        // Perform test
        Test.startTest();
        Database.DeleteResult result = Database.delete(acct,false);
        Test.stopTest();
        System.assert(!result.isSuccess());
        System.assert(result.getErrors().size() > 0);
        System.assertEquals('Cannot delete account with related opportunities.',
                             result.getErrors()[0].getMessage());
        
    }
}