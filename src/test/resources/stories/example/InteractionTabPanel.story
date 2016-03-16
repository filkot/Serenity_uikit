Narrative:
*-----------------------------------------------------------------------------------------------------------------------
* Tested application: vaadin_example
*
* UI element: Interaction -> Tab Panel (1.9)
*-----------------------------------------------------------------------------------------------------------------------

Meta: @group: InteractionTabPanel
GivenStories: stories/example/CommonLoginExamplesApp.story

Scenario: Tab Active
Given the user refresh the Example page
When the user selects the item 'Interaction->TabPanel' in a tree
And the user type text '_01' in text field
And the user click button with name 'Add tab'
And the user click button with name 'Add tab'
And the user click button with name 'new tab_011'
Then the user should see the label with text 'new tab_011'

Scenario: Tab Unactive
Given the user refresh the Example page
When the user selects the item 'Interaction->TabPanel' in a tree
And the user type text '_01' in text field
And the user click button with name 'Add tab'
And the user click button with name 'Add tab'
And the user click button with name 'new tab_011'
Then the user should not see the label with text 'new tab_012'

!-- Not yet implemented
!-- Scenario: Tab Moving a tab