public class azureJSONWrapper{
	public Integer id;	//131489
	public Integer rev;	//1
	public cls_fields fields;
	public cls__links _links;
	public String url;	//https://dev.azure.com/fabrikam/_apis/wit/workItems/131489
	class cls_fields {
		public String href;	//https://dev.azure.com/fabrikam/_apis/wit/fields
	}
	class cls_System.CreatedBy {
		public String displayName;	//Jamal Hartnett
		public String url;	//https://vssps.dev.azure.com/fabrikam/_apis/Identities/d291b0c4-a05c-4ea6-8df1-4b41d5f39eff
		public cls__links _links;
		public String id;	//d291b0c4-a05c-4ea6-8df1-4b41d5f39eff
		public String uniqueName;	//fabrikamfiber4@hotmail.com
		public String imageUrl;	//https://dev.azure.com/fabrikam/_api/_common/identityImage?id=d291b0c4-a05c-4ea6-8df1-4b41d5f39eff
		public String descriptor;	//aad.YTkzODFkODYtNTYxYS03ZDdiLWJjM2QtZDUzMjllMjM5OTAz
	}
	class cls__links {
		public cls_self self;
		public cls_workItemUpdates workItemUpdates;
		public cls_workItemRevisions workItemRevisions;
		public cls_workItemHistory workItemHistory;
		public cls_html html;
		public cls_workItemType workItemType;
		public cls_fields fields;
	}
	class cls_avatar {
		public String href;	//https://dev.azure.com/mseng/_apis/GraphProfile/MemberAvatars/aad.YTkzODFkODYtNTYxYS03ZDdiLWJjM2QtZDUzMjllMjM5OTAz
	}
	class cls_System.ChangedBy {
		public String displayName;	//Jamal Hartnett
		public String url;	//https://vssps.dev.azure.com/fabrikam/_apis/Identities/d291b0c4-a05c-4ea6-8df1-4b41d5f39eff
		public cls__links _links;
		public String id;	//d291b0c4-a05c-4ea6-8df1-4b41d5f39eff
		public String uniqueName;	//fabrikamfiber4@hotmail.com
		public String imageUrl;	//https://dev.azure.com/fabrikam/_api/_common/identityImage?id=d291b0c4-a05c-4ea6-8df1-4b41d5f39eff
		public String descriptor;	//aad.YTkzODFkODYtNTYxYS03ZDdiLWJjM2QtZDUzMjllMjM5OTAz
	}
	class cls_self {
		public String href;	//https://dev.azure.com/fabrikam/_apis/wit/workItems/131489
	}
	class cls_workItemUpdates {
		public String href;	//https://dev.azure.com/fabrikam/_apis/wit/workItems/131489/updates
	}
	class cls_workItemRevisions {
		public String href;	//https://dev.azure.com/fabrikam/_apis/wit/workItems/131489/revisions
	}
	class cls_workItemHistory {
		public String href;	//https://dev.azure.com/fabrikam/_apis/wit/workItems/131489/history
	}
	class cls_html {
		public String href;	//https://dev.azure.com/fabrikam/web/wi.aspx?pcguid=20cda608-32f0-4e6e-9b7c-8def7b38d15a&id=131489
	}
	class cls_workItemType {
		public String href;	//https://dev.azure.com/fabrikam/aaee31d9-14cf-48b9-a92b-3f1446c13f80/_apis/wit/workItemTypes/Task
	}
	public static azureJSONWrapper parse(String json){
		return (azureJSONWrapper) System.JSON.deserialize(json, azureJSONWrapper.class);
	}
}
