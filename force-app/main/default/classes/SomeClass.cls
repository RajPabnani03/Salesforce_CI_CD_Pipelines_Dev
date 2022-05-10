public class SomeClass {
	@future
    public static void someFutureMethod(List<Id> AccountIds){
        List<Account> accList = [SELECT Id, Name From Account WHERE Id IN :AccountIds];
        
    }
}