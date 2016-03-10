Narrative:
*-----------------------------------------------------------------------------------------------------------------------
* Tested application: vaadin_example
*
* UI element: Interaction -> Menu (1.6)
*-----------------------------------------------------------------------------------------------------------------------

Scenario: Login to system
Meta: @id0 TC_LOGIN
Given the user is on the Example page
When the user login in system

!-----------------------------------------------------------------------------------------------------------------------
!-- Static menu actions
!-----------------------------------------------------------------------------------------------------------------------

Scenario: Mouse is on top item of static menu bar
Meta: @id1 TC_1_6_1
Given the user refresh the Example page
When the user select 'Interaction->Menu' in tree
When the user moves a cursos on menu item with name 'Menu5'
When the user moves a cursos on menu item with name 'Menu6'
Then they should not see menu sub item with name 'Menu16' for 'Menu6'

Scenario: Mouse is out of static menu bar
Meta: @id2 TC_1_6_2
Given the user refresh the Example page
When the user select 'Interaction->Menu' in tree
When the user click menu item with name 'Menu5'
When the user moves a cursor out of menubar
When the user clicks out of menubar
Then they should not see menu item with name 'Menu12'
Then they should not see menu sub item with name 'Menu12' for 'Menu5'

Scenario: Click on top item of static menu bar and move cursor
Meta: @id3 TC_1_6_3
Given the user refresh the Example page
When the user select 'Interaction->Menu' in tree
When the user click menu item with name 'Menu4'
When the user moves a cursos on menu item with name 'Menu5'
When the user moves a cursos on menu item with name 'Menu4'
Then they should see the item list 'Menu8, Menu9, Menu10, Menu11' for 'Menu4'

Scenario: SingleClick on item of static menu bar
Meta: @id4 TC_1_6_4
Given the user refresh the Example page
When the user select 'Interaction->Menu' in tree
When the user click menu item with name 'Menu4->Menu10'
Then they should see popup with header 'Static Menu10 clicked'
!-- Then they should see popup with label 'Static Menu10 clicked'

Scenario: DoubleClick on top item of static menu bar
Meta: @id5 TC_1_6_5
Given the user refresh the Example page
When the user select 'Interaction->Menu' in tree
When the user click menu item with name 'Menu4'
When the user click menu item with name 'Menu4'
When the user click menu item with name 'Menu4'
When the user click menu item with name 'Menu8'
Then they should see popup with text 'Static Menu8 clicked'

!-----------------------------------------------------------------------------------------------------------------------
!-- Dynamic menu actions
!-----------------------------------------------------------------------------------------------------------------------

Scenario: Mouse is on top item of dynamic menu bar
Meta: @id6 TC_1_6_6
Given the user is on the Example page
When the user login in system
When the user select 'Interaction->Menu' in tree
When the user moves a cursos on menu item with name 'child 0'
When the user moves a cursos on menu item with name 'child 1'
Then they should not see menu item with name

Scenario: Mouse is out of dynamic menu bar
Meta: @id7 TC_1_6_7
Given the user refresh the Example page
When the user select 'Interaction->Menu' in tree
When the user click menu item with name 'child 1'
When the user moves a cursor out of menubar
When the user clicks out of menubar
Then they should not see menu item with name 'Menu12'

Scenario: Click on top item of static menu bar and move cursor
Meta: @id8 TC_1_6_8
Given the user refresh the Example page
When the user select 'Interaction->Menu' in tree
When the user click menu item with name 'child 2'
When the user moves a cursos on menu item with name 'child 3'
When the user moves a cursos on menu item with name 'child 2'
Then they should see the menu item list

Scenario: SingleClick on top item of dynamic menu bar
Meta: @id9 TC_1_6_9
Given the user refresh the Example page
When the user select 'Interaction->Menu' in tree
When the user click menu item with name 'child 0'
When the user click menu item with name 'child 0-1'
Then they should see popup with text 'Dynamic menu child 0-1 was selected'

Scenario: DoubleClick on top item of static menu bar
Meta: @id10 TC_1_6_10
Given the user refresh the Example page
When the user select 'Interaction->Menu' in tree
When the user click menu item with name 'child 0'
When the user click menu item with name 'child 0'
When the user click menu item with name 'child 0'
When the user click menu item with name 'child 0-0'
Then they should see popup with text 'Static child 0-0 was selected'