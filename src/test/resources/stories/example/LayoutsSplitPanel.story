Narrative:
*-----------------------------------------------------------------------------------------------------------------------
* Tested application: vaadin_example
*
* UI element: Layouts -> Split panel (1.33.3)
*-----------------------------------------------------------------------------------------------------------------------

Meta: @group: LayoutsSplitPanel
GivenStories: stories/example/CommonLoginExamplesApp.story

Scenario: move a horizontal splitter to the right
Meta: @id1 1
Given the user refresh the Example page
When the user selects the item 'Layouts->SplitPanel' in a tree
And the user moves horizontal splitter of 'first' sub-panel on '50' to the right
Then the user should see that 'first' sub-panel horizontal splitter is moved

Scenario: move a horizontal splitter to the left
Meta: @id2 2
Given the user refresh the Example page
When the user selects the item 'Layouts->SplitPanel' in a tree
And the user moves horizontal splitter of 'first' sub-panel on '-50' to the left
Then the user should see that 'first' sub-panel horizontal splitter is moved

Scenario: move a vertical splitter up
Meta: @id3 3
Given the user refresh the Example page
When the user selects the item 'Layouts->SplitPanel' in a tree
And the user moves vertical splitter of 'second' sub-panel on '-30' up
Then the user should see that 'second' sub-panel vertical splitter is moved

Scenario: move a vertical splitter down
Meta: @id4 4
Given the user refresh the Example page
When the user selects the item 'Layouts->SplitPanel' in a tree
And the user moves vertical splitter of 'second' sub-panel on '60' down
Then the user should see that 'second' sub-panel vertical splitter is moved
