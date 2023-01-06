@isTest
public class OrgLimitsHandlerTest {
    
    @isTest static void testSetCalloutData(){
        Test.setMock(HttpCalloutMock.class, new MockHttpResponseGenerator());
        OrgLimitsHandler limtHandler = new OrgLimitsHandler();
        List<Limit_Types__mdt> limitTypeMdt = [SELECT Id, Limit_Type_Name__c FROM Limit_Types__mdt LIMIT 1];
        limtHandler.OrgLimitsHandler();
        
        
        
    }

}