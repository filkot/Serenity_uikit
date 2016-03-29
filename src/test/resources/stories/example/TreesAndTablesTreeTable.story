*-----------------------------------------------------------------------------------------------------------------------
* Tested application: vaadin_example
*
* UI element: Trees and Tables -> TreeTable
*
* Author: Maksim Zhelezko
* Date: 29.03.2016
*-----------------------------------------------------------------------------------------------------------------------
Meta: @group: TreeTable
GivenStories: stories/example/CommonLoginExamplesApp.story

Scenario: Check the checkbox with caption 'name' only for TreeTable
Given the user refresh the Example page
When the user selects the item 'Trees and Tables->TreeTable' in a tree
And the user unchecks the checkbox with 'name' caption
And the user checks the checkbox with 'name' caption
Then the user should see 'Name' column in the table

Scenario: Uncheck the checkbox with caption 'name' only for TreeTable
Given the user refresh the Example page
When the user selects the item 'Trees and Tables->TreeTable' in a tree
And the user unchecks the checkbox with 'name' caption
Then the user should not see 'Name' column in the table

Scenario: Make visible the column 'name' only from the settings wheel for TreeTable
Given the user refresh the Example page
When the user selects the item 'Trees and Tables->TreeTable' in a tree
And the user makes 'Password' column visible from the settings wheel for <tableCaption> table
Then the user should see 'Password' column in <tableCaption> table
And the user should see that 'Password' item is checked in the settings wheel in <tableCaption> table
Examples:
|tableCaption|
|TreeTable with different types of columns|

Scenario: Make visible all columns from the settings wheel for TreeTable
Given the user refresh the Example page
When the user selects the item 'Trees and Tables->TreeTable' in a tree
And the user makes 'Password' column visible from the settings wheel for <tableCaption> table
And the user makes 'Date' column visible from the settings wheel for <tableCaption> table
Then the user should see 'Password' column in <tableCaption> table
And the user should see 'Date' column in <tableCaption> table
And the user should see that 'Password' item is checked in the settings wheel in <tableCaption> table
And the user should see that 'Date' item is checked in the settings wheel in <tableCaption> table
Examples:
|tableCaption|
|TreeTable with different types of columns|

Scenario: Make visible again the column 'name' from the settings wheel for TreeTable
Given the user refresh the Example page
When the user selects the item 'Trees and Tables->TreeTable' in a tree
And the user unchecks the checkbox with 'name' caption
And the user makes 'Name' column visible from the settings wheel for <tableCaption> table
Then the user should see 'Name' column in the table
Examples:
|tableCaption|
|TreeTable with different types of columns|

Scenario: Select a parent row in TreeTable
Given the user refresh the Example page
When the user selects the item 'Trees and Tables->TreeTable' in a tree
And the user selects the row with 'Name' column and 'child1' value in <tableCaption> table
Then the user should see that row with 'Name' column and 'child1' value is selected in <tableCaption> table
Examples:
|tableCaption|
|TreeTable with different types of columns|

Scenario: Multi-select the parent rows in TreeTable
Given the user refresh the Example page
When the user selects the item 'Trees and Tables->TreeTable' in a tree
And the user multi-selects the row with 'Name' column and 'child1' value in <tableCaption> table
And the user multi-selects the row with 'Name' column and 'child4' value in <tableCaption> table
Then the user should see that row with 'Name' column and 'child1' value is selected in <tableCaption> table
And the user should see that row with 'Name' column and 'child4' value is selected in <tableCaption> table
Examples:
|tableCaption|
|TreeTable with different types of columns|

Scenario: Select another parent row in TreeTable
Given the user refresh the Example page
When the user selects the item 'Trees and Tables->TreeTable' in a tree
And the user selects the row with 'Name' column and 'child1' value in <tableCaption> table
And the user selects the row with 'Name' column and 'child4' value in <tableCaption> table
Then the user should see that row with 'Name' column and 'child1' value is deselected in <tableCaption> table
And the user should see that row with 'Name' column and 'child4' value is selected in <tableCaption> table
Examples:
|tableCaption|
|TreeTable with different types of columns|

Scenario: Multi-select the other parent rows in TreeTable
Given the user refresh the Example page
When the user selects the item 'Trees and Tables->TreeTable' in a tree
And the user selects the row with 'Name' column and 'child1' value in <tableCaption> table
And the user multi-selects the row with 'Name' column and 'child4' value in <tableCaption> table
And the user selects the row with 'Name' column and 'child7' value in <tableCaption> table
And the user multi-selects the row with 'Name' column and 'child10' value in <tableCaption> table
Then the user should see that row with 'Name' column and 'child1' value is selected in <tableCaption> table
And the user should see that row with 'Name' column and 'child4' value is selected in <tableCaption> table
Examples:
|tableCaption|
|TreeTable with different types of columns|

Scenario: Expand a parent row in TreeTable
Given the user refresh the Example page
When the user selects the item 'Trees and Tables->TreeTable' in a tree
And the user expands the row with 'Name' column and 'child1' value in <tableCaption> table
Then the user should see that row with 'Name' column and 'child1' value is expanded in <tableCaption> table
And the user should see the row with 'Name' column and 'child1' value in <tableCaption> table
And the user should see the row with 'Name' column and 'child2' value in <tableCaption> table
And the user should see the row with 'Name' column and 'child3' value in <tableCaption> table
Examples:
|tableCaption|
|TreeTable with different types of columns|

Scenario: Collapse a parent row in TreeTable
Given the user refresh the Example page
When the user selects the item 'Trees and Tables->TreeTable' in a tree
And the user collapses the row with 'Name' column and 'child1' value in <tableCaption> table
Then the user should see the row with '$columnName' column and '$cellValue' value in '$tableCaption' table
Examples:
|tableCaption|
|TreeTable with different types of columns|