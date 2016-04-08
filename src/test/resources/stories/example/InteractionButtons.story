Narrative:
*-----------------------------------------------------------------------------------------------------------------------
* Tested application: vaadin_example
*
* UI element: Interaction -> Buttons (1.1)
*-----------------------------------------------------------------------------------------------------------------------

Meta: @group: InteractionButton
GivenStories: stories/example/CommonLoginExamplesApp.story

Scenario: Click - invoke an event
Meta: @id1 1
Given the user refresh the Example page
When the user selects the item 'Interaction->Buttons' in a tree
And the user clicks on 'Simple button with icon' button
Then the user should see popup with header 'Button click event'
And the user should see popup with label 'Button has been pressed'

Scenario: Single Click - open in the current tab
Meta: @id2 2
Given the user refresh the Example page
When the user selects the item 'Interaction->Buttons' in a tree
And the user clicks on 'Show xkcd.com in current tab' URL button
Then the user should see 'http://xkcd.com/' the current page URL

Scenario: Single Click - open in a new tab
Meta: @id3 3
Given the user is on the Example page
When the user selects the item 'Interaction->Buttons' in a tree
And the user clicks on 'Show stackoverflow.com in new tab' button
And the user selects new window
Then the user should see 'http://stackoverflow.com/' the current page URL

Scenario: Single Click - open in a new tab
Meta: @id4 4
Given the user is on the Example page
When the user selects the item 'Interaction->Buttons' in a tree
And the user clicks on 'Show recipes in new window' button
And the user selects new window
Then the user should see 'http://allrecipes.com/' the current page URL

Scenario: Right click
Meta: @id5 5
Given the user is on main window
And the user refresh the Example page
When the user selects the item 'Interaction->Buttons' in a tree
And the user hovers on 'Simple button with icon' button
And the user does a right click
And the user click the context menu item with name 'Reload'
And the user selects the item 'Interaction->Buttons' in a tree
And the user clicks on 'Simple button with icon' button
Then the user should see popup with header 'Button click event'
And the user should see popup with label 'Button has been pressed'

Scenario: Mouse over - tooltips
Meta: @id6 6
Given the user refresh the Example page
When the user selects the item 'Interaction->Buttons' in a tree
And the user hovers on 'Simple button with icon' button
Then the user should see the tooltip with text 'Click on the button.'

Scenario: Mouve out
Meta: @id7 7
Given the user refresh the Example page
When the user selects the item 'Interaction->Buttons' in a tree
And the user hovers on 'Simple button with icon' button
And the user moves cursor on example class path area
Then the user should not see the tooltip with text 'Click on the button.'