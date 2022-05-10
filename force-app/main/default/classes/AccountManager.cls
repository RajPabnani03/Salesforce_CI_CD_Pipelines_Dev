@RestResource(urlMapping='/Accounts/*/Contacts')
global with sharing class AccountManager {
	
    @HttpGet
    global static account getaccount() {
        
        RestRequest request = RestContext.request;
        
        String accountId = request.requestURI.substring(request.requestURI.lastIndexOf('/')-18,
                                                       request.requestURI.lastIndexOf('/'));
        
        List<Account> accList = [SELECT Id,Name,(SELECT Id,FirstName,LastName FROM Contacts) FROM Account WHERE Id =: accountId];
        
        List<Contact> conList = [SELECT Id,Name FROM Contact WHERE account.Id =: accountId];
        
        System.debug('** accList[0] = ' + accList[0]);
        
        return accList[0];
    }
}