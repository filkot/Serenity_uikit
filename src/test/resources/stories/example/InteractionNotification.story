Narrative:
*-----------------------------------------------------------------------------------------------------------------------
* Tested application: vaadin_example
*
* UI element: Interaction -> Notification (1.8)
*-----------------------------------------------------------------------------------------------------------------------

Scenario: Select Interaction Notification
Given the user is on the Example page
When the user login in system
And the user select 'Interaction->Notification' in tree
Then they should see a caption with the text

Scenario: Click on error message
Given the user refresh the Example page
When the user select 'Interaction->Notification' in tree
And the user click on a caption with text 'CAPTION message'
And the user select 'Interaction->Button' in tree
Then they should see the button with text 'Simple button with icon'

Scenario: Click on out of area message
Given the user refresh the Example page
When the user select 'Interaction->Notification' in tree
And the user click out of area
Then they should see a caption with the text

Scenario: Click on on other elements out of area
Given the user refresh the Example page
When the user select 'Interaction->Notification' in tree
And the user select 'Interaction->Button' in tree
Then they should see a caption with the text
