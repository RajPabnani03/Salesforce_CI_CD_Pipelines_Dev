@isTest
public class TempratureTest {
	@isTest
    private static void warmTempTest(){
        Decimal res = Temprature.FtoC(70);
        System.assertEquals(21.11, res);
    }
    @isTest 
    private static void coldTempTest(){
        Decimal res = Temprature.FtoC(32);
        System.assertEquals(0, res);
    }
    @isTest 
    private static void negativeTempTest(){
        Decimal res = Temprature.FtoC(-17);
        System.assertEquals(40, res);
    }
}