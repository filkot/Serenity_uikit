Narrative:
*-----------------------------------------------------------------------------------------------------------------------
* Tested application: vaadin_example
*
* UI element: Interaction -> Notification (1.8)
*-----------------------------------------------------------------------------------------------------------------------

Meta: @group: InteractionNotification
GivenStories: stories/example/CommonLoginExamplesApp.story

Scenario: Select Interaction Notification
Meta: @id1 1
Given the user refresh the Example page
When the user selects the item 'Interaction->Notification' in a tree
Then the user should see the notification with text 'Message'

Scenario: Click on error message
Meta: @id2 2
Given the user refresh the Example page
When the user selects the item 'Interaction->Notification' in a tree
And the user clicks on the notification with text 'Message'
And the user selects the item 'Interaction' in a tree
And the user selects the item 'Interaction->Buttons' in a tree
And the user clicks on 'Simple button with icon' button
Then the user should see popup with header 'Button click event'
And the user should see popup with label 'Button has been pressed'

Scenario: Click out of area message
Meta: @id3 3
Given the user refresh the Example page
When the user selects the item 'Interaction->Notification' in a tree
Then the user should not be able to click on class path area

Scenario: Click on other elements out of area
Meta: @id4 4
Given the user refresh the Example page
When the user selects the item 'Interaction->Notification' in a tree
Then the user should not be able to click on tree 'Data Presentation' item

Scenario: Click out of area message fail
Meta: @id5 5
Given the user refresh the Example page
When the user selects the item 'Interaction->Notification' in a tree
And the user clicks on the notification with text 'Message'
Then the user should not be able to click on class path area

Scenario: Click on other elements out of area fail
Meta: @id6 6
Given the user refresh the Example page
When the user selects the item 'Interaction->Notification' in a tree
And the user clicks on the notification with text 'Message'
Then the user should not be able to click on tree 'Data Presentation' item