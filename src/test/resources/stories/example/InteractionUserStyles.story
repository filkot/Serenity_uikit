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
When the user select 'Interaction->User Styles' in tree
And the user click button with name 'Show it'
Then the user should see the label with text 'Woo-hoo!'

Scenario: Press Hide It
Given the user refresh the Example page
When the user select 'Interaction->User Styles' in tree
And the user click button with name 'Show it'
And the user click button with name 'Hide it'
Then the user should not see the label with text 'Woo-hoo!'