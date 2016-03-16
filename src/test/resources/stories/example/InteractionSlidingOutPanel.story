Narrative:
*-----------------------------------------------------------------------------------------------------------------------
* Tested application: vaadin_example
*
* UI element: Interaction -> SlidingOut panel (1.14)
*-----------------------------------------------------------------------------------------------------------------------

Meta: @group: InteractionSlidingOutPanel
GivenStories: stories/example/CommonLoginExamplesApp.story

Scenario: Active
Given the user refresh the Example page
When the user selects the item 'Interaction->SlidingOut panel' in a tree
And the user moves a cursor on sliding panel
Then the user should see active sliding panel

Scenario: Inactive
Given the user refresh the Example page
When the user selects the item 'Interaction->SlidingOut panel' in a tree
And the user moves cursor on example class path area
Then the user should see inactive sliding panel