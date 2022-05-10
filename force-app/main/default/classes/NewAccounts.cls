public class NewAccounts {
	
    public static void sObjectsInsert(Integer value){
        Integer counter = 1;
        
        List<Account> teaFactoryAccounts = new List<Account>();
        
        while(counter<=value){
            System.debug('Counter value before Incrementing' + counter);
            
            Account store = new Account();
            store.Name = 'The Tea Factory' + counter;
            store.AccountNumber = '345678' + counter;
            teaFactoryAccounts.add(store);
            System.debug(teaFactoryAccounts);
            
            counter = counter + 1;
            System.debug('Counter Value After Incrementing ' + counter);
         }
        
        System.debug('Size of the Account is ... ' + teaFactoryAccounts.size());
        System.debug('Elements in Account List ...' + teaFactoryAccounts);
        
        insert teaFactoryAccounts;
    }
}