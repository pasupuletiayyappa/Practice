@isTest 
public class OrgRESTCalloutTest {
    @isTest static void testCallout() {
        Test.setMock(HttpCalloutMock.class, new MockHttpResponseGenerator()); 
         OrgRESTCallout.retriveResult('Limits');
        String expectedValue = '{"AnalyticsExternalDataSizeMB" : {"Max" : 40960,"Remaining" : 40960},"ConcurrentAsyncGetReportInstances" : {"Max" : 200,"Remaining" : 200},"ConcurrentEinsteinDataInsightsStoryCreation" : {"Max" : 5,"Remaining" : 5}}';
        
    }
}