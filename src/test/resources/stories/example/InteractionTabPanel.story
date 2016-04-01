Narrative:
*-----------------------------------------------------------------------------------------------------------------------
* Tested application: vaadin_example
*
* UI element: Interaction -> Tab Panel (1.9)
*-----------------------------------------------------------------------------------------------------------------------

Meta: @group: InteractionTabPanel
GivenStories: stories/example/CommonLoginExamplesApp.story

Scenario: Tab Active
Given the user refresh the Example page
When the user selects the item 'Interaction->TabPanel' in a tree
And the user type text 'tab_' in text field
And the user clicks on 'Add tab' button
And the user clicks on 'Add tab' button
And the user clicks on 'tab_1' button
Then the user should see the label with 'tab_1' text

Scenario: Tab Unactive
Given the user refresh the Example page
When the user selects the item 'Interaction->TabPanel' in a tree
And the user type text 'tab_' in text field
And the user clicks on 'Add tab' button
And the user clicks on 'Add tab' button
And the user clicks on 'tab_1' button
Then the user should not see the label with 'tab_2' text