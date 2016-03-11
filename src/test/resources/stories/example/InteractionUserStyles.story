Narrative:
*-----------------------------------------------------------------------------------------------------------------------
* Tested application: vaadin_example
*
* UI element: Interaction -> User Styles (1.x)
*-----------------------------------------------------------------------------------------------------------------------

Scenario: Login to system
Given the user is on the Example page
When the user login in system

Scenario: Press Show It
Given the user refresh the Example page
When the user select 'Interaction->User Styles' in tree
And the user click button with name 'Show it'
Then they should see the label with text 'Woo-hoo!'

Scenario: Press Hide It
Given the user refresh the Example page
When the user select 'Interaction->User Styles' in tree
And the user click button with name 'Show it'
And the user click button with name 'Hide it'
Then they should not see the label with text 'Woo-hoo!'