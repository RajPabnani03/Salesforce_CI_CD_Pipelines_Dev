public class UpdateOpportunityDesc {
    public static void updateOpp() {
        
        List<Opportunity> oppList = new List<Opportunity>();
        
        oppList = [SELECT Id , Name , StageName ,Discount_Percent__c ,Description, CloseDate FROM Opportunity];
        
        if(!oppList.isEmpty()) {
            for(Opportunity opp : oppList) {
                if(opp.StageName == 'Closed Won') {
                    opp.description = 'Opportunity is Closed Won';
                }
                else if(opp.StageName == 'Closed Lost') {
                    opp.description = 'Opportunity is Closed Lost';
                }
            }
        }
        
        if(!oppList.isEmpty()) {
            update oppList;
        }
    }
}