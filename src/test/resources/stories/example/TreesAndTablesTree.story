Narrative:
*-----------------------------------------------------------------------------------------------------------------------
* Tested application: vaadin_example
*
* UI element: Trees and Tables -> Tree (1.21)
*-----------------------------------------------------------------------------------------------------------------------

Scenario: Login to system
Given the user is on the Example page
When the user login in system
When the user select 'Interaction->Buttons' in tree

Scenario: Expand all items with checked state
Given the user refresh the Example page
When the user select 'Trees and Tables->Tree' in tree
When the user select 'child 1' in tree
When the user select 'child 4' in tree
When the user select 'child 7' in tree
When the user select 'child 10' in tree
When the user select checkbox with caption 'child 1'
When the user select checkbox with caption 'child 2'
When the user select checkbox with caption 'child 3'
When the user select checkbox with caption 'child 4'
When the user select checkbox with caption 'child 5'
When the user select checkbox with caption 'child 6'
When the user select checkbox with caption 'child 7'
When the user select checkbox with caption 'child 8'
When the user select checkbox with caption 'child 9'
When the user select checkbox with caption 'child 10'
When the user select checkbox with caption 'child 11'
When the user select checkbox with caption 'child 12'
When the user select 'child 1' in tree
When the user select 'child 4' in tree
When the user select 'child 7' in tree
When the user select 'child 10' in tree
When the user select 'child 1' in tree
When the user select 'child 4' in tree
When the user select 'child 7' in tree
When the user select 'child 10' in tree
Then they should see the item list '$items' in tree

Scenario: Collapse all items with checked state

Scenario: Expand all items with unchecked state
Given the user refresh the Example page
When the user select 'Trees and Tables->Tree' in tree
When the user select 'child 1' in tree
When the user select 'child 4' in tree
When the user select 'child 7' in tree
When the user select 'child 10' in tree
Then they should see the item list '$items' in tree

Scenario: Collapse all items with unchecked state
Given the user refresh the Example page
When the user select 'Trees and Tables->Tree' in tree
When the user select 'child 1' in tree
When the user select 'child 4' in tree
When the user select 'child 7' in tree
When the user select 'child 10' in tree
When the user select 'child 10' in tree
When the user select 'child 7' in tree
When the user select 'child 4' in tree
When the user select 'child 1' in tree
Then they should not see the item list '$items' in tree

Scenario: Expand a single item with unchecked state
Given the user refresh the Example page
When the user select 'Trees and Tables->Tree' in tree
When the user select 'child 7' in tree
Then they should see the item list '$items' in tree

Scenario: Collapse a single item with unchecked state
Given the user refresh the Example page
When the user select 'Trees and Tables->Tree' in tree
When the user select 'child 7' in tree
When the user select 'child 7' in tree
Then they should not see the item list '$items' in tree

Scenario: Expand a single item with checked state
Given the user refresh the Example page
When the user select 'Trees and Tables->Tree' in tree
When the user select 'child 4' in tree
Then they should see the item list '$items' in tree

Scenario: Collapse a single item with checked state
Given the user refresh the Example page
When the user select 'Trees and Tables->Tree' in tree
When the user select 'child 4' in tree
When the user select 'child 4' in tree
Then they should not see the item list '$items' in tree

!-- Scenario: Collapse a single item with a single child checked state
!-- Scenario: Collapse a single item with all children checked state

!-- Scenario: Collapse all top unchecked items with all checked state children
!-- Scenario: Collapse all top checked items with all checked state children

!-- Scenario: Expand the first item
!-- Scenario: Collapse the last item