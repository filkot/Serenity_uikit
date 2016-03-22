Narrative:
*-----------------------------------------------------------------------------------------------------------------------
* Tested application: vaadin_example
*
* UI element: DataInput -> Date (1.13)
*-----------------------------------------------------------------------------------------------------------------------

Meta: @group: DataInputDate
GivenStories: stories/example/CommonLoginExamplesApp.story

Scenario: Date mouse over
Given the user refresh the Example page
When the user selects the item 'Data Input->Dates->DateTimePicker' in a tree
And the user clicks the date picker with name 'Date picker'
Then the user should see 'October 2015' calendar page

Scenario: Date mouse selected / reselecting
Given the user refresh the Example page
When the user selects the item 'Data Input->Dates->DateTimePicker' in a tree
And the user clicks the date picker with name 'Date picker'
And the user selects '23-Oct-2015' date on a calendar page
And the user selects '24-Oct-2015' date on a calendar page
Then the user should see '10/24/15 12:00:00 AM' date

!-- Scenario: Date range multiselection
!-- The current date picker version does not support this feature

Scenario: Move to next month
Given the user refresh the Example page
When the user selects the item 'Data Input->Dates->DateTimePicker' in a tree
And the user clicks the date picker with name 'Borderless Date picker'
And the user clicks '>' calendar button
Then the user should see 'November 2015' calendar page

Scenario: Move to next year
Given the user refresh the Example page
When the user selects the item 'Data Input->Dates->DateTimePicker' in a tree
And the user clicks the date picker with name 'Date picker'
And the user clicks '>>' calendar button
Then the user should see 'October 2016' calendar page

Scenario: Move to previous month
Given the user refresh the Example page
When the user selects the item 'Data Input->Dates->DateTimePicker' in a tree
And the user clicks the date picker with name 'Date picker'
And the user clicks '<' calendar button
Then the user should see 'September 2015' calendar page

Scenario: Move to previous year
Given the user refresh the Example page
When the user selects the item 'Data Input->Dates->DateTimePicker' in a tree
And the user clicks the date picker with name 'Date picker'
And the user clicks '<<' calendar button
Then the user should see 'October 2014' calendar page

Scenario: Select an hour
Given the user refresh the Example page
When the user selects the item 'Data Input->Dates->DateTimePicker' in a tree
And the user clicks the date picker with name 'Date picker'
And the user selects '13' value from '$calendar_hours' comboBox
Then the user should see '10/21/15 13:00:00 AM' date

Scenario: Select a minute
Given the user refresh the Example page
When the user selects the item 'Data Input->Dates->DateTimePicker' in a tree
And the user clicks the date picker with name 'Date picker'
And the user selects '45' value from '$calendar_minuts' comboBox
Then the user should see '10/21/15 12:45:00 AM' date

Scenario: Select a second
Given the user refresh the Example page
When the user selects the item 'Data Input->Dates->DateTimePicker' in a tree
And the user clicks the date picker with name 'Date picker'
And the user selects '37' value from '$calendar_seconds' comboBox
Then the user should see '10/21/15 12:00:37 AM' date
