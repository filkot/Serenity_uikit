Narrative:
*-----------------------------------------------------------------------------------------------------------------------
* Tested application: vaadin_example
*
* UI element: DataInput -> Multiple Values (1.15-1.16)
*-----------------------------------------------------------------------------------------------------------------------

Meta: @group: DataInputTextual
GivenStories: stories/example/CommonLoginExamplesApp.story

!-----------------------------------------------------------------------------------------------------------------------
!-- Combobox
!-----------------------------------------------------------------------------------------------------------------------
Scenario: ComboBox Open a box, Select an item in a box
Meta: @id1 1
Given the user refresh the Example page
When the user selects the item 'Interaction->MultipleValues->ComboBox' in a tree
And the user selects 'Item 2' value from ' ' comboBox
Then the user should see that 'Item 2' item is selected in '' combobox
And the user should see the label with 'Item 2' text

!-- Multiple selection feature is not supported
Scenario: ComboBox Select group of items
Meta: @id2 2
Given the user refresh the Example page
When the user selects the item 'Interaction->MultipleValues->ComboBox' in a tree
And the user selects 'Item 2' value from ' ' comboBox
And the user selects 'Item 3' value from ' ' comboBox
Then the user should see that 'Item 3' item is selected in '' combobox
And the user should see the label with 'Item 3' text

Scenario: ComboBox Input a new item
Meta: @id3 3
Given the user refresh the Example page
When the user selects the item 'Interaction->MultipleValues->ComboBox' in a tree
And the user selects a nonexistent 'Item 45' value from ' ' comboBox
Then the user should see that 'Item 45' item is selected in ' ' combobox
And the user should not see the label with 'Item 45' text

Scenario: ComboBox Close a box with the selected item
Meta: @id4 4
Given the user refresh the Example page
When the user selects the item 'Data Input->Multiple Values->ComboBox' in a tree
And the user opens a combobox
And the user moves a cursos on a combobox item with name 'Item 2'
And the user clicks on example class path area
Then the user should see that 'Item 2' item is selected in a combobox

!-- This feature is not supported
!-- Scenario: ComboBox Close a box with the unselected item

!-- Clarification is required
!-- Scenario: ComboBox Overlaying a box
!-- Scenario: ComboBox All other items

!-----------------------------------------------------------------------------------------------------------------------
!-- RadioButton Group
!-----------------------------------------------------------------------------------------------------------------------

Scenario: RadioButton Group Select
Meta: @id5 5
Given the user refresh the Example page
When the user selects the item 'Data Input->Multiple Values->RadioButtonList' in a tree
And the user selects 'key 1' radio button
Then the user should see that 'key 1' radio button is selected
And the user should see the label with 'key 1' text

Scenario: RadioButton Group Re-select
Meta: @id6 6
Given the user refresh the Example page
When the user selects the item 'Data Input->Multiple Values->RadioButtonList' in a tree
And the user selects 'key 1' radio button
And the user selects 'key 2' radio button
And the user selects 'key 3' radio button
And the user selects 'key 2' radio button
And the user selects 'key 2' radio button
Then the user should see that 'key 2' radio button is selected
And the user should see the label with 'key 2' text
And the user should not see the label with 'key 1' text
And the user should not see the label with 'key 3' text

!-- Scenario: RadioButton Group Diff group selection
!-- the feature is not supported

!-----------------------------------------------------------------------------------------------------------------------
!-- CheckBox Group
!-----------------------------------------------------------------------------------------------------------------------
!-- Scenario: Checkbox group Select the multi checkboxes
!-- Scenario: Checkbox group Select all of checkboxes

Scenario: Checkbox group Select a single checkbox
Meta: @id7 7
Given the user refresh the Example page
When the user selects the item 'Data Input->Other->CheckBox' in a tree
And the user checks the checkbox with 'CheckBox caption' caption
Then the user should see the label with 'true' text

