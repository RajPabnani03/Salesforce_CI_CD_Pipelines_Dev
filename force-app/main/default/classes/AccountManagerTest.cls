@isTest(SeeAllData = True)
public class AccountManagerTest {

    @isTest
    public static void TestAccountManager() {
        
        RestRequest request = new RestRequest();
        
        request.requestURI = 'https://avlonmeta-dev-ed.salesforce.com/services/apexrest/Accounts/0015j00000bBxmpAAC/contacts';
        
        request.httpMethod = 'GET';
        RestContext.request = request;
        
        System.debug('Test Account Result ' + AccountManager.getaccount());
    }
}