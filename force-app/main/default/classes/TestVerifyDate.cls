@isTest
public class TestVerifyDate {
    @isTest
    private static void checkingDates() {
        
        Date value = VerifyDate.CheckDates(System.today(), System.today()+1);
        Date value2 = VerifyDate.CheckDates(System.today(), System.today()+60);
    }
    
    @isTest
    private static void DateWithin30DaysOrNot() {
        
    }
}