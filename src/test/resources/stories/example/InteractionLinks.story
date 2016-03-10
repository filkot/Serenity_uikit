Narrative:
*-----------------------------------------------------------------------------------------------------------------------
* Tested application: vaadin_example
*
* UI element: Interaction -> Links (1.5)
*-----------------------------------------------------------------------------------------------------------------------

Scenario: Login to system
Given the user is on the Example page
When the user login in system

Scenario: Link is hovered on
Given the user refresh the Example page
When the user select 'Interaction->Links' in tree
When the user hovers on link with name 'AFL in new tab'
When the user moves cursor on example class path area
When the user hovers on link with name 'AFL in new tab'
Then they should see a changed color of the link with name 'AFL in new tab'

Scenario: Link is active
Given the user refresh the Example page
When the user select 'Interaction->Links' in tree
When the user hovers on link with name 'AFL in new tab'
When the user does a right click
When the user click menu item with name 'Open in new tab'
Then they should see new tab with text 'AFL'

Scenario: Link is visited
Given the user refresh the Example page
When the user select 'Interaction->Links' in tree
When the user click the link with name 'Dilbert in new window'
Then they should see a changed color of the link

Scenario: Open a link in the current tab
Given the user refresh the Example page
When the user select 'Interaction->Links' in tree
When the user click links with name 'Link to Yandex in current tab'
Then they should see the current page with text 'yandex'

Scenario: Open a link in a new tab
Given the user refresh the Example page
When the user select 'Interaction->Links' in tree
When the user click links with name 'AFL in new tab'
Then they should see new tab with text 'AFL'

Scenario: Open a link in a new window
Given the user refresh the Example page
When the user select 'Interaction->Links' in tree
When the user click links with name 'Dilbert in new window'
Then they should see new window with text 'Dilbert'