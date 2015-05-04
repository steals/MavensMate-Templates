/**
 * Class encapsulates query logic for {{ object_name }}
 *
 * https://developer.salesforce.com/page/Apex_Enterprise_Patterns_-_Selector_Layer
 **/
public class {{ api_name }} extends SObjectSelector
	implements I{{ api_name }}
{
	public static I{{ api_name }} newInstance()
	{
		return (I{{ api_name }}) Application.Selector.newInstance({{ object_name }}.SObjectType);
	}

	public List<Schema.SObjectField> getSObjectFieldList()
	{
		return new List<Schema.SObjectField> {
				{{ object_name }}.Id,
				{{ object_name }}.Name
			};
	}

	public Schema.SObjectType getSObjectType()
	{
		return {{ object_name }}.sObjectType;
	}

	public List<{{ object_name }}> selectById(Set<ID> idSet)
	{
		return (List<{{ object_name }}>) selectSObjectsById(idSet);
	}	

	/*
	 * For more examples see https://github.com/financialforcedev/fflib-apex-common-samplecode
	 * 
	public List<{{ object_name }}> selectBySomethingElse(List<String> somethings)
	{
		assertIsAccessible();
		return (List<{{ object_name }}>) Database.query(
				String.format(
				'select {0}, ' +
				  'from {1} ' +
				  'where Something__c in :somethings ' + 
				  'order by {2}',
				new List<String> {
					getFieldListString(),
					getSObjectName(),
					getOrderBy() } ) );
	}
	 */
}