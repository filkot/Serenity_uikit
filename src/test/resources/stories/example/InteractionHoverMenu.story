Narrative:
*-----------------------------------------------------------------------------------------------------------------------
* Tested application: vaadin_example
*
* UI element: Interaction -> Hover Menu (1.4)
*-----------------------------------------------------------------------------------------------------------------------

Meta: @group: InteractionHoverMenu
GivenStories: stories/example/CommonLoginExamplesApp.story

Scenario: Hover on
Given the user refresh the Example page
When the user selects the item 'Interaction->Hover Menu' in a tree
And the user hovers on HoverMenu
Then the user should see menu item list '$item_list'

Scenario: Click on item
Given the user refresh the Example page
When the user selects the item 'Interaction->Hover Menu' in a tree
And the user hovers on HoverMenu
And the user click button with name 'Item #3'
Then the user should see popup with text 'Item #3 was selected'

Scenario: Hover off
Given the user refresh the Example page
When the user selects the item 'Interaction->Hover Menu' in a tree
And the user hovers on HoverMenu
And the user moves cursor on example class path area
Then the user should not see menu item list