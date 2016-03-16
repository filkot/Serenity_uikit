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
And the user moves a cursos on menu item with name 'Menu5'
And the user moves a cursos on menu item with name 'Menu6'
Then the user should not see menu sub item with name 'Menu16' for 'Menu6'

Scenario: Mouse is out of static menu bar
Meta: @id2 2
Given the user refresh the Example page
When the user selects the item 'Interaction->Menu' in a tree
And the user click menu item with name 'Menu5'
And the user moves cursor on example class path area
And the user clicks out of menubar
And they should not see menu item with name 'Menu12'
Then the user should not see menu sub item with name 'Menu12' for 'Menu5'

Scenario: Click on top item of static menu bar and move cursor
Meta: @id3 3
Given the user refresh the Example page
When the user selects the item 'Interaction->Menu' in a tree
And the user click menu item with name 'Menu4'
And the user moves a cursos on menu item with name 'Menu5'
And the user moves a cursos on menu item with name 'Menu4'
Then the user should see the item list 'Menu8, Menu9, Menu10, Menu11' for 'Menu4'

Scenario: SingleClick on item of static menu bar
Meta: @id4 4
Given the user refresh the Example page
When the user selects the item 'Interaction->Menu' in a tree
And the user click menu item with name 'Menu4->Menu10'
Then the user should see popup with header 'Static Menu10 clicked'
!-- Then the user should see popup with label 'Static Menu10 clicked'

Scenario: DoubleClick on top item of static menu bar
Meta: @id5 5
Given the user refresh the Example page
When the user selects the item 'Interaction->Menu' in a tree
And the user click menu item with name 'Menu4'
And the user click menu item with name 'Menu4'
And the user click menu item with name 'Menu4'
And the user click menu item with name 'Menu8'
Then the user should see popup with text 'Static Menu8 clicked'

!-----------------------------------------------------------------------------------------------------------------------
!-- Dynamic menu actions
!-----------------------------------------------------------------------------------------------------------------------

Scenario: Mouse is on top item of dynamic menu bar
Meta: @id6 6
Given the user is on the Example page
When the user login in system
And the user selects the item 'Interaction->Menu' in a tree
And the user moves a cursos on menu item with name 'child 0'
And the user moves a cursos on menu item with name 'child 1'
Then the user should not see menu item with name

Scenario: Mouse is out of dynamic menu bar
Meta: @id7 7
Given the user refresh the Example page
When the user selects the item 'Interaction->Menu' in a tree
And the user click menu item with name 'child 1'
And the user moves a cursor out of menubar
And the user clicks out of menubar
Then the user should not see menu item with name 'Menu12'

Scenario: Click on top item of static menu bar and move cursor
Meta: @id8 8
Given the user refresh the Example page
When the user selects the item 'Interaction->Menu' in a tree
And the user click menu item with name 'child 2'
And the user moves a cursos on menu item with name 'child 3'
And the user moves a cursos on menu item with name 'child 2'
Then the user should see the menu item list

Scenario: SingleClick on top item of dynamic menu bar
Meta: @id9 9
Given the user refresh the Example page
When the user selects the item 'Interaction->Menu' in a tree
And the user click menu item with name 'child 0'
And the user click menu item with name 'child 0-1'
Then the user should see popup with text 'Dynamic menu child 0-1 was selected'

Scenario: DoubleClick on top item of static menu bar
Meta: @id10 10
Given the user refresh the Example page
When the user selects the item 'Interaction->Menu' in a tree
And the user click menu item with name 'child 0'
And the user click menu item with name 'child 0'
And the user click menu item with name 'child 0'
And the user click menu item with name 'child 0-0'
Then the user should see popup with text 'Static child 0-0 was selected'