Narrative:
*-----------------------------------------------------------------------------------------------------------------------
* Tested application: vaadin_example
*
* UI element: Layouts -> Popup component switcher (1.33.2)
*-----------------------------------------------------------------------------------------------------------------------

Meta: @group: LayoutsPopupSwitcher
GivenStories: stories/example/CommonLoginExamplesApp.story

Scenario: click on popup switcher
Meta: @id1 1
Given the user refresh the Example page
When the user selects the item 'Layouts->Popup Component Switcher' in a tree
And the user clicks on 'Show popup with switcher' button
And the user clicks on 'Click me!' button
And the user clicks on 'Next' button
Then the user should see popup with label 'You clicked button 1 times.'
