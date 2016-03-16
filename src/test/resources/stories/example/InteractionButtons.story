Narrative:
*-----------------------------------------------------------------------------------------------------------------------
* Tested application: vaadin_example
*
* UI element: Interaction -> Buttons (1.1)
*-----------------------------------------------------------------------------------------------------------------------

Meta: @group: InteractionButton
GivenStories: stories/example/CommonLoginExamplesApp.story

Scenario: Click - invoke an event
Given the user refresh the Example page
When the user selects the item 'Interaction->Buttons' in a tree
And the user click button with name 'Simple button with icon'
Then the user should see popup with text 'Button has been pressed'

Scenario: Single Click - open in the current tab
Given the user refresh the Example page
When the user selects the item 'Interaction->Buttons' in a tree
And the user click button with name 'Show xkcd.com in current tab'
!-- When the user click button with name 'Leave this Page'
Then the user should see the current page with text 'xkcd'

Scenario: Single Click - open in a new tab
Given the user refresh the Example page
When the user selects the item 'Interaction->Buttons' in a tree
And the user click button with name 'Show stackoverflow.com in new tab'
Then the user should see new tab with text 'stackoverflow'

Scenario: Single Click - open in a new window
Given the user refresh the Example page
When the user selects the item 'Interaction->Buttons' in a tree
And the user click button with name 'Show recipes in new window'
Then the user should see new firefox window with text 'recipies'

Scenario: Right click
Given the user refresh the Example page
When the user selects the item 'Interaction->Buttons' in a tree
And the user hovers on button with name 'Simple button with icon'
And the user does a right click
And the user click the context menu item with name 'Reload'
And the user selects the item 'Interaction->Buttons' in a tree
And the user click button with name 'Simple button with icon'
Then the user should see popup with text 'Button has been pressed'

Scenario: Mouse over - tooltips
Given the user refresh the Example page
When the user selects the item 'Interaction->Buttons' in a tree
And the user hovers on button with name 'Simple button with icon'
Then the user should see a tooltip with text 'Click on the button.'

Scenario: Mouve out
Given the user refresh the Example page
When the user selects the item 'Interaction->Buttons' in a tree
When the user hovers on button with name 'Simple button with icon'
And the user moves cursor on example class path area
Then the user should not see a tooltip with text 'Click on the button.'

!-- Scenario: Select
!-- Scenario: Icons