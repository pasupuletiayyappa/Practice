public class AzureCallouts {
    public staic void AzureCallouts() {
        Http http = new Http();
        HttpRequest request = new HttpRequest();
   
      request.setEndpoint('');
        request.setMethod('POST');
        request.setHeader('Content-Type', 'application/json;charset=UTF-8');
        String tokenId = '2ptgtxb264i5rz3scq4ulrgrgm3hq56xtyxrgo5v7h4wb474l2la';

        Blob headerValue = Blob.valueOf(tokenId);
        String authorizationHeader = 'BASIC ' +EncodingUtil.base64Encode(headerValue);
        request.setHeader('Authorization', authorizationHeader);
        request.setBody();
        HttpResponse response = http.send(request);
        //Type resultType = Type.forName('azureJSONWrapper');
        azureJSONWrapper results = (azureJSONWrapper) System.JSON.deserialize(response, azureJSONWrapper.class);
        //return results;

    }
}
