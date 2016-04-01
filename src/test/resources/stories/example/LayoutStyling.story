Narrative:
*-----------------------------------------------------------------------------------------------------------------------
* Tested application: vaadin_example
*
* UI element: Layouts -> Styling (1.33.1)
*-----------------------------------------------------------------------------------------------------------------------

Meta: @group: LayoutsStyling
GivenStories: stories/example/CommonLoginExamplesApp.story

Scenario: Change the style
Given the user refresh the Example page
When the user selects the item 'Layouts->Layout Styling' in a tree
And the user clicks on 'Change style' button
Then the user should see that style of <text> text is changed
Examples:
|text|
|This is a vertical layout with style 'my_layout_margins' and dynamic presenter|