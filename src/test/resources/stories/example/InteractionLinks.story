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
When the user select 'Interaction->Links' in tree
And the user hovers on link with name 'AFL in new tab'
And the user moves cursor on example class path area
And the user hovers on link with name 'AFL in new tab'
Then the user should see a changed color of the link with name 'AFL in new tab'

Scenario: Link is active
Given the user refresh the Example page
When the user select 'Interaction->Links' in tree
And the user hovers on link with name 'AFL in new tab'
And the user does a right click
And the user click menu item with name 'Open in new tab'
Then the user should see new tab with text 'AFL'

Scenario: Link is visited
Given the user refresh the Example page
When the user select 'Interaction->Links' in tree
And the user click the link with name 'Dilbert in new window'
Then the user should see a changed color of the link

Scenario: Open a link in the current tab
Given the user refresh the Example page
When the user select 'Interaction->Links' in tree
And the user click links with name 'Link to Yandex in current tab'
Then the user should see the current page with text 'yandex'

Scenario: Open a link in a new tab
Given the user refresh the Example page
When the user select 'Interaction->Links' in tree
And the user click links with name 'AFL in new tab'
Then the user should see new tab with text 'AFL'

Scenario: Open a link in a new window
Given the user refresh the Example page
When the user select 'Interaction->Links' in tree
And the user click links with name 'Dilbert in new window'
Then the user should see new window with text 'Dilbert'