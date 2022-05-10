@isTest
public class ParkLocatorTest {
	
    @isTest static void testCallout() {
        Test.setMock(WebServiceMock.class, new ParkServiceMock());
        String country = 'USA';
        List<String> expectedParks = ParkLocator.country(country);
        
        System.debug('Value = ' + expectedParks);
            
        System.assertEquals('Yosemite', expectedParks[0]);
    }
}