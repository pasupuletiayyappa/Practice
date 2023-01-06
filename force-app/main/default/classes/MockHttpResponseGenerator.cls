@isTest
global class MockHttpResponseGenerator implements HttpCalloutMock {
    global HTTPResponse respond(HTTPRequest req) {
        System.assertEquals('https://ayyappacustom-dev-ed.my.salesforce.com/services/data/v56.0/Limits', req.getEndpoint());
        HttpResponse res = new HttpResponse();
        res.setHeader('Content-Type', 'application/json');
        res.setBody('{"AnalyticsExternalDataSizeMB" : {"Max" : 40960,"Remaining" : 40960},"ConcurrentAsyncGetReportInstances" : {"Max" : 200,"Remaining" : 200},"ConcurrentEinsteinDataInsightsStoryCreation" : {"Max" : 5,"Remaining" : 5}}');
        res.setStatusCode(200);
        return res;
    }
}