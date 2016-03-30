Narrative:
*-----------------------------------------------------------------------------------------------------------------------
* Tested application: vaadin_example
*
* UI element: Interaction -> Links (1.5)
*-----------------------------------------------------------------------------------------------------------------------

Meta: @group: InteractionLinks
GivenStories: stories/example/CommonLoginExamplesApp.story

Scenario: Link is hovered on
Given the user refresh the Example page
When the user selects the item 'Interaction->Links' in a tree
And the user hovers on 'AFL in new tab' link
And the user moves cursor on example class path area
And the user hovers on 'AFL in new tab' link
Then the user should see a changed color of 'AFL in new tab' link

Scenario: Link is active
Given the user refresh the Example page
When the user selects the item 'Interaction->Links' in a tree
And the user hovers on 'AFL in new tab' link
And the user does a right click
And the user clicks on 'Open in new tab' menu item
Then the user should see new tab with text 'AFL'

Scenario: Link is visited
Given the user refresh the Example page
When the user selects the item 'Interaction->Links' in a tree
And the user clicks 'Dilbert in new window' link
Then the user should see a changed color of 'Dilbert in new window' link

Scenario: Open a link in the current tab
Given the user refresh the Example page
When the user selects the item 'Interaction->Links' in a tree
And the user clicks 'Link to Yandex in current tab' link
Then the user should see the current page with text 'yandex'

Scenario: Open a link in a new tab
Given the user refresh the Example page
When the user selects the item 'Interaction->Links' in a tree
And the user clicks 'AFL in new tab' link
Then the user should see new tab with text 'AFL'

Scenario: Open a link in a new window
Given the user refresh the Example page
When the user selects the item 'Interaction->Links' in a tree
And the user clicks 'Dilbert in new window' link
Then the user should see new window with text 'Dilbert'