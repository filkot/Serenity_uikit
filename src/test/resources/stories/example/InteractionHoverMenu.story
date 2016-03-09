Narrative:
*-----------------------------------------------------------------------------------------------------------------------
* Tested application: vaadin_example
*
* UI element: Interaction -> Hover Menu (1.4)
*-----------------------------------------------------------------------------------------------------------------------

Scenario: Login to system
Given the user is on the Example page
When the user login in system
When the user select 'Interaction->Buttons' in tree

Scenario: Hover on
Given the user refresh the Example page
When the user select 'Interaction->Hover Menu' in tree
When the user hovers on HoverMenu
Then they should see menu item list '$item_list'

Scenario: Click on item
Given the user refresh the Example page
When the user select 'Interaction->Hover Menu' in tree
When the user hovers on HoverMenu
When the user click button with name 'Item #3'
Then they should see popup with text 'Item #3 was selected'

Scenario: Hover off
Given the user refresh the Example page
When the user select 'Interaction->Hover Menu' in tree
When the user hovers on HoverMenu
When the user moves cursor on example class path area
Then they should not see menu item list '$item_list'
