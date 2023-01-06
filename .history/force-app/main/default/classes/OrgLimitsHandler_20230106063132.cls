public class OrgLimitsHandler {
    

public void OrgLimitsHandler(){
    String response = OrgRESTCallout.retriveResult('limits');
    map<String, Object> mapJsonData = (map<String, Object>)JSON.deserializeUntyped(response);
    List<String> metaDataLimitTypes = getOrgLimitTypes();

    getJsonDataLimits(mapJsonData,'SingleEmail');
    getJsonDataLimits(mapJsonData,'DailyWorkflowEmails');
    getJsonDataLimits(mapJsonData,'DailyAsyncApexTests');
    getJsonDataLimits(mapJsonData,'DailyBulkApiBatches'); 
    getJsonDataLimits(mapJsonData,'DailyBulkV2QueryFileStorageMB');
    getJsonDataLimits(mapJsonData,'DailyBulkV2QueryJobs');
    getJsonDataLimits(mapJsonData,'DailyDurableStreamingApiEvents');
    getJsonDataLimits(mapJsonData,'DailyGenericStreamingApiEvents');
    getJsonDataLimits(mapJsonData,'DailyEinsteinDiscoveryPredictAPICalls');
    getJsonDataLimits(mapJsonData,'StreamingApiConcurrentClients');
    getJsonDataLimits(mapJsonData,'DailyApiRequests');
    getJsonDataRemainingLimits(mapJsonData,'DailyBulkApiBatches','Ant Migration Tool');
    getJsonDataRemainingLimits(mapJsonData,'DailyBulkApiBatches','CPQ Integration User Connected App');
    getJsonDataRemainingLimits(mapJsonData,'DailyBulkApiBatches','Dataloader Bulk');
    getJsonDataRemainingLimits(mapJsonData,'DailyBulkApiBatches','Dataloader Partner');
    getJsonDataRemainingLimits(mapJsonData,'DailyBulkApiBatches','Force.com IDE');
    getJsonDataRemainingLimits(mapJsonData,'DailyBulkApiBatches','Salesforce Mobile Dashboards');
    getJsonDataRemainingLimits(mapJsonData,'DailyBulkApiBatches','Salesforce Touch');
    getJsonDataRemainingLimits(mapJsonData,'DailyBulkApiBatches','Salesforce for Outlook');
    getJsonDataRemainingLimits(mapJsonData,'DailyBulkApiBatches','Workbench');
    
}
//@future(callout=true)
public static void getJsonDataLimits(map<String, Object> mapJsonData,String jsonTagName){
    Integer maxLimit = 0;
    Integer remainingLimit = 0;
    
    map<String, Object> mapParentTag = (map<String, Object>)mapJsonData.get(jsonTagName);
    maxLimit = (Integer)mapParentTag.get('Max');
    remainingLimit = (Integer)mapParentTag.get('Remaining');
    createOrgLimits(jsonTagName,maxLimit,remainingLimit);
}

public static void getJsonDataRemainingLimits(map<String, Object> mapJsonData,String parentjsonTagName, String jsonTagName){
    Integer maxLimit = 0;
    Integer remainingLimit = 0;
    
    map<String, Object> mapParentTag = (map<String, Object>)mapJsonData.get(parentjsonTagName);
    map<String, Object> mapChildTag = (map<String, Object>)mapParentTag.get(jsonTagName);
    system.System.debug('mapSingleEmail--->'+mapParentTag);
    system.System.debug('mapSingleEmail1--->'+mapChildTag);
    maxLimit = (Integer)mapChildTag.get('Max');
    remainingLimit = (Integer)mapChildTag.get('Remaining');
    createOrgLimits(jsonTagName,maxLimit,remainingLimit);
}

public static void createOrgLimits(String LimitType, Integer Max, Integer Remaining){
List<Org_Limits__c> limitList = new List<Org_Limits__c>();
List<Org_Limits__c> queryLimits = [SELECT Id,Name FROM Org_Limits__c WHERE Name =: LimitType];
        Org_Limits__c limits = new Org_Limits__c();
        if(queryLimits.size() > 0){
            limits.Id = queryLimits[0].Id;
        }
            limits.Name = LimitType;
            limits.Total_Limit__c = Max;
            limits.Remaining_Limit__c = Remaining;
            limitList.add(limits);
        if(!limitList.isEmpty()){
            upsert limitList;
        }
        }

public static String getOrgLimitTypes(){
    Map<String, Limit_Types__mdt> mapLimitTypes = Limit_Types__mdt.getAll();
    for(String mapLimitType : mapLimitTypes.keySet()){
        return mapLimitTypes.get(mapLimitType).Limit_Type_Name__c;
    }

}