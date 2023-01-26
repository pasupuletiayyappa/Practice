public class azureJSONWrapper{public class Links_Z {
    public Avatar self {get;set;} 
    public Avatar workItemUpdates {get;set;} 
    public Avatar workItemRevisions {get;set;} 
    public Avatar workItemHistory {get;set;} 
    public Avatar html {get;set;} 
    public Avatar workItemType {get;set;} 
    public Avatar fields {get;set;}

public class Fields {
    public String System_AreaPath {get;set;} // in json: System.AreaPath
    public String System_TeamProject {get;set;} // in json: System.TeamProject
    public String System_IterationPath {get;set;} // in json: System.IterationPath
    public String System_WorkItemType {get;set;} // in json: System.WorkItemType
    public String System_State {get;set;} // in json: System.State
    public String System_Reason {get;set;} // in json: System.Reason
    public String System_CreatedDate {get;set;} // in json: System.CreatedDate
    public System_CreatedBy System_CreatedBy {get;set;} // in json: System.CreatedBy
    public String System_ChangedDate {get;set;} // in json: System.ChangedDate
    public System_CreatedBy System_ChangedBy {get;set;} // in json: System.ChangedBy
    public String System_Title {get;set;} // in json: System.Title
    public String Microsoft_VSTS_Common_StateChangeDate {get;set;} // in json: Microsoft.VSTS.Common.StateChangeDate
    public Integer Microsoft_VSTS_Common_Priority {get;set;} // in json: Microsoft.VSTS.Common.Priority

}

public Integer id {get;set;} 
public Integer rev {get;set;} 
public Fields fields {get;set;} 
public Links_Z x_links {get;set;} // in json: _links
public String url {get;set;} 

public class Links {
    public Avatar avatar {get;set;}
}

public class System_CreatedBy {
    public String displayName {get;set;} 
    public String url {get;set;} 
    public Links x_links {get;set;} // in json: _links
    public String id {get;set;} 
    public String uniqueName {get;set;} 
    public String imageUrl {get;set;} 
    public String descriptor {get;set;} 
}

public class Avatar {
    public String href {get;set;} 

    
}
}
