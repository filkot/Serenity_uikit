Narrative:
*-----------------------------------------------------------------------------------------------------------------------
* Tested application: vaadin_example
*
* UI element: Interaction -> Notification (1.8)
*-----------------------------------------------------------------------------------------------------------------------

Meta: @group: InteractionNotification
GivenStories: stories/example/CommonLoginExamplesApp.story

Scenario: Select Interaction Notification
Given the user refresh the Example page
And the user select 'Interaction->Notification' in tree
Then the user should see a caption with the text

Scenario: Click on error message
Given the user refresh the Example page
When the user select 'Interaction->Notification' in tree
And the user click on a caption with text 'message'
And the user select 'Interaction->Button' in tree
Then the user should see the button with text 'Simple button with icon'

Scenario: Click on out of area message
Given the user refresh the Example page
When the user select 'Interaction->Notification' in tree
And the user click out of area
Then the user should see a caption with the text

Scenario: Click on on other elements out of area
Given the user refresh the Example page
When the user select 'Interaction->Notification' in tree
And the user select 'Interaction->Button' in tree
Then the user should see a caption with the text
