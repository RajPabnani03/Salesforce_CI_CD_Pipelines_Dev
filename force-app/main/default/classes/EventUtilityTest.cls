@isTest
public class EventUtilityTest {
	@isTest
    private static void lenghtMoreThanNeeded(){
        String result = EventUtility.EventPriority('Voloume');
        System.assertEquals(null, result);
    }
    @isTest
    private static void equalValue() {
        String result = EventUtility.EventPriority('CA');
        System.assertEquals('High', result);
    }
    @isTest
    private static void differentValue() {
        String result = EventUtility.EventPriority('AB');
        System.assertEquals('Medium', result);
    }
}