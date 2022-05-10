public class AccountHandler {
    public static Account insertNewAccount(String AccountName) {
        try{
            Account newAccount = new Account(Name = AccountName);
            insert newAccount;
            return newAccount;
            
        } 
        catch(DmlException e) {
            System.debug('A DML exception has occoured: ' + e.getMessage());
            return null;
        }
        
    }
    
    public static void insertAccount(Integer numberOfNewAccounts) {
        Integer counter = 1;
        List<Account> addAccounts = new List<Account>(); 
        
        while(counter < numberOfNewAccounts) {
            System.debug('Counter Value before Incrementing ' + counter);
            
            Account store = new Account();
            
            store.Name = 'Acme Inc ' + counter;
            store.AccountNumber = 'A000' + counter;
            
            addAccounts.add(store);
            System.debug(addAccounts);
            
            counter = counter + 1;
            System.debug('Counter value After Incrementing' + counter);
            
        }
        
        System.debug('Size of Account is' + addAccounts.size());
        System.debug('Elements in Account List is ' + addAccounts);
        
        insert addAccounts;
    }
}