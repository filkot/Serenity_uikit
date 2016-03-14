Scenario: Login to system
Given the user is on the Example page
When the user login in system


Scenario: test
Given the user refresh the Example page
When the user select 'Trees and Tables->Table with filters' in tree
And the user selects row with column <columnName> and value <columnValue> in <tableCaption> table
Then they should see row with column <columnName> and value <columnValue> is selected in <tableCaption> table
When the user deselects row with column <columnName> and value <columnValue> in <tableCaption> table
Then they should see row with column <columnName> and value <columnValue> is deselected in <tableCaption> table

Examples:
|tableCaption|columnName|columnValue|
|COUNTRIES|Filling ID|10|