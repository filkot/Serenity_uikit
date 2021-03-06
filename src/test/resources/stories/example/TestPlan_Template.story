Narrative:
*-----------------------------------------------------------------------------------------------------------------------
* Tested application: vaadin_example
*
* Test suite/plan
*-----------------------------------------------------------------------------------------------------------------------

!-- Here is an example - how to create a test plan/suite using existing test stories.
!-- It may be useful for a specific functionality testing or for story debugging.
!-- You can select and enumerate below test scenarios you'd like to include in your test plan.
!-- Please be aware, before that you should add meta data with test id information in test scenario.

GivenStories: stories/example/CommonLoginExamplesApp.story,
              stories/example/InteractionHiddenLabel.story#{id2:2},
              stories/example/InteractionMenu.story#{id3:3;id8:8}

Scenario: Logout from the application
Given the user refresh the Example page
When the user selects the item 'Interaction->App life circle' in a tree
And the user click button with name 'Logout Application'