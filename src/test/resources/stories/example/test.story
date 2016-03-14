Scenario: Login to system
Given the user is on the Example page
When the user login in system


Scenario: test
Given the user refresh the Example page
When the user select 'Trees and Tables->Table with filters' in tree
When the user vertical scroll down <tableCaption> table
When the user vertical scroll up <tableCaption> table

Examples:
|tableCaption|columnName|
|COUNTRIES|Filling ID|