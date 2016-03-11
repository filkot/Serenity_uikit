Narrative:
*-----------------------------------------------------------------------------------------------------------------------
* Tested application: vaadin_example
*
* Test suite/plan
*-----------------------------------------------------------------------------------------------------------------------

Meta:
@author: Denis Budranov
@date: 10-Mar-2016

!-- Here is an example - how to create a test plan/suite using existing test stories.
!-- It's may be useful for a specific functionality testing or for story debugging.
!-- You can select and enumerate below test scenarios you'd like to include in your test plan.
!-- Please be aware, before that you should add meta data with test id information in test scenario.

GivenStories: stories/example/InteractionHiddenLabel.story#{id1:TC_LOGIN;id2:TC_1_3_1},
              stories/example/InteractionMenu.story#{id3:TC_1_6_3}

Scenario: Logout from the application
Given the user refresh the Example page
When the user select 'Interaction->App life circle' in tree
When the user click button with name 'Logout Application'