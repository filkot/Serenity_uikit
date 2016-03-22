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
Then the user should see HoverMenu item list 'Item #1, Item #2, Item #3, Item #4, Item #5, Item #6, Item #7'

Scenario: Click on item
Given the user refresh the Example page
When the user selects the item 'Interaction->Hover Menu' in a tree
And the user hovers on HoverMenu
And the user click button with name 'Item #3'
Then the user should see popup with header 'Hover menu item'
And the user should see popup with label 'Item #3 was selected'

Scenario: Hover off
Given the user refresh the Example page
When the user selects the item 'Interaction->Hover Menu' in a tree
And the user hovers on HoverMenu
And the user moves cursor on example class path area
Then the user should not see HoverMenu item list