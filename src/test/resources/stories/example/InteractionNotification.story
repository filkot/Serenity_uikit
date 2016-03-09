Narrative:
*-----------------------------------------------------------------------------------------------------------------------
* Tested application: vaadin_example
*
* UI element: Interaction -> Notification (1.8)
*-----------------------------------------------------------------------------------------------------------------------

Narrative:
Scenario: Select Interaction Notification
Given the user is on the Example page
When the user login in system
When the user select 'Interaction->Notification' in tree
Then they should see a caption with the text

Narrative: Click on a message
Scenario: Click on error message
Given the user refresh the Example page
When the user select 'Interaction->Notification' in tree
When the user click on a caption with text 'CAPTION message'
When the user select 'Interaction->Button' in tree
Then they should see the button with text 'Simple button with icon'

Narrative: Click on out of area
Scenario: Click on out of area message
Given the user refresh the Example page
When the user select 'Interaction->Notification' in tree
When the user click out of area
Then they should see a caption with the text

Narrative: Click on other elements out of area
Scenario: Click on on other elements out of area
Given the user refresh the Example page
When the user select 'Interaction->Notification' in tree
When the user select 'Interaction->Button' in tree
Then they should see a caption with the text