global class batchAudioFileProcessing implements Database.Batchable<sObject>,Database.AllowsCallouts {
    
    global Database.QueryLocator start(Database.BatchableContext BC) {
         
        String queruContact = 'SELECT ID,audionURL__c FROM Contact WHERE audionURL__c != NULL';
        return Database.getQueryLocator(queruContact);
    }
     
    global void execute(Database.BatchableContext BC, List<Contact> conList) {
        
        for(contact con:conList){
        
        String RecordId = con.Id; 
        String fileContentType='.mp3';
        String extFileURL= con.audionURL__c;
            system.debug('extFileURL--->'+extFileURL);
            blob fileBlob=AudioDownLoadUtility.AudioDownLoadRequest(extFileURL,'GET','audio/mp3');
            system.debug('fileBlob--->'+fileBlob);
        Id attachmentId = AudioDownLoadUtility.createAttachment(fileBlob, RecordId , fileContentType);
        }

}
    global void finish(Database.BatchableContext BC) {
    }
}