Narrative:
*-----------------------------------------------------------------------------------------------------------------------
* Tested application: vaadin_example
*
* UI element: Interaction -> SlidingOut panel (1.14)
*-----------------------------------------------------------------------------------------------------------------------

Meta: @group: InteractionSlidingOutPanel
GivenStories: stories/example/CommonLoginExamplesApp.story

Scenario: Slide panel is active
Meta: @id1 1
Given the user refresh the Example page
When the user selects the item 'Interaction->SlidingOut panel' in a tree
And the user moves a cursor on sliding panel
Then the user should see active sliding panel

Scenario: Slide panel is inactive
Meta: @id2 2
Given the user refresh the Example page
When the user selects the item 'Interaction->SlidingOut panel' in a tree
And the user moves a cursor on sliding panel
And the user moves a cursor out of sliding panel
Then the user should see inactive sliding panel