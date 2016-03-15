Scenario: Login to system
Given the user is on the Example page
When the user login in system


Scenario: test
Given the user refresh the Example page
When the user select 'Trees and Tables->Table' in tree
When the user select 'CHECKBOX' in comboBox
When the user selects row with column <columnName> and value <cellValue> in <tableCaption> table
Then the user should see row with column <columnName> and value <cellValue> is selected in <tableCaption> table


Examples:
|tableCaption|columnName|cellValue|
|Simple Table with label components as columns|Id|5|