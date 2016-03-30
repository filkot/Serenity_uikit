Narrative:
*-----------------------------------------------------------------------------------------------------------------------
* Tested application: vaadin_example
*
* UI element: Interaction -> Hidden Label (1.3)
*-----------------------------------------------------------------------------------------------------------------------

Meta: @group: InteractionHiddenLabel
GivenStories: stories/example/CommonLoginExamplesApp.story

Scenario: Label Unhide
Meta: @id1 1
Given the user refresh the Example page
When the user selects the item 'Interaction->Hidden Label' in a tree
And the user clicks on 'Show the label already!' button
Then the user should see the label with 'This is the label you've been waiting for' text

Scenario: Label Hide
Meta: @id2 2
Given the user refresh the Example page
When the user selects the item 'Interaction->Hidden Label' in a tree
And the user clicks on 'Show the label already!' button
And the user clicks on 'Hide the label NOW!!' button
Then the user should not see the label with 'This is the label you've been waiting for' text
