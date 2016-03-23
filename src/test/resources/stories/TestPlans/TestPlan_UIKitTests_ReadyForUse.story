Narrative:
*-----------------------------------------------------------------------------------------------------------------------
* Tested application: vaadin_example
*
* Test suite/plan:
*-----------------------------------------------------------------------------------------------------------------------

GivenStories: stories/example/CommonLoginExamplesApp.story,
              stories/example/InteractionHiddenLabel.story#{id1:1;id2:2},
              stories/example/InteractionNotification.story#{id1:1;id2:2;id3:3;id4:4},
              stories/example/InteractionHoverMenu.story#{id1:1;id2:2;id3:3},
              stories/example/InteractionButtons.story#{id1:1;id6:6;id7:7},
              stories/example/InteractionInputMapping.story#{id1:1;id2:2;id3:3;id4:4}

Scenario: Logout from the application
Given the user refresh the Example page
When the user selects the item 'Interaction->App life circle' in a tree
And the user click button with name 'Logout Application'