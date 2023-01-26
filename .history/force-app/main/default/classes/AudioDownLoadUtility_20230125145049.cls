public class AudioDownLoadUtility {
    
    public static blob AudioDownLoadRequest(String extFileUrl,String requestMethod,String contentType){
         Http h = new Http(); 
        HttpRequest req = new HttpRequest();
        extFileUrl = extFileUrl;
        req.setEndpoint(extFileUrl); 
        req.setMethod(requestMethod); //GET
        req.setHeader('Content-Type', contentType); //audio/mp3
        req.setCompressed(true); 
        req.setTimeout(60000); 
        try{
        HttpResponse res  = h.send(req); 
        system.debug('Response from Server: ' + res.getBody()); 
        
            blob retFile = res.getBodyAsBlob();
            return retFile;
        }catch(System.CalloutException ex){
            ex.setMessage('Response is Not Valid');
            throw ex;
            
        }
        
        
    }
    
    public static Id createAttachment(blob fileContent, String recordId, String fileType){
        Attachment attach = new Attachment(); 
        attach.ParentId = recordId; 
        attach.Name = recordId + '-' + 'callRecording'; 
        attach.Body = fileContent; 
        attach.contentType = fileType; 
        insert attach; 
        return attach.id;
    }

}