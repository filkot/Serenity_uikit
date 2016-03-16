Narrative:
*-----------------------------------------------------------------------------------------------------------------------
* Tested application: vaadin_example
*
* UI element: Interaction -> Drag'n'Drop (1.2)
*-----------------------------------------------------------------------------------------------------------------------

Meta: @group: InteractionDrag_n_Drop
GivenStories: stories/example/CommonLoginExamplesApp.story

!-- Scenario: Single Click
!-- Scenario: Double Click

Scenario: Drag'n'Drop Through Tabs
Given the user refresh the Example page
When the user selects the item 'Interaction->Drag'n'Drop' in a tree
And the user drags and drops the row '$row_number' from table '$table_name1' to table '$table_name2'
Then the user should see new row '$row_number' in table '$table_name2'

Scenario: Drag'n'Drop Through Tables
Given the user refresh the Example page
When the user selects the item 'Interaction->Drag'n'Drop' in a tree
And the user drags and drops the row '$row_number' from table '$table_name1' to table '$table_name2'
Then the user should see new row '$row_number' in table '$table_name2'

!-- Scenario: Drag'n'Drop Through Windows
!-- Not Yet Implemented in UI Kit Examples

Scenario: Drag'n'Drop Selected
Given the user refresh the Example page
When the user selects the item 'Interaction->Drag'n'Drop' in a tree
And the user selects row '$row_number' in table with name '$name'
And the user drags and drops the row '$row_number' from table '$table_name1' to table '$table_name2'
Then the user should see new row '$row_number' in table '$table_name2'

Scenario: Drag'n'Drop Unselected
Given the user refresh the Example page
When the user selects the item 'Interaction->Drag'n'Drop' in a tree
And the user selects row '$row_number' in table with name '$table_name'
And the user drags and drops the row '$row_number' from table '$table_name1' to table '$table_name2'
Then the user should see new row '$row_number' in table '$table_name2'

Scenario: Drag'n'Drop Over itself
Given the user refresh the Example page
When the user selects the item 'Interaction->Drag'n'Drop' in a tree
And the user selects row '$row_number' in table with name '$name'
And the user drags and drops the row '$row_number' from table '$table_name1' to table '$table_name2'
Then the user should see new row '$row_number' in table '$table_name2'

Scenario: Drag'n'Drop Over other elements
Given the user refresh the Example page
When the user selects the item 'Interaction->Drag'n'Drop' in a tree
And the user drags and drops the row '$row_number' out from table '$table_name1'
Then the user should not see the row '$row_number' in table '$table_name2'

Scenario: Drag'n'Drop Multiselection
Given the user refresh the Example page
When the user selects the item 'Interaction->Drag'n'Drop' in a tree
And the user selects row '$row_number1' in table with name '$table_name'
And the user selects row '$row_number2' in table with name '$table_name'
And the user drags and drops the rows from table '$table_name1' to table '$table_name2'
Then the user should see new rows '$row_list' in table '$table_name2'

Scenario: Drag'n'Drop Drag'n'drop one item several times
Given the user refresh the Example page
When the user selects the item 'Interaction->Drag'n'Drop' in a tree
And the user selects row '$row_number' in table with name '$name'
And the user drags and drops the row '$row_number' from table '$table_name1' to table '$table_name2'
And the user drags and drops the row '$row_number' from table '$table_name1' to table '$table_name2'
And the user drags and drops the row '$row_number' from table '$table_name1' to table '$table_name2'
Then the user should see '$n' new rows '$row_number' in table '$table_name2'