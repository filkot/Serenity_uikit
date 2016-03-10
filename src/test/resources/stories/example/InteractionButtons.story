Narrative:
*-----------------------------------------------------------------------------------------------------------------------
* Tested application: vaadin_example
*
* UI element: Interaction -> Buttons (1.1)
*-----------------------------------------------------------------------------------------------------------------------

Scenario: Login to system
Given the user is on the Example page
When the user login in system
When the user select 'Interaction->Buttons' in tree

Scenario: Click - invoke an event
Given the user refresh the Example page
When the user select 'Interaction->Buttons' in tree
When the user click button with name 'Simple button with icon'
Then they should see popup with text 'Button has been pressed'

Scenario: Single Click - open in the current tab
Given the user refresh the Example page
When the user select 'Interaction->Buttons' in tree
When the user click button with name 'Show xkcd.com in current tab'
!-- When the user click button with name 'Leave this Page'
Then they should see the current page with text 'xkcd'

Scenario: Single Click - open in a new tab
Given the user refresh the Example page
When the user select 'Interaction->Buttons' in tree
When the user click button with name 'Show stackoverflow.com in new tab'
Then they should see new tab with text 'stackoverflow'

Scenario: Single Click - open in a new window
Given the user refresh the Example page
When the user select 'Interaction->Buttons' in tree
When the user click button with name 'Show recipes in new window'
Then they should see new firefox window with text 'recipies'

Scenario: Right click
Given the user refresh the Example page
When the user select 'Interaction->Buttons' in tree
When the user hovers on button with name 'Simple button with icon'
When the user does a right click
When the user click the context menu item with name 'Reload'
When the user select 'Interaction->Buttons' in tree
When the user click button with name 'Simple button with icon'
Then they should see popup with text 'Button has been pressed'

Scenario: Mouse over - tooltips
Given the user refresh the Example page
When the user select 'Interaction->Buttons' in tree
When the user hovers on button with name 'Simple button with icon'
Then they should see a tooltip with text 'Click on the button.'

Scenario: Mouve out
Given the user refresh the Example page
When the user select 'Interaction->Buttons' in tree
When the user hovers on button with name 'Simple button with icon'
When the user moves cursor on example class path area
Then they should not see a tooltip with text 'Click on the button.'

!-- Scenario: Select
!-- Scenario: Icons