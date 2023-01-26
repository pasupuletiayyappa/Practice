public class AzureCallouts {
    public void AzureCallouts() {
        Http http = new Http();
        HttpRequest request = new HttpRequest();
        String encodedUrl= EncodingUtil.urlEncode('','UTF-8');
        request.setEndpoint(encodedUrl);
        request.setMethod('POST');
        request.setHeader('Content-Type', 'application/json;charset=UTF-8');
        String tokenId = '';

        Blob headerValue = Blob.valueOf(tokenId);
        String authorizationHeader = 'BASIC ' +EncodingUtil.base64Encode(headerValue);
        request.setHeader('Authorization', authorizationHeader);
        //request.setBody();
        HttpResponse response = http.send(request);
        //Type resultType = Type.forName('azureJSONWrapper');
        //return (azureJSONWrapper)System.JSON.deserialize(response, azureJSONWrapper.class);
        //System_CreatedBy jsonWrapper = (System_CreatedBy)JSON.deserialize(response.getBody(), System_CreatedBy.class);
        //return jsonWrapper.id;
    }
    

    
}
