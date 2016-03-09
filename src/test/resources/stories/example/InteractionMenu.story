Narrative:
*-----------------------------------------------------------------------------------------------------------------------
* Tested application: vaadin_example
*
* UI element: Interaction -> Menu (1.6)
*-----------------------------------------------------------------------------------------------------------------------

Narrative:
* ----------------------------------------------------------------------------------------------------------------------
* Static menu actions (1.6.1) - test
* ----------------------------------------------------------------------------------------------------------------------

Narrative: mouse on
Scenario: Mouse is on top item of static menu bar
Given the user is on the Example page
When the user login in system
When the user select 'Interaction->Menu' in tree
When the user moves a cursos on menu item with name 'Menu5'
When the user moves a cursos on menu item with name 'Menu6'
Then they should not see menu sub item with name 'Menu16' for 'Menu6'

Narrative: mouse out
Scenario: Mouse is out of static menu bar
Given the user refresh the Example page
When the user select 'Interaction->Menu' in tree
When the user click menu item with name 'Menu5'
When the user moves a cursor out of menubar
When the user clicks out of menubar
Then they should not see menu item with name 'Menu12'
Then they should not see menu sub item with name 'Menu12' for 'Menu5'

Narrative: select top menu item
Scenario: Click on top item of static menu bar and move cursor
Given the user refresh the Example page
When the user select 'Interaction->Menu' in tree
When the user click menu item with name 'Menu4'
When the user moves a cursos on menu item with name 'Menu5'
When the user moves a cursos on menu item with name 'Menu4'
Then they should see the menu item list

Narrative: single click
Scenario: SingleClick on item of static menu bar
Given the user refresh the Example page
When the user select 'Interaction->Menu' in tree
When the user click menu item with name 'Menu4'
When the user click menu item with name 'Menu10'
Then they should see popup with text 'Static Menu10 clicked'

Narrative: double click
Scenario: DoubleClick on top item of static menu bar
Given the user refresh the Example page
When the user select 'Interaction->Menu' in tree
When the user click menu item with name 'Menu4'
When the user click menu item with name 'Menu4'
When the user click menu item with name 'Menu4'
When the user click menu item with name 'Menu8'
Then they should see popup with text 'Static Menu8 clicked'

Narrative:
* ----------------------------------------------------------------------------------------------------------------------
* Dynamic menu actions (1.6.2) - test
* ----------------------------------------------------------------------------------------------------------------------

Narrative: mouse on
Scenario: Mouse is on top item of dynamic menu bar
Given the user is on the Example page
When the user login in system
When the user select 'Interaction->Menu' in tree
When the user moves a cursos on menu item with name 'child 0'
When the user moves a cursos on menu item with name 'child 1'
Then they should not see menu item with name

Narrative: mouse out
Scenario: Mouse is out of dynamic menu bar
Given the user refresh the Example page
When the user select 'Interaction->Menu' in tree
When the user click menu item with name 'child 1'
When the user moves a cursor out of menubar
When the user clicks out of menubar
Then they should not see menu item with name 'Menu12'

Narrative: select top menu item
Scenario: Click on top item of static menu bar and move cursor
Given the user refresh the Example page
When the user select 'Interaction->Menu' in tree
When the user click menu item with name 'child 2'
When the user moves a cursos on menu item with name 'child 3'
When the user moves a cursos on menu item with name 'child 2'
Then they should see the menu item list

Narrative: single click
Scenario: SingleClick on top item of dynamic menu bar
Given the user refresh the Example page
When the user select 'Interaction->Menu' in tree
When the user click menu item with name 'child 0'
When the user click menu item with name 'child 0-1'
Then they should see popup with text 'Dynamic menu child 0-1 was selected'

Narrative: double click
Scenario: DoubleClick on top item of static menu bar
Given the user refresh the Example page
When the user select 'Interaction->Menu' in tree
When the user click menu item with name 'child 0'
When the user click menu item with name 'child 0'
When the user click menu item with name 'child 0'
When the user click menu item with name 'child 0-0'
Then they should see popup with text 'Static child 0-0 was selected'