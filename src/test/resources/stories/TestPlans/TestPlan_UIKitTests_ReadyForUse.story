Narrative:
*-----------------------------------------------------------------------------------------------------------------------
* Tested application: vaadin_example
*
* Test suite/plan:
*-----------------------------------------------------------------------------------------------------------------------

GivenStories: stories/example/CommonLoginExamplesApp.story,
              stories/example/InteractionButtons.story#{id1:1;id6:6;id7:7},
              stories/example/InteractionHiddenLabel.story,
              stories/example/InteractionInputMapping.story,
              stories/example/InteractionNotification.story,
              stories/example/InteractionHoverMenu.story

Scenario: Logout from the application
Given the user refresh the Example page
When the user selects the item 'Interaction->App life circle' in a tree
And the user click button with name 'Logout Application'