public class AzureCallouts {
    public staic void AzureCallouts() {
        Http http = new Http();
        HttpRequest request = new HttpRequest();
   
      request.setEndpoint('');
        request.setMethod('POST');
        request.setHeader('Content-Type', 'application/json;charset=UTF-8');
        request.setBody();
        HttpResponse response = http.send(request);
        return response;

    }
}
