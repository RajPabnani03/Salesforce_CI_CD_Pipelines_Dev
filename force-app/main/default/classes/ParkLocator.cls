public class ParkLocator {
	//String country = 'United States';
    public static List<String> country(String country)
    {
        ParkService.ParksImplPort prkSvc = new ParkService.ParksImplPort();
        List<String> parksValue = prkSvc.byCountry(country);
        return parksValue;
    }
}