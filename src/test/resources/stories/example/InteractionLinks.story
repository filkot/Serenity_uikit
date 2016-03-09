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
Then they should see a changed color of the link

Scenario: Link is visited
Given the user refresh the Example page
When the user select 'Interaction->Links' in tree
When the user click the link with name 'Dilbert in new window'
Then they should see a changed color of the link

Scenario: Open a link in the current tab
Scenario: Open a link in a new tab
Scenario: Open a lonk in a new window