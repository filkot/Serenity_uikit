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
Then the user should see that row with 'Name' column and 'child1' value is unselected in <tableCaption> table
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
Then the user should see that row with 'Name' column and 'child1' value is collapsed in <tableCaption> table
And the user should see the row with 'Name' column and 'child1' value in <tableCaption> table
And the user should not see the row with 'Name' column and 'child2' value in <tableCaption> table
And the user should not see the row with 'Name' column and 'child3' value in <tableCaption> table
Examples:
|tableCaption|
|TreeTable with different types of columns|

Scenario: Expand the selected parent row in TreeTable
Given the user refresh the Example page
When the user selects the item 'Trees and Tables->TreeTable' in a tree
And the user selects the row with 'Name' column and 'child1' value in <tableCaption> table
And the user expands the row with 'Name' column and 'child1' value in <tableCaption> table
Then the user should see that row with 'Name' column and 'child1' value is selected in <tableCaption> table
And the user should see that row with 'Name' column and 'child2' value is unselected in <tableCaption> table
And the user should see that row with 'Name' column and 'child3' value is unselected in <tableCaption> table
Examples:
|tableCaption|
|TreeTable with different types of columns|

Scenario: Collapse the selected parent row in TreeTable
Given the user refresh the Example page
When the user selects the item 'Trees and Tables->TreeTable' in a tree
And the user selects the row with 'Name' column and 'child1' value in <tableCaption> table
And the user expands the row with 'Name' column and 'child1' value in <tableCaption> table
And the user collapses the row with 'Name' column and 'child1' value in <tableCaption> table
Then the user should see that row with 'Name' column and 'child1' value is selected in <tableCaption> table
Examples:
|tableCaption|
|TreeTable with different types of columns|

Scenario: Expand the multi-selected parent rows in TreeTable
Given the user refresh the Example page
When the user selects the item 'Trees and Tables->TreeTable' in a tree
And the user selects the row with 'Name' column and 'child1' value in <tableCaption> table
And the user multi-selects the row with 'Name' column and 'child4' value in <tableCaption> table
And the user expands the row with 'Name' column and 'child1' value in <tableCaption> table
Then the user should see that row with 'Name' column and 'child1' value is selected in <tableCaption> table
And the user should see that row with 'Name' column and 'child4' value is selected in <tableCaption> table
Examples:
|tableCaption|
|TreeTable with different types of columns|

Scenario: Collapse the multi-selected parent rows in TreeTable
Given the user refresh the Example page
When the user selects the item 'Trees and Tables->TreeTable' in a tree
And the user selects the row with 'Name' column and 'child1' value in <tableCaption> table
And the user multi-selects the row with 'Name' column and 'child4' value in <tableCaption> table
And the user expands the row with 'Name' column and 'child1' value in <tableCaption> table
And the user collapses the row with 'Name' column and 'child1' value in <tableCaption> table
Then the user should see that row with 'Name' column and 'child1' value is selected in <tableCaption> table
And the user should see that row with 'Name' column and 'child4' value is selected in <tableCaption> table
Examples:
|tableCaption|
|TreeTable with different types of columns|

Scenario: Select a collapsed parent row when another parent row is selected and expanded in TreeTable
Given the user refresh the Example page
When the user selects the item 'Trees and Tables->TreeTable' in a tree
And the user selects the row with 'Name' column and 'child1' value in <tableCaption> table
And the user expands the row with 'Name' column and 'child1' value in <tableCaption> table
And the user multi-selects the row with 'Name' column and 'child4' value in <tableCaption> table
Then the user should see that row with 'Name' column and 'child1' value is selected in <tableCaption> table
And the user should see that row with 'Name' column and 'child4' value is selected in <tableCaption> table
Examples:
|tableCaption|
|TreeTable with different types of columns|

Scenario: Select the expanded parent row when another parent row is selected in TreeTable
Given the user refresh the Example page
When the user selects the item 'Trees and Tables->TreeTable' in a tree
And the user selects the row with 'Name' column and 'child4' value in <tableCaption> table
And the user expands the row with 'Name' column and 'child1' value in <tableCaption> table
And the user multi-selects the row with 'Name' column and 'child1' value in <tableCaption> table
Then the user should see that row with 'Name' column and 'child1' value is selected in <tableCaption> table
And the user should see that row with 'Name' column and 'child4' value is selected in <tableCaption> table
Examples:
|tableCaption|
|TreeTable with different types of columns|

Scenario: Select the collapsed parent row when other parent rows are selected in TreeTable
Given the user refresh the Example page
When the user selects the item 'Trees and Tables->TreeTable' in a tree
And the user selects the row with 'Name' column and 'child1' value in <tableCaption> table
And the user multi-selects the row with 'Name' column and 'child4' value in <tableCaption> table
And the user expands the row with 'Name' column and 'child4' value in <tableCaption> table
And the user selects the row with 'Name' column and 'child7' value in <tableCaption> table
Then the user should see that row with 'Name' column and 'child1' value is unselected in <tableCaption> table
And the user should see that row with 'Name' column and 'child4' value is unselected in <tableCaption> table
And the user should see that row with 'Name' column and 'child7' value is selected in <tableCaption> table
Examples:
|tableCaption|
|TreeTable with different types of columns|

Scenario: Select a child row in TreeTable
Given the user refresh the Example page
When the user selects the item 'Trees and Tables->TreeTable' in a tree
And the user expands the row with 'Name' column and 'child1' value in <tableCaption> table
And the user selects the row with 'Name' column and 'child2' value in <tableCaption> table
Then the user should see that row with 'Name' column and 'child2' value is selected in <tableCaption> table
And the user should see that row with 'Name' column and 'child1' value is unselected in <tableCaption> table
Examples:
|tableCaption|
|TreeTable with different types of columns|

Scenario: Select another child in the same parent row in TreeTable
Given the user refresh the Example page
When the user selects the item 'Trees and Tables->TreeTable' in a tree
And the user expands the row with 'Name' column and 'child1' value in <tableCaption> table
And the user selects the row with 'Name' column and 'child2' value in <tableCaption> table
And the user selects the row with 'Name' column and 'child3' value in <tableCaption> table
Then the user should see that row with 'Name' column and 'child2' value is unselected in <tableCaption> table
And the user should see that row with 'Name' column and 'child3' value is selected in <tableCaption> table
Examples:
|tableCaption|
|TreeTable with different types of columns|

Scenario: Multi-select another child in the same parent row in TreeTable
Given the user refresh the Example page
When the user selects the item 'Trees and Tables->TreeTable' in a tree
And the user expands the row with 'Name' column and 'child1' value in <tableCaption> table
And the user selects the row with 'Name' column and 'child2' value in <tableCaption> table
And the user multi-selects the row with 'Name' column and 'child3' value in <tableCaption> table
Then the user should see that row with 'Name' column and 'child3' value is selected in <tableCaption> table
And the user should see that row with 'Name' column and 'child2' value is selected in <tableCaption> table
And the user should see that row with 'Name' column and 'child1' value is unselected in <tableCaption> table
Examples:
|tableCaption|
|TreeTable with different types of columns|

Scenario: Multi-select the parent and all its children rows in TreeTable
Given the user refresh the Example page
When the user selects the item 'Trees and Tables->TreeTable' in a tree
And the user expands the row with 'Name' column and 'child1' value in <tableCaption> table
And the user selects the row with 'Name' column and 'child2' value in <tableCaption> table
And the user multi-selects the row with 'Name' column and 'child3' value in <tableCaption> table
And the user multi-selects the row with 'Name' column and 'child1' value in <tableCaption> table
Then the user should see that row with 'Name' column and 'child1' value is selected in <tableCaption> table
And the user should see that row with 'Name' column and 'child2' value is selected in <tableCaption> table
And the user should see that row with 'Name' column and 'child3' value is selected in <tableCaption> table
Examples:
|tableCaption|
|TreeTable with different types of columns|

Scenario: Select a child row and then collapse the parent row in TreeTable
Given the user refresh the Example page
When the user selects the item 'Trees and Tables->TreeTable' in a tree
And the user expands the row with 'Name' column and 'child1' value in <tableCaption> table
And the user selects the row with 'Name' column and 'child2' value in <tableCaption> table
And the user collapses the row with 'Name' column and 'child1' value in <tableCaption> table
Then the user should see that row with 'Name' column and 'child1' value is unselected in <tableCaption> table
Examples:
|tableCaption|
|TreeTable with different types of columns|

Scenario: Select all children rows in a single unselected parent row in TreeTable
Given the user refresh the Example page
When the user selects the item 'Trees and Tables->TreeTable' in a tree
And the user expands the row with 'Name' column and 'child10' value in <tableCaption> table
And the user selects the row with 'Name' column and 'child11' value in <tableCaption> table
And the user selects the row with 'Name' column and 'child12' value in <tableCaption> table
Then the user should see that row with 'Name' column and 'child10' value is unselected in <tableCaption> table
Examples:
|tableCaption|
|TreeTable with different types of columns|

Scenario: Select all children rows in a single selected parent row in TreeTable
Given the user refresh the Example page
When the user selects the item 'Trees and Tables->TreeTable' in a tree
And the user expands the row with 'Name' column and 'child10' value in <tableCaption> table
And the user selects the row with 'Name' column and 'child10' value in <tableCaption> table
And the user selects the row with 'Name' column and 'child11' value in <tableCaption> table
And the user selects the row with 'Name' column and 'child12' value in <tableCaption> table
Then the user should see that row with 'Name' column and 'child10' value is selected in <tableCaption> table
Examples:
|tableCaption|
|TreeTable with different types of columns|

Scenario: Re-expand the parent row when a child row is selected in TreeTable
Given the user refresh the Example page
When the user selects the item 'Trees and Tables->TreeTable' in a tree
And the user expands the row with 'Name' column and 'child1' value in <tableCaption> table
And the user selects the row with 'Name' column and 'child2' value in <tableCaption> table
And the user collapses the row with 'Name' column and 'child1' value in <tableCaption> table
And the user expands the row with 'Name' column and 'child1' value in <tableCaption> table
Then the user should see that row with 'Name' column and 'child2' value is selected in <tableCaption> table
Examples:
|tableCaption|
|TreeTable with different types of columns|

Scenario: Re-expand the parent row when the child and parent rows are selected in TreeTable
Given the user refresh the Example page
When the user selects the item 'Trees and Tables->TreeTable' in a tree
And the user selects the row with 'Name' column and 'child1' value in <tableCaption> table
And the user expands the row with 'Name' column and 'child1' value in <tableCaption> table
And the user selects the row with 'Name' column and 'child3' value in <tableCaption> table
And the user collapses the row with 'Name' column and 'child1' value in <tableCaption> table
And the user expands the row with 'Name' column and 'child1' value in <tableCaption> table
Then the user should see that row with 'Name' column and 'child1' value is selected in <tableCaption> table
And the user should see that row with 'Name' column and 'child3' value is selected in <tableCaption> table
Examples:
|tableCaption|
|TreeTable with different types of columns|

Scenario: Select another parent row when child row is selected in TreeTable
Given the user refresh the Example page
When the user selects the item 'Trees and Tables->TreeTable' in a tree
And the user expands the row with 'Name' column and 'child1' value in <tableCaption> table
And the user selects the row with 'Name' column and 'child3' value in <tableCaption> table
And the user selects the row with 'Name' column and 'child4' value in <tableCaption> table
Then the user should see that row with 'Name' column and 'child3' value is unselected in <tableCaption> table
And the user should see that row with 'Name' column and 'child4' value is selected in <tableCaption> table
Examples:
|tableCaption|
|TreeTable with different types of columns|

Scenario: Select the child and another parent rows in TreeTable
Given the user refresh the Example page
When the user selects the item 'Trees and Tables->TreeTable' in a tree
And the user expands the row with 'Name' column and 'child1' value in <tableCaption> table
And the user selects the row with 'Name' column and 'child3' value in <tableCaption> table
And the user multi-selects the row with 'Name' column and 'child4' value in <tableCaption> table
Then the user should see that row with 'Name' column and 'child3' value is selected in <tableCaption> table
And the user should see that row with 'Name' column and 'child4' value is selected in <tableCaption> table
Examples:
|tableCaption|
|TreeTable with different types of columns|

Scenario: Select the child and another parent rows and then expand that parent in TreeTable
Given the user refresh the Example page
When the user selects the item 'Trees and Tables->TreeTable' in a tree
And the user expands the row with 'Name' column and 'child1' value in <tableCaption> table
And the user selects the row with 'Name' column and 'child3' value in <tableCaption> table
And the user multi-selects the row with 'Name' column and 'child4' value in <tableCaption> table
And the user expands the row with 'Name' column and 'child4' value in <tableCaption> table
Then the user should see that row with 'Name' column and 'child3' value is selected in <tableCaption> table
And the user should see that row with 'Name' column and 'child4' value is selected in <tableCaption> table
And the user should see that row with 'Name' column and 'child5' value is unselected in <tableCaption> table
And the user should see that row with 'Name' column and 'child6' value is unselected in <tableCaption> table
Examples:
|tableCaption|
|TreeTable with different types of columns|

Scenario: Select the child and parent rows and then select another child row that is not in that parent in TreeTable
Given the user refresh the Example page
When the user selects the item 'Trees and Tables->TreeTable' in a tree
And the user expands the row with 'Name' column and 'child1' value in <tableCaption> table
And the user expands the row with 'Name' column and 'child4' value in <tableCaption> table
And the user selects the row with 'Name' column and 'child3' value in <tableCaption> table
And the user multi-selects the row with 'Name' column and 'child4' value in <tableCaption> table
And the user multi-selects the row with 'Name' column and 'child5' value in <tableCaption> table
Then the user should see that row with 'Name' column and 'child3' value is selected in <tableCaption> table
And the user should see that row with 'Name' column and 'child4' value is selected in <tableCaption> table
And the user should see that row with 'Name' column and 'child5' value is selected in <tableCaption> table
Examples:
|tableCaption|
|TreeTable with different types of columns|

Scenario: Select the child and parent rows and then select other child and parent rows in TreeTable
Given the user refresh the Example page
When the user selects the item 'Trees and Tables->TreeTable' in a tree
And the user expands the row with 'Name' column and 'child1' value in <tableCaption> table
And the user expands the row with 'Name' column and 'child4' value in <tableCaption> table
And the user selects the row with 'Name' column and 'child1' value in <tableCaption> table
And the user selects the row with 'Name' column and 'child3' value in <tableCaption> table
And the user multi-selects the row with 'Name' column and 'child4' value in <tableCaption> table
And the user multi-selects the row with 'Name' column and 'child6' value in <tableCaption> table
Then the user should see that row with 'Name' column and 'child1' value is selected in <tableCaption> table
And the user should see that row with 'Name' column and 'child3' value is selected in <tableCaption> table
And the user should see that row with 'Name' column and 'child4' value is selected in <tableCaption> table
And the user should see that row with 'Name' column and 'child6' value is selected in <tableCaption> table
Examples:
|tableCaption|
|TreeTable with different types of columns|

Scenario: Expand the first row from the multi-selected parent rows in TreeTable
Given the user refresh the Example page
When the user selects the item 'Trees and Tables->TreeTable' in a tree
And the user multi-selects the row with 'Name' column and 'child1' value in <tableCaption> table
And the user multi-selects the row with 'Name' column and 'child4' value in <tableCaption> table
And the user multi-selects the row with 'Name' column and 'child7' value in <tableCaption> table
And the user multi-selects the row with 'Name' column and 'child10' value in <tableCaption> table
And the user expands the row with 'Name' column and 'child1' value in <tableCaption> table
Then the user should see that row with 'Name' column and 'child1' value is expanded in <tableCaption> table
And the user should see that row with 'Name' column and 'child4' value is collapsed in <tableCaption> table
And the user should see that row with 'Name' column and 'child7' value is collapsed in <tableCaption> table
And the user should see that row with 'Name' column and 'child10' value is collapsed in <tableCaption> table
Examples:
|tableCaption|
|TreeTable with different types of columns|

Scenario: Collapse the first row from the multi-selected parent rows in TreeTable
Given the user refresh the Example page
When the user selects the item 'Trees and Tables->TreeTable' in a tree
And the user multi-selects the row with 'Name' column and 'child1' value in <tableCaption> table
And the user multi-selects the row with 'Name' column and 'child4' value in <tableCaption> table
And the user multi-selects the row with 'Name' column and 'child7' value in <tableCaption> table
And the user multi-selects the row with 'Name' column and 'child10' value in <tableCaption> table
And the user expands the row with 'Name' column and 'child1' value in <tableCaption> table
And the user expands the row with 'Name' column and 'child4' value in <tableCaption> table
And the user expands the row with 'Name' column and 'child7' value in <tableCaption> table
And the user expands the row with 'Name' column and 'child10' value in <tableCaption> table
And the user collapses the row with 'Name' column and 'child1' value in <tableCaption> table
Then the user should see that row with 'Name' column and 'child1' value is collapsed in <tableCaption> table
And the user should see that row with 'Name' column and 'child4' value is expanded in <tableCaption> table
And the user should see that row with 'Name' column and 'child7' value is expanded in <tableCaption> table
And the user should see that row with 'Name' column and 'child10' value is expanded in <tableCaption> table
Examples:
|tableCaption|
|TreeTable with different types of columns|

Scenario: Expand the last row from the multi-selected parent rows in TreeTable
Given the user refresh the Example page
When the user selects the item 'Trees and Tables->TreeTable' in a tree
And the user multi-selects the row with 'Name' column and 'child1' value in <tableCaption> table
And the user multi-selects the row with 'Name' column and 'child4' value in <tableCaption> table
And the user multi-selects the row with 'Name' column and 'child7' value in <tableCaption> table
And the user multi-selects the row with 'Name' column and 'child10' value in <tableCaption> table
And the user expands the row with 'Name' column and 'child10' value in <tableCaption> table
Then the user should see that row with 'Name' column and 'child1' value is collapsed in <tableCaption> table
And the user should see that row with 'Name' column and 'child4' value is collapsed in <tableCaption> table
And the user should see that row with 'Name' column and 'child7' value is collapsed in <tableCaption> table
And the user should see that row with 'Name' column and 'child10' value is expanded in <tableCaption> table
Examples:
|tableCaption|
|TreeTable with different types of columns|

Scenario: Collapse the last row from the multi-selected parent rows in TreeTable
Given the user refresh the Example page
When the user selects the item 'Trees and Tables->TreeTable' in a tree
And the user multi-selects the row with 'Name' column and 'child1' value in <tableCaption> table
And the user multi-selects the row with 'Name' column and 'child4' value in <tableCaption> table
And the user multi-selects the row with 'Name' column and 'child7' value in <tableCaption> table
And the user multi-selects the row with 'Name' column and 'child10' value in <tableCaption> table
And the user expands the row with 'Name' column and 'child1' value in <tableCaption> table
And the user expands the row with 'Name' column and 'child4' value in <tableCaption> table
And the user expands the row with 'Name' column and 'child7' value in <tableCaption> table
And the user expands the row with 'Name' column and 'child10' value in <tableCaption> table
And the user collapses the row with 'Name' column and 'child10' value in <tableCaption> table
Then the user should see that row with 'Name' column and 'child1' value is expanded in <tableCaption> table
And the user should see that row with 'Name' column and 'child4' value is expanded in <tableCaption> table
And the user should see that row with 'Name' column and 'child7' value is expanded in <tableCaption> table
And the user should see that row with 'Name' column and 'child10' value is collapsed in <tableCaption> table
Examples:
|tableCaption|
|TreeTable with different types of columns|

Scenario: Make not visible 'Name' column when only the parent row is selected
Given the user refresh the Example page
When the user selects the item 'Trees and Tables->TreeTable' in a tree
And the user selects the row with 'Name' column and 'child1' value in <tableCaption> table
And the user makes 'Id' column not visible from the settings wheel for <tableCaption> table
Then the user should see that row with 'Name' column and 'child1' value is selected in <tableCaption> table
Examples:
|tableCaption|
|TreeTable with different types of columns|

Scenario: Make not visible 'Name' column when only the child row is selected
Given the user refresh the Example page
When the user selects the item 'Trees and Tables->TreeTable' in a tree
And the user expands the row with 'Name' column and 'child1' value in <tableCaption> table
And the user selects the row with 'Name' column and 'child2' value in <tableCaption> table
And the user makes 'Id' column not visible from the settings wheel for <tableCaption> table
Then the user should see that row with 'Name' column and 'child2' value is selected in <tableCaption> table
Examples:
|tableCaption|
|TreeTable with different types of columns|

Scenario: Make not visible 'Name' column when parent and child rows are selected
Given the user refresh the Example page
When the user selects the item 'Trees and Tables->TreeTable' in a tree
And the user expands the row with 'Name' column and 'child1' value in <tableCaption> table
And the user selects the row with 'Name' column and 'child1' value in <tableCaption> table
And the user selects the row with 'Name' column and 'child2' value in <tableCaption> table
And the user makes 'Id' column not visible from the settings wheel for <tableCaption> table
Then the user should see that row with 'Name' column and 'child1' value is selected in <tableCaption> table
And the user should see that row with 'Name' column and 'child2' value is selected in <tableCaption> table
Examples:
|tableCaption|
|TreeTable with different types of columns

Scenario: Make visible 'Name' column when only the parent row is selected
Given the user refresh the Example page
When the user selects the item 'Trees and Tables->TreeTable' in a tree
And the user selects the row with 'Name' column and 'child1' value in <tableCaption> table
And the user makes 'Id' column not visible from the settings wheel for <tableCaption> table
And the user makes 'Id' column visible from the settings wheel for <tableCaption> table
Then the user should see that row with 'Name' column and 'child1' value is selected in <tableCaption> table
Examples:
|tableCaption|
|TreeTable with different types of columns|

Scenario: Make visible 'Name' column when only the child row is selected
Given the user refresh the Example page
When the user selects the item 'Trees and Tables->TreeTable' in a tree
And the user expands the row with 'Name' column and 'child1' value in <tableCaption> table
And the user selects the row with 'Name' column and 'child2' value in <tableCaption> table
And the user makes 'Id' column not visible from the settings wheel for <tableCaption> table
And the user makes 'Id' column visible from the settings wheel for <tableCaption> table
Then the user should see that row with 'Name' column and 'child2' value is selected in <tableCaption> table
Examples:
|tableCaption|
|TreeTable with different types of columns|

Scenario: Make visible 'Name' column when parent and child rows are selected
Given the user refresh the Example page
When the user selects the item 'Trees and Tables->TreeTable' in a tree
And the user expands the row with 'Name' column and 'child1' value in <tableCaption> table
And the user selects the row with 'Name' column and 'child1' value in <tableCaption> table
And the user selects the row with 'Name' column and 'child2' value in <tableCaption> table
And the user makes 'Id' column not visible from the settings wheel for <tableCaption> table
And the user makes 'Id' column visible from the settings wheel for <tableCaption> table
Then the user should see that row with 'Name' column and 'child1' value is selected in <tableCaption> table
And the user should see that row with 'Name' column and 'child2' value is selected in <tableCaption> table
Examples:
|tableCaption|
|TreeTable with different types of columns|

Scenario: Filter by 'Id' column when parent row is selected
Given the user refresh the Example page
When the user selects the item 'Trees and Tables->TreeTable' in a tree
And the user selects the row with 'Name' column and 'child1' value in <tableCaption> table
And the user inputs 'a' text into 'Id' filter in <tableCaption> table
And the user makes 'Id' filter empty in <tableCaption> table
Then the user should see that row with 'Name' column and 'child1' value is selected in <tableCaption> table
Examples:
|tableCaption|
|TreeTable with different types of columns|

Scenario: Filter by 'Id' column when child row is selected
Given the user refresh the Example page
When the user selects the item 'Trees and Tables->TreeTable' in a tree
And the user expands the row with 'Name' column and 'child1' value in <tableCaption> table
And the user selects the row with 'Name' column and 'child2' value in <tableCaption> table
And the user inputs 'a' text into 'Id' filter in <tableCaption> table
And the user makes 'Id' filter empty in <tableCaption> table
Then the user should see that row with 'Name' column and 'child2' value is selected in <tableCaption> table
Examples:
|tableCaption|
|TreeTable with different types of columns|

Scenario: Filter by 'Id' column when parent and child rows are selected
Given the user refresh the Example page
When the user selects the item 'Trees and Tables->TreeTable' in a tree
And the user expands the row with 'Name' column and 'child1' value in <tableCaption> table
And the user selects the row with 'Name' column and 'child1' value in <tableCaption> table
And the user selects the row with 'Name' column and 'child2' value in <tableCaption> table
And the user inputs 'a' text into 'Id' filter in <tableCaption> table
And the user makes 'Id' filter empty in <tableCaption> table
Then the user should see that row with 'Name' column and 'child1' value is selected in <tableCaption> table
And the user should see that row with 'Name' column and 'child2' value is selected in <tableCaption> table
Examples:
|tableCaption|
|TreeTable with different types of columns|

Scenario: Filter by 'Id' column when parent row is expanded
Given the user refresh the Example page
When the user selects the item 'Trees and Tables->TreeTable' in a tree
And the user expands the row with 'Name' column and 'child1' value in <tableCaption> table
And the user inputs 'a' text into 'Id' filter in <tableCaption> table
And the user makes 'Id' filter empty in <tableCaption> table
Then the user should see that row with 'Name' column and 'child1' value is expanded in <tableCaption> table
Examples:
|tableCaption|
|TreeTable with different types of columns|

Scenario: Filter by 'Id' column when parent rows is collapsed
Given the user refresh the Example page
When the user selects the item 'Trees and Tables->TreeTable' in a tree
And the user expands the row with 'Name' column and 'child1' value in <tableCaption> table
And the user expands the row with 'Name' column and 'child4' value in <tableCaption> table
And the user expands the row with 'Name' column and 'child7' value in <tableCaption> table
And the user collapses the row with 'Name' column and 'child10' value in <tableCaption> table
And the user inputs 'a' text into 'Id' filter in <tableCaption> table
And the user makes 'Id' filter empty in <tableCaption> table
Then the user should see that row with 'Name' column and 'child10' value is collapsed in <tableCaption> table
Examples:
|tableCaption|
|TreeTable with different types of columns|

Scenario: Select a parent row using a checkbox in TreeTable
Given the user refresh the Example page
When the user selects the item 'Trees and Tables->TreeTable' in a tree
And the user checks the checkbox for row with 'Name' column and 'child1' value in <tableCaption> table
Then the user should see that row with 'Name' column and 'child1' value is selected in <tableCaption> table
And the user should see that checkbox for row with 'Name' column and 'child1' value is checked in <tableCaption> table
Examples:
|tableCaption|
|TreeTable with different types of columns|

Scenario: Select another parent row using a checkbox in TreeTable
Given the user refresh the Example page
When the user selects the item 'Trees and Tables->TreeTable' in a tree
And the user checks the checkbox for row with 'Name' column and 'child1' value in <tableCaption> table
And the user checks the checkbox for row with 'Name' column and 'child4' value in <tableCaption> table
Then the user should see that row with 'Name' column and 'child1' value is selected in <tableCaption> table
And the user should see that row with 'Name' column and 'child4' value is selected in <tableCaption> table
And the user should see that checkbox for row with 'Name' column and 'child1' value is checked in <tableCaption> table
And the user should see that checkbox for row with 'Name' column and 'child4' value is checked in <tableCaption> table
Examples:
|tableCaption|
|TreeTable with different types of columns|

Scenario: Select a collapsed parent row using a checkbox when another parent row is selected and expanded in TreeTable
Given the user refresh the Example page
When the user selects the item 'Trees and Tables->TreeTable' in a tree
And the user checks the checkbox for row with 'Name' column and 'child1' value in <tableCaption> table
And the user expands the row with 'Name' column and 'child1' value in <tableCaption> table
And the user checks the checkbox for row with 'Name' column and 'child4' value in <tableCaption> table
Then the user should see that checkbox for row with 'Name' column and 'child1' value is checked in <tableCaption> table
And the user should see that checkbox for row with 'Name' column and 'child4' value is checked in <tableCaption> table
Examples:
|tableCaption|
|TreeTable with different types of columns|

Scenario: Select the expanded parent row using a checkbox when another parent row is selected in TreeTable
Given the user refresh the Example page
When the user selects the item 'Trees and Tables->TreeTable' in a tree
And the user checks the checkbox for row with 'Name' column and 'child4' value in <tableCaption> table
And the user expands the row with 'Name' column and 'child1' value in <tableCaption> table
And the user checks the checkbox for row with 'Name' column and 'child1' value in <tableCaption> table
Then the user should see that checkbox for row with 'Name' column and 'child1' value is checked in <tableCaption> table
And the user should see that checkbox for row with 'Name' column and 'child4' value is checked in <tableCaption> table
Examples:
|tableCaption|
|TreeTable with different types of columns|

Scenario: Select the collapsed parent row using a checkbox when other parent rows are selected in TreeTable
Given the user refresh the Example page
When the user selects the item 'Trees and Tables->TreeTable' in a tree
And the user checks the checkbox for row with 'Name' column and 'child1' value in <tableCaption> table
And the user checks the checkbox for row with 'Name' column and 'child4' value in <tableCaption> table
And the user expands the row with 'Name' column and 'child4' value in <tableCaption> table
And the user checks the checkbox for row with 'Name' column and 'child7' value in <tableCaption> table
Then the user should see that checkbox for row with 'Name' column and 'child1' value is checked in <tableCaption> table
And the user should see that checkbox for row with 'Name' column and 'child4' value is checked in <tableCaption> table
And the user should see that checkbox for row with 'Name' column and 'child7' value is checked in <tableCaption> table
Examples:
|tableCaption|
|TreeTable with different types of columns|

Scenario: Select a child row using a checkbox in TreeTable
Given the user refresh the Example page
When the user selects the item 'Trees and Tables->TreeTable' in a tree
And the user expands the row with 'Name' column and 'child1' value in <tableCaption> table
And the user checks the checkbox for row with 'Name' column and 'child2' value in <tableCaption> table
Then the user should see that row with 'Name' column and 'child2' value is selected in <tableCaption> table
And the user should see that row with 'Name' column and 'child1' value is unselected in <tableCaption> table
And the user should see that checkbox for row with 'Name' column and 'child1' value is unchecked in <tableCaption> table
And the user should see that checkbox for row with 'Name' column and 'child2' value is checked in <tableCaption> table
Examples:
|tableCaption|
|TreeTable with different types of columns|

Scenario: Select another child using a checkbox in the same parent row using a checkbox in TreeTable
Given the user refresh the Example page
When the user selects the item 'Trees and Tables->TreeTable' in a tree
And the user expands the row with 'Name' column and 'child1' value in <tableCaption> table
And the user checks the checkbox for row with 'Name' column and 'child2' value in <tableCaption> table
And the user checks the checkbox for row with 'Name' column and 'child3' value in <tableCaption> table
Then the user should see that row with 'Name' column and 'child2' value is selected in <tableCaption> table
And the user should see that row with 'Name' column and 'child3' value is selected in <tableCaption> table
And the user should see that checkbox for row with 'Name' column and 'child2' value is checked in <tableCaption> table
And the user should see that checkbox for row with 'Name' column and 'child3' value is checked in <tableCaption> table
Examples:
|tableCaption|
|TreeTable with different types of columns|

Scenario: Select a child row using a checkbox and then collapse the parent row in TreeTable
Given the user refresh the Example page
When the user selects the item 'Trees and Tables->TreeTable' in a tree
And the user expands the row with 'Name' column and 'child1' value in <tableCaption> table
And the user selects the row with 'Name' column and 'child2' value in <tableCaption> table
And the user collapses the row with 'Name' column and 'child1' value in <tableCaption> table
Then the user should see that row with 'Name' column and 'child1' value is unselected in <tableCaption> table
Examples:
|tableCaption|
|TreeTable with different types of columns|

Scenario: Select all children rows using a checkbox in a single unselected parent row in TreeTable
Given the user refresh the Example page
When the user selects the item 'Trees and Tables->TreeTable' in a tree
And the user expands the row with 'Name' column and 'child10' value in <tableCaption> table
And the user checks the checkbox for row with 'Name' column and 'child11' value in <tableCaption> table
And the user checks the checkbox for row with 'Name' column and 'child12' value in <tableCaption> table
Then the user should see that checkbox for row with 'Name' column and 'child10' value is unchecked in <tableCaption> table
Examples:
|tableCaption|
|TreeTable with different types of columns|

Scenario: Select all children rows using a checkbox in a single selected parent row in TreeTable
Given the user refresh the Example page
When the user selects the item 'Trees and Tables->TreeTable' in a tree
And the user expands the row with 'Name' column and 'child10' value in <tableCaption> table
And the user checks the checkbox for row with 'Name' column and 'child10' value in <tableCaption> table
And the user checks the checkbox for row with 'Name' column and 'child11' value in <tableCaption> table
And the user checks the checkbox for row with 'Name' column and 'child12' value in <tableCaption> table
Then the user should see that checkbox for row with 'Name' column and 'child10' value is checked in <tableCaption> table
Examples:
|tableCaption|
|TreeTable with different types of columns|

->>

Scenario: Select another parent row using a checkbox when child row is selected in TreeTable
Given the user refresh the Example page
When the user selects the item 'Trees and Tables->TreeTable' in a tree
And the user expands the row with 'Name' column and 'child1' value in <tableCaption> table
And the user checks the checkbox for row with 'Name' column and 'child3' value in <tableCaption> table
And the user checks the checkbox for row with 'Name' column and 'child4' value in <tableCaption> table
Then the user should see that checkbox for row with 'Name' column and 'child3' value is checked in <tableCaption> table
And the user should see that checkbox for row with 'Name' column and 'child4' value is checked in <tableCaption> table
Examples:
|tableCaption|
|TreeTable with different types of columns|

Scenario: Select the child and another parent rows using a checkbox in TreeTable
Given the user refresh the Example page
When the user selects the item 'Trees and Tables->TreeTable' in a tree
And the user expands the row with 'Name' column and 'child1' value in <tableCaption> table
And the user checks the checkbox for row with 'Name' column and 'child1' value in <tableCaption> table
And the user checks the checkbox for row with 'Name' column and 'child3' value in <tableCaption> table
And the user checks the checkbox for row with 'Name' column and 'child4' value in <tableCaption> table
Then the user should see that row with 'Name' column and 'child1' value is selected in <tableCaption> table
And the user should see that row with 'Name' column and 'child3' value is selected in <tableCaption> table
And the user should see that row with 'Name' column and 'child4' value is selected in <tableCaption> table
Examples:
|tableCaption|
|TreeTable with different types of columns|

Scenario: Select the child and parent rows using a checkbox and then select another child row that is not in that parent in TreeTable
Given the user refresh the Example page
When the user selects the item 'Trees and Tables->TreeTable' in a tree
And the user expands the row with 'Name' column and 'child1' value in <tableCaption> table
And the user expands the row with 'Name' column and 'child4' value in <tableCaption> table
And the user checks the checkbox for row with 'Name' column and 'child3' value in <tableCaption> table
And the user checks the checkbox for row with 'Name' column and 'child4' value in <tableCaption> table
And the user checks the checkbox for row with 'Name' column and 'child5' value in <tableCaption> table
Then the user should see that checkbox for row with 'Name' column and 'child3' value is checked in <tableCaption> table
And the user should see that checkbox for row with 'Name' column and 'child4' value is checked in <tableCaption> table
And the user should see that checkbox for row with 'Name' column and 'child5' value is checked in <tableCaption> table
Examples:
|tableCaption|
|TreeTable with different types of columns|

Scenario: Select the child and parent rows and then select other child and parent rows using a checkbox in TreeTable
Given the user refresh the Example page
When the user selects the item 'Trees and Tables->TreeTable' in a tree
And the user expands the row with 'Name' column and 'child1' value in <tableCaption> table
And the user expands the row with 'Name' column and 'child4' value in <tableCaption> table
And the user checks the checkbox for row with 'Name' column and 'child1' value in <tableCaption> table
And the user checks the checkbox for row with 'Name' column and 'child3' value in <tableCaption> table
And the user checks the checkbox for row with 'Name' column and 'child4' value in <tableCaption> table
And the user checks the checkbox for row with 'Name' column and 'child6' value in <tableCaption> table
Then the user should see that checkbox for row with 'Name' column and 'child1' value is checked in <tableCaption> table
And the user should see that checkbox for row with 'Name' column and 'child3' value is checked in <tableCaption> table
And the user should see that checkbox for row with 'Name' column and 'child4' value is checked in <tableCaption> table
And the user should see that checkbox for row with 'Name' column and 'child6' value is checked in <tableCaption> table
Examples:
|tableCaption|
|TreeTable with different types of columns|