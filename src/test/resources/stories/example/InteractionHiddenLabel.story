Narrative:
*-----------------------------------------------------------------------------------------------------------------------
* Tested application: vaadin_example
*
* UI element: Interaction -> Hidden Label (1.3)
*-----------------------------------------------------------------------------------------------------------------------

Scenario: Login to system
Meta: @id1 TC_LOGIN
Given the user is on the Example page
When the user login in system

Scenario: Label Unhide
Meta: @id2 TC_1_3_1
Given the user refresh the Example page
When the user select 'Interaction->Hidden Label' in tree
And the user click button with name 'Show the label already!'
Then they should see the label with text 'This is the label you've been waiting for'

Scenario: Label Hide
Meta: @id3 TC_1_3_2
Given the user refresh the Example page
When the user select 'Interaction->Hidden Label' in tree
And the user click button with name 'Show the label already!'
And the user click button with name 'Hide the label NOW!!'
Then they should not see the label with text 'This is the label you've been waiting for'