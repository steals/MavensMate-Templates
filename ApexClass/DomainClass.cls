/**
 * Encapsulates all behaviour logic relating to the {{ object_name }} object
 * 
 * For more guidelines and details see 
 *   https://developer.salesforce.com/page/Apex_Enterprise_Patterns_-_Domain_Layer
 *
 **/
public class {{ api_name }} extends SObjectDomain 
{
	public {{ api_name }}(List<{{ object_name }}> records) 
	{
		super(records);	
	}

	public override void onValidate()
	{
		for({{ object_name }} record : (List<{{ object_name }}>) Records)
		{
		}
	}

	public override void onValidate(Map<Id,SObject> existingRecords)
	{
		for({{ object_name }} record : (List<{{ object_name }}>) Records)
		{
		}
	}

	public override void onBeforeInsert()
	{
		for({{ object_name }} record : (List<{{ object_name }}>) Records)
		{
		}
	}

	public void someMethod()
	{
		for({{ object_name }} record : (List<{{ object_name }}>) Records)
		{
		}		
	}

	public class Constructor implements SObjectDomain.IConstructable
	{
		public SObjectDomain construct(List<SObject> sObjectList)
		{
			return new {{ api_name }}(sObjectList);
		}
	}	
}