Narrative:
*-----------------------------------------------------------------------------------------------------------------------
* Tested application: vaadin_example
*
* UI element: Interaction -> ProgressBar (1.7)
*-----------------------------------------------------------------------------------------------------------------------

Meta: @group: InteractionProgressBar
GivenStories: stories/example/CommonLoginExamplesApp.story

Scenario: Press Load button
Given the user refresh the Example page
And the user select 'Interaction->ProgressBar' in tree
And the user click button with name 'Load'
Then the user should see the progress bar with text '100%'
