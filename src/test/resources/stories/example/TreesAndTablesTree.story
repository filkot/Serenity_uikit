Narrative:
*-----------------------------------------------------------------------------------------------------------------------
* Tested application: vaadin_example
*
* UI element: Trees and Tables -> Tree (1.21)
*-----------------------------------------------------------------------------------------------------------------------

Meta: @group: TreesAndTablesTree
GivenStories: stories/example/CommonLoginExamplesApp.story

Scenario: Expand all items with checked state
Meta: @id2 2
Given the user refresh the Example page
When the user selects the item 'Trees and Tables->Tree' in a tree
And the user selects the item 'child 1' in a tree
And the user selects the item 'child 4' in a tree
And the user selects the item 'child 7' in a tree
And the user selects the item 'child 10' in a tree
And the user select checkbox with caption 'child 1' in tree
And the user select checkbox with caption 'child 2' in tree
And the user select checkbox with caption 'child 3' in tree
And the user select checkbox with caption 'child 4' in tree
And the user select checkbox with caption 'child 5' in tree
And the user select checkbox with caption 'child 6' in tree
And the user select checkbox with caption 'child 7' in tree
And the user select checkbox with caption 'child 8' in tree
And the user select checkbox with caption 'child 9' in tree
And the user select checkbox with caption 'child 10' in tree
And the user select checkbox with caption 'child 11' in tree
And the user select checkbox with caption 'child 12' in tree
And the user selects the item 'child 1' in a tree
And the user selects the item 'child 4' in a tree
And the user selects the item 'child 7' in a tree
And the user selects the item 'child 10' in a tree
And the user selects the item 'child 1' in a tree
And the user selects the item 'child 4' in a tree
And the user selects the item 'child 7' in a tree
And the user selects the item 'child 10' in a tree
Then the user should see the item list '$items' in tree

Scenario: Expand all items with unchecked state
Meta: @id3 3
Given the user refresh the Example page
When the user selects the item 'Trees and Tables->Tree' in a tree
And the user selects the item 'child 1' in a tree
And the user selects the item 'child 4' in a tree
And the user selects the item 'child 7' in a tree
And the user selects the item 'child 10' in a tree
Then the user should see the item list '$items' in tree

Scenario: Collapse all items with unchecked state
Meta: @id4 4
Given the user refresh the Example page
When the user selects the item 'Trees and Tables->Tree' in a tree
And the user selects the item 'child 1' in a tree
And the user selects the item 'child 4' in a tree
And the user selects the item 'child 7' in a tree
And the user selects the item 'child 10' in a tree
And the user selects the item 'child 10' in a tree
And the user selects the item 'child 7' in a tree
And the user selects the item 'child 4' in a tree
And the user selects the item 'child 1' in a tree
Then the user should not see tree sub item with name '$sub_item' for '$item'

Scenario: Expand a single item with unchecked state
Meta: @id5 5
Given the user refresh the Example page
When the user selects the item 'Trees and Tables->Tree' in a tree
And the user selects the item 'child 7' in a tree
Then the user should see the item list '$items' in tree

Scenario: Collapse a single item with unchecked state
Meta: @id6 6
Given the user refresh the Example page
When the user selects the item 'Trees and Tables->Tree' in a tree
And the user selects the item 'child 7' in a tree
And the user selects the item 'child 7' in a tree
Then the user should not see tree sub item with name '$sub_item' for '$item'

Scenario: Expand a single item with checked state
Meta: @id7 7
Given the user refresh the Example page
When the user selects the item 'Trees and Tables->Tree' in a tree
And the user selects the item 'child 4' in a tree
Then the user should see the item list '$items' in tree

Scenario: Collapse a single item with checked state
Meta: @id8 8
Given the user refresh the Example page
When the user selects the item 'Trees and Tables->Tree' in a tree
And the user selects the item 'child 4' in a tree
And the user selects the item 'child 4' in a tree
Then the user should not see tree sub item with name '$sub_item' for '$item'

Scenario: Collapse a single item with a single child checked state
Meta: @id9 9
Given the user refresh the Example page
When the user selects the item 'Trees and Tables->Tree' in a tree
And the user selects the item 'child 1->child 2' in a tree
And the user selects the item 'child 1' in a tree
And the user selects the item 'child 4->child 5' in a tree
And the user selects the item 'child 4' in a tree
Then the user should not see tree sub item with name '$sub_item' for '$item'

Scenario: Collapse a single item with all children checked state
Meta: @id10 10
Given the user refresh the Example page
When the user selects the item 'Trees and Tables->Tree' in a tree
And the user selects the item 'child 1->child 2' in a tree
And the user selects the item 'child 1' in a tree
And the user selects the item 'child 1->child 3' in a tree
And the user selects the item 'child 1' in a tree
And the user selects the item 'child 4->child 5' in a tree
And the user selects the item 'child 4' in a tree
And the user selects the item 'child 4->child 6' in a tree
And the user selects the item 'child 4' in a tree
Then the user should not see tree sub item with name '$sub_item' for '$item'

Scenario: Collapse all top unchecked items with all checked state children
Meta: @id11 11
Given the user refresh the Example page
When the user selects the item 'Trees and Tables->Tree' in a tree
And the user selects the item 'child 1->child 2' in a tree
And the user selects the item 'child 1' in a tree
And the user selects the item 'child 1->child 3' in a tree
And the user selects the item 'child 4->child 5' in a tree
And the user selects the item 'child 4' in a tree
And the user selects the item 'child 4->child 6' in a tree
And the user selects the item 'child 7->child 8' in a tree
And the user selects the item 'child 7' in a tree
And the user selects the item 'child 7->child 9' in a tree
And the user selects the item 'child 10->child 11' in a tree
And the user selects the item 'child 10' in a tree
And the user selects the item 'child 10->child 12' in a tree
And the user selects the item 'child 1' in a tree
And the user selects the item 'child 4' in a tree
And the user selects the item 'child 7' in a tree
And the user selects the item 'child 10' in a tree
Then the user should not see tree sub item with name '$sub_item' for '$item'

Scenario: Collapse all top checked items with all checked state children
Meta: @id12 12
Given the user refresh the Example page
When the user selects the item 'Trees and Tables->Tree' in a tree
And the user select checkbox with caption 'child 1' in tree
And the user selects the item 'child 1->child 2' in a tree
And the user selects the item 'child 1' in a tree
And the user selects the item 'child 1->child 3' in a tree
And the user select checkbox with caption 'child 4' in tree
And the user selects the item 'child 4->child 5' in a tree
And the user selects the item 'child 4' in a tree
And the user selects the item 'child 4->child 6' in a tree
And the user select checkbox with caption 'child 7' in tree
And the user selects the item 'child 7->child 8' in a tree
And the user selects the item 'child 7' in a tree
And the user selects the item 'child 7->child 9' in a tree
And the user select checkbox with caption 'child 10' in tree
And the user selects the item 'child 10->child 11' in a tree
And the user selects the item 'child 10' in a tree
And the user selects the item 'child 10->child 12' in a tree
And the user selects the item 'child 1' in a tree
And the user selects the item 'child 4' in a tree
And the user selects the item 'child 7' in a tree
And the user selects the item 'child 10' in a tree
Then the user should not see tree sub item with name '$sub_item' for '$item'

Scenario: Expand the first item
Meta: @id13 13
Given the user refresh the Example page
When the user selects the item 'Trees and Tables->Tree' in a tree
And the user selects the item 'child 1' in a tree
Then the user should see the item list '$items' in tree

Scenario: Collapse the last item
Meta: @id14 14
Given the user refresh the Example page
When the user selects the item 'Trees and Tables->Tree' in a tree
And the user selects the item 'child 10' in a tree
And the user selects the item 'child 10' in a tree
Then the user should not see tree sub item with name '$sub_item' for '$item'

!-- Scenario: Collapse all items with checked state



