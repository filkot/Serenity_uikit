Scenario: Login to system
Given the user is on the Example page
When the user login in system


Scenario: test
Given the user refresh the Example page
When the user selects the item 'Trees and Tables->Table' in a tree
When the user select 'CHECKBOX' in comboBox
When the user selects the checkbox for row with <columnName> column and <cellValue> value in <tableCaption> table
Then the user should see that row with <columnName> column and <columnValue> value is selected in <tableCaption> table

Examples:
|tableCaption|columnName|cellValue|
|Simple Table with label components as columns|Id|5|