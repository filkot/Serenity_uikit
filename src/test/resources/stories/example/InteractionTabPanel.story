Narrative:
*-----------------------------------------------------------------------------------------------------------------------
* Tested application: vaadin_example
*
* UI element: Interaction -> Tab Panel (1.9)
*-----------------------------------------------------------------------------------------------------------------------

Scenario: Login to system
Given the user is on the Example page
When the user login in system

Scenario: Tab Active
Given the user refresh the Example page
When the user select 'Interaction->TabPanel' in tree
When the user type text '_01' in text field
When the user click button with name 'Add tab'
When the user click button with name 'Add tab'
When the user click button with name 'new tab_011'
Then they should see the label with text 'new tab_011'

Scenario: Tab Unactive
Given the user refresh the Example page
When the user select 'Interaction->TabPanel' in tree
When the user type text '_01' in text field
When the user click button with name 'Add tab'
When the user click button with name 'Add tab'
When the user click button with name 'new tab_011'
Then they should not see the label with text 'new tab_012'

!-- Not yet implemented
!-- Scenario: Tab Moving a tab