@isTest
private class LeadProcessorTest {
    @testSetup 
    static void setup() {
        List<Lead> leads = new List<Lead>();
      
        // insert 10 accounts
        for (Integer i=0;i<200;i++) {
            leads.add(new lead(LastName='Lead '+i, 
                Company='Lead', Status='Open - Not Contacted'));
        }
        insert leads;
    }
    static testmethod void test() {        
        Test.startTest();
        LeadProcessor uca = new LeadProcessor();
        Id batchId = Database.executeBatch(uca);
        Test.stopTest();
        // after the testing stops, assert records were updated properly
        System.assertEquals(200, [select count() from lead where leadsource = 'DreamForce']);
    }
    
}