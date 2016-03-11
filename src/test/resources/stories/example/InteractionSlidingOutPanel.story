Narrative:
*-----------------------------------------------------------------------------------------------------------------------
* Tested application: vaadin_example
*
* UI element: Interaction -> SlidingOut panel (1.14)
*-----------------------------------------------------------------------------------------------------------------------

Scenario: Login to system
Given the user is on the Example page
When the user login in system

Scenario: Active
Given the user refresh the Example page
When the user select 'Interaction->SlidingOut panel' in tree
And the user moves a cursor on sliding panel
Then they should see active sliding panel

Scenario: Inactive
Given the user refresh the Example page
When the user select 'Interaction->SlidingOut panel' in tree
And the user moves cursor on example class path area
Then they should see inactive sliding panel