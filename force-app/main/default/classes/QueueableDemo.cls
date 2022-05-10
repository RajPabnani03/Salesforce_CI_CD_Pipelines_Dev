public class QueueableDemo implements system.Queueable {
	
    public void execute(system.QueueableContext context)
    {
        System.debug('Inside the execute method of queable Job...');
        
        List<Account> accList = new List<Account>([SELECT Id , Name FROM Account LIMIT 50]);
        System.debug('List of Accounts : ' + accList);
    }
}