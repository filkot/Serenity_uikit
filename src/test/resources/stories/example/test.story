Scenario: Login to system
Given the user is on the Example page
When the user login in system


Scenario: test
Given the user refresh the Example page
When the user select 'Trees and Tables->Table' in tree
When the user makes not visible column <columnName> from the settings wheel for <tableCaption> table
Then they should not see column <columnName> in <tableCaption> table
Examples:
|tableCaption|columnName|
|Simple Table with label components as columns|Id|


Scenario: test
Given the user refresh the Example page
When the user select 'Trees and Tables->Table' in tree
When the user makes visible column <columnName> from the settings wheel for <tableCaption> table
Then they should see column <columnName> in <tableCaption> table
Examples:
|tableCaption|columnName|
|Simple Table with label components as columns|Name|


