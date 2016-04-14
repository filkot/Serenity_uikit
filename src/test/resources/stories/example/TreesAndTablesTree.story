Narrative:
*-----------------------------------------------------------------------------------------------------------------------
* Tested application: vaadin_example
*
* UI element: Trees and Tables -> Tree (1.21)
*-----------------------------------------------------------------------------------------------------------------------

Meta: @group: TreesAndTablesTree
GivenStories: stories/example/CommonLoginExamplesApp.story

Scenario: Expand all items with checked state
Meta: @id1 1
Given the user refresh the Example page
When the user selects the item 'Trees and Tables->Tree' in a tree
And the user selects the item 'child 1' in a tree
And the user selects the item 'child 4' in a tree
And the user selects the item 'child 7' in a tree
And the user selects the item 'child 10' in a tree
And the user clicks on 'child 1' item
And the user clicks on 'child 2' item
And the user clicks on 'child 3' item
And the user clicks on 'child 5' item
And the user clicks on 'child 6' item
And the user clicks on 'child 7' item
And the user clicks on 'child 8' item
And the user clicks on 'child 9' item
And the user clicks on 'child 10' item
And the user clicks on 'child 11' item
And the user clicks on 'child 12' item
And the user selects the item 'child 1' in a tree
And the user selects the item 'child 4' in a tree
And the user selects the item 'child 7' in a tree
And the user selects the item 'child 10' in a tree
And the user selects the item 'child 10' in a tree
And the user selects the item 'child 7' in a tree
And the user selects the item 'child 4' in a tree
And the user selects the item 'child 1' in a tree
Then the user should see 'child 1, child 2, child 3, child 4, child 5, child 6, child 7, child 8, child 9, child 10, child 11, child 12' expanded items in 'child' tree

Scenario: Expand all items with unchecked state
Meta: @id2 2
Given the user refresh the Example page
When the user selects the item 'Trees and Tables->Tree' in a tree
And the user clicks on 'child 4' item
And the user selects the item 'child 1' in a tree
And the user selects the item 'child 4' in a tree
And the user selects the item 'child 7' in a tree
And the user selects the item 'child 10' in a tree
Then the user should see 'child 1, child 2, child 3, child 4, child 5, child 6, child 7, child 8, child 9, child 10, child 11, child 12' expanded items in 'child' tree

Scenario: Collapse all items with unchecked state
Meta: @id3 3
Given the user refresh the Example page
When the user selects the item 'Trees and Tables->Tree' in a tree
And the user clicks on 'child 4' item
And the user selects the item 'child 1' in a tree
And the user selects the item 'child 4' in a tree
And the user selects the item 'child 7' in a tree
And the user selects the item 'child 10' in a tree
And the user selects the item 'child 10' in a tree
And the user selects the item 'child 7' in a tree
And the user selects the item 'child 4' in a tree
And the user selects the item 'child 1' in a tree
Then the user should see 'child 1, child 4, child 7, child 10' collapsed items in 'child' tree

Scenario: Expand a single item with unchecked state
Meta: @id4 4
Given the user refresh the Example page
When the user selects the item 'Trees and Tables->Tree' in a tree
And the user selects the item 'child 7' in a tree
Then the user should see 'child 7, child 8, child 9' expanded items in 'child' tree

Scenario: Collapse a single item with unchecked state
Meta: @id5 5
Given the user refresh the Example page
When the user selects the item 'Trees and Tables->Tree' in a tree
And the user selects the item 'child 7' in a tree
And the user selects the item 'child 7' in a tree
Then the user should see 'child 7' collapsed items in 'child' tree

Scenario: Expand a single item with checked state
Meta: @id6 6
Given the user refresh the Example page
When the user selects the item 'Trees and Tables->Tree' in a tree
And the user selects the item 'child 4' in a tree
Then the user should see 'child 4, child 5, child 6' expanded items in 'child' tree

Scenario: Collapse a single item with checked state
Meta: @id7 7
Given the user refresh the Example page
When the user selects the item 'Trees and Tables->Tree' in a tree
And the user selects the item 'child 4' in a tree
And the user selects the item 'child 4' in a tree
Then the user should see 'child 4' collapsed items in 'child' tree

Scenario: Collapse a single item with a single child checked state
Meta: @id8 8
Given the user refresh the Example page
When the user selects the item 'Trees and Tables->Tree' in a tree
And the user selects the item 'child 1->child 2' in a tree
And the user selects the item 'child 1' in a tree
Then the user should see 'child 1' collapsed items in 'child' tree

Scenario: Collapse a single item with all children checked state
Meta: @id9 9
Given the user refresh the Example page
When the user selects the item 'Trees and Tables->Tree' in a tree
And the user selects the item 'child 4->child 5' in a tree
And the user selects the item 'child 4' in a tree
And the user selects the item 'child 4->child 6' in a tree
And the user selects the item 'child 4' in a tree
Then the user should see 'child 4' collapsed items in 'child' tree

Scenario: Collapse all top unchecked items with all checked state children
Meta: @id10 10
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
Then the user should see 'child 1, child 4, child 7, child 10' collapsed items in 'child' tree

Scenario: Collapse all top checked items with all checked state children
Meta: @id11 11
Given the user refresh the Example page
When the user selects the item 'Trees and Tables->Tree' in a tree
And the user clicks on 'child 1' item
And the user selects the item 'child 1->child 2' in a tree
And the user selects the item 'child 1' in a tree
And the user selects the item 'child 1->child 3' in a tree
And the user clicks on 'child 4' item
And the user selects the item 'child 4->child 5' in a tree
And the user selects the item 'child 4' in a tree
And the user selects the item 'child 4->child 6' in a tree
And the user clicks on 'child 7' item
And the user selects the item 'child 7->child 8' in a tree
And the user selects the item 'child 7' in a tree
And the user selects the item 'child 7->child 9' in a tree
And the user clicks on 'child 10' item
And the user selects the item 'child 10->child 11' in a tree
And the user selects the item 'child 10' in a tree
And the user selects the item 'child 10->child 12' in a tree
And the user selects the item 'child 1' in a tree
And the user selects the item 'child 4' in a tree
And the user selects the item 'child 7' in a tree
And the user selects the item 'child 10' in a tree
Then the user should see 'child 1, child 4, child 7, child 10' collapsed items in 'child' tree

Scenario: Expand the first item
Meta: @id12 12
Given the user refresh the Example page
When the user selects the item 'Trees and Tables->Tree' in a tree
And the user selects the item 'child 1' in a tree
Then the user should see 'child 1, child 2, child 3' expanded items in 'child' tree

Scenario: Collapse the last item
Meta: @id13 13
Given the user refresh the Example page
When the user selects the item 'Trees and Tables->Tree' in a tree
And the user selects the item 'child 10' in a tree
And the user selects the item 'child 10' in a tree
Then the user should see 'child 10' collapsed items in 'child' tree



