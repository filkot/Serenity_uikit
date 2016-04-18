Narrative:
*-----------------------------------------------------------------------------------------------------------------------
* Tested application: vaadin_example
*
* UI element: Interaction -> App life circle (1.16)
*-----------------------------------------------------------------------------------------------------------------------

Meta: @group: InteractionAppLifeCircle
GivenStories: stories/example/CommonLoginExamplesApp.story

Scenario: Logout from the system
Given the user refresh the Example page
When the user selects the item 'Interaction->App life circle' in a tree
And the user clicks on 'Logout Application' button
Then the user should see 'Please login to access the application.' text on a page

Scenario: Login to system
Given the user is on the Example page
When the user login in system
And the user selects the item 'Interaction->Menu' in a tree
And the user click menu item with name 'Menu4'
