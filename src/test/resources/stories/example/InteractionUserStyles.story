Narrative:
*-----------------------------------------------------------------------------------------------------------------------
* Tested application: vaadin_example
*
* UI element: Interaction -> User Styles (1.x)
*-----------------------------------------------------------------------------------------------------------------------

Meta: @group: InteractionUserStyles
GivenStories: stories/example/CommonLoginExamplesApp.story

Scenario: Press Show It
Given the user refresh the Example page
When the user selects the item 'Interaction->User Styles' in a tree
And the user clicks on 'Show it' button
Then the user should see the label with 'Woo-hoo!' text

Scenario: Press Hide It
Given the user refresh the Example page
When the user selects the item 'Interaction->User Styles' in a tree
And the user clicks on 'Show it' button
And the user clicks on 'Hide it' button
Then the user should not see the label with 'Woo-hoo!' text