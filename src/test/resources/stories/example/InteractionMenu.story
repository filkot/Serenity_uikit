Narrative:
*-----------------------------------------------------------------------------------------------------------------------
* Tested application: vaadin_example
*
* UI element: Interaction -> Menu (1.6)
*-----------------------------------------------------------------------------------------------------------------------

Meta: @group: InteractionMenu
GivenStories: stories/example/CommonLoginExamplesApp.story

!-----------------------------------------------------------------------------------------------------------------------
!-- Static menu actions
!-----------------------------------------------------------------------------------------------------------------------

Scenario: Mouse is on top item of static menu bar
Meta: @id1 1
Given the user refresh the Example page
When the user selects the item 'Interaction->Menu' in a tree
And the user moves a cursor on 'Menu5' menu item
And the user moves a cursor on 'Menu6' menu item
Then the user should not see 'Menu16' sub item for 'Menu6' menu item

Scenario: Mouse is out of static menu bar
Meta: @id2 2
Given the user refresh the Example page
When the user selects the item 'Interaction->Menu' in a tree
And the user clicks on 'Menu5' menu item
And the user clicks on example class path area
Then the user should not see 'Menu 12' sub item for 'Menu5' menu item

Scenario: Click on top item of static menu bar and move cursor
Meta: @id3 3
Given the user refresh the Example page
When the user selects the item 'Interaction->Menu' in a tree
And the user clicks on 'Menu4' menu item
And the user moves a cursor on 'Menu5' menu item
And the user moves a cursor on 'Menu4' menu item
Then the user should see 'Menu8, Menu9, Menu10, Menu11' item list for 'Menu4' item

Scenario: SingleClick on item of static menu bar
Meta: @id4 4
Given the user refresh the Example page
When the user selects the item 'Interaction->Menu' in a tree
And the user clicks on 'Menu4->Menu10' menu item
Then the user should see popup with header 'Static Menu10 clicked'

Scenario: DoubleClick on top item of static menu bar
Meta: @id5 5
Given the user refresh the Example page
When the user selects the item 'Interaction->Menu' in a tree
And the user clicks on 'Menu4' menu item
And the user double clicks 'Menu4' menu item
And the user clicks on 'Menu8' menu item
Then the user should see popup with header 'Static Menu8 clicked'

!-----------------------------------------------------------------------------------------------------------------------
!-- Dynamic menu actions
!-----------------------------------------------------------------------------------------------------------------------

Scenario: Mouse is on top item of dynamic menu bar
Meta: @id6 6
Given the user is on the Example page
When the user login in system
And the user selects the item 'Interaction->Menu' in a tree
And the user moves a cursor on 'child 0' menu item
And the user moves a cursor on 'child 1' menu item
Then the user should not see 'child 0-0' sub item for 'child 0' menu item

Scenario: Mouse is out of dynamic menu bar
Meta: @id7 7
Given the user refresh the Example page
When the user selects the item 'Interaction->Menu' in a tree
And the user clicks on 'child 1' menu item
And the user clicks on example class path area
Then the user should not see 'child 1-0' sub item for 'child 1' menu item

Scenario: Click on top item of static menu bar and move cursor
Meta: @id8 8
Given the user refresh the Example page
When the user selects the item 'Interaction->Menu' in a tree
And the user clicks on 'child 2' menu item
And the user moves a cursor on 'child 3' menu item
And the user moves a cursor on 'child 2' menu item
Then the user should see 'child 2-0, child 2-1' item list for 'child 2' item

Scenario: SingleClick on top item of dynamic menu bar
Meta: @id9 9
Given the user refresh the Example page
When the user selects the item 'Interaction->Menu' in a tree
And the user clicks on 'child 0' menu item
And the user clicks on 'child 0-1' menu item
Then the user should see popup with label 'Dynamic menu child 0-1 was selected'

Scenario: DoubleClick on top item of static menu bar
Meta: @id10 10
Given the user refresh the Example page
When the user selects the item 'Interaction->Menu' in a tree
And the user clicks on 'child 0' menu item
And the user clicks on 'child 0' menu item
And the user clicks on 'child 0' menu item
And the user clicks on 'child 0-0' menu item
Then the user should see popup with label 'Static child 0-0 was selected'