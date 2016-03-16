Narrative:
*-----------------------------------------------------------------------------------------------------------------------
* Tested application: vaadin_example
*
* UI element: Interaction -> Hidden Label (1.3)
*-----------------------------------------------------------------------------------------------------------------------

Meta: @group: InteractionHiddenLabel
GivenStories: stories/example/CommonLoginExamplesApp.story

Scenario: Label Unhide
Meta: @id2 2
Given the user refresh the Example page
When the user selects the item 'Interaction->Hidden Label' in a tree
And the user click button with name 'Show the label already!'
Then the user should see the label with text 'This is the label'

Scenario: Label Hide
Meta: @id3 3
Given the user refresh the Example page
When the user selects the item 'Interaction->Hidden Label' in a tree
And the user click button with name 'Show the label already!'
And the user click button with name 'Hide the label NOW!!'
Then the user should not see the label with text 'This is the label you've been waiting for'