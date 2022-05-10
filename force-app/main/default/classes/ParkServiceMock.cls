@isTest
global class ParkServiceMock implements WebServiceMock {
	
    global void doInvoke(
    		Object stud,
        	Object request,
        	Map<String,Object> response,
        	String endpoint,
        	String soapAction,
        	String requestName,
        	String responseNS,
        	String responseName,
        	String responseType
    ) {
        parkService.byCountryResponse response_x = new parkService.byCountryResponse();
        List<String> parksValue = new List<String> {'Yosemite','Sequoia','Carter Lake'};
        response_x.return_x = parksValue;
        response.put('response_x', response_x);
    }
}