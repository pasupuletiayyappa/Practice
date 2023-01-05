public with sharing class OrgRESTCallout {
    public static String retriveResult(String strResourceName) {
        String response;
        String strEndPonitURL = URL.getSalesforceBaseUrl().toExternalForm() + '/services/data/v56.0/' + strResourceName;
        if(String.isNotBlank(strResourceName)) {
            HttpRequest httpRequest = new HttpRequest();  
            httpRequest.setMethod('GET');   
            httpRequest.setHeader('Authorization', 'OAuth ' + UserInfo.getSessionId());        
            httpRequest.setHeader('Authorization', 'Bearer ' + UserInfo.getSessionID()); 
            httpRequest.setEndpoint(strEndPonitURL); 
            
            try {  
                Http http = new Http();   
                HttpResponse httpResponse = http.send(httpRequest);  
                if (httpResponse.getStatusCode() == 200 ) {  
                    response = httpResponse.getBody();  
                } 
                else {  
                    throw new CalloutException(httpResponse.getBody());  
                }   
            } 
            catch(Exception ex) {  
                throw ex;  
            }  
        } 
        return response;
    }
}