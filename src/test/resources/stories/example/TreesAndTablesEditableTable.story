*-----------------------------------------------------------------------------------------------------------------------
* Tested application: vaadin_example
*
* UI element: Trees and Tables -> Editable Table
*
* Author: Maksim Zhelezko
* Date: 09.03.2016
*-----------------------------------------------------------------------------------------------------------------------
Meta: @group: TableEditable
GivenStories: stories/example/CommonLoginExamplesApp.story

Scenario: Select a checkbox in unselected column
Given the user refresh the Example page
When the user selects the item 'Trees and Tables->Editable table' in a tree
And the user selects the checkbox in unnamed column for row with column 'Id' and value '0' in <tableCaption> table
Then the user should see that row with 'Id' column and '0' value is selected in <tableCaption> table
And the user should see that row with 'Id' column and '1' value is unselected in <tableCaption> table
And the user should see that checkbox in unnamed column for row with column 'Id' and value '0' is checked in <tableCaption> table
And the user should see that checkbox in unnamed column for row with column 'Id' and value '1' is unchecked in <tableCaption> table
Examples:
|tableCaption|
|Editable table|

Scenario: Unselect a checkbox in a column
Given the user refresh the Example page
When the user selects the item 'Trees and Tables->Editable table' in a tree
And the user selects the checkbox in unnamed column for row with column 'Id' and value '0' in <tableCaption> table
When the user deselects the checkbox in unnamed column for row with column 'Id' and value '0' in <tableCaption> table
Then the user should see that row with 'Id' column and '0' value is deselected in <tableCaption> table
And the user should see that row with 'Id' column and '1' value is unselected in <tableCaption> table
And the user should see that checkbox in unnamed column for row with column 'Id' and value '0' is unchecked in <tableCaption> table
And the user should see that checkbox in unnamed column for row with column 'Id' and value '1' is unchecked in <tableCaption> table
Examples:
|tableCaption|
|Editable table|

Scenario: Select a column
Given the user refresh the Example page
When the user selects the item 'Trees and Tables->Editable table' in a tree
And the user selects the row with 'Id' column and '0' value in <tableCaption> table
Then the user should see that row with 'Id' column and '0' value is selected in <tableCaption> table
And the user should see that row with 'Id' column and '1' value is deselected in <tableCaption> table
And the user should see that checkbox in unnamed column for row with column 'Id' and value '0' is checked in <tableCaption> table
And the user should see that checkbox in unnamed column for row with column 'Id' and value '1' is unchecked in <tableCaption> table
Examples:
|tableCaption|
|Editable table|

Scenario: Input a text into unselected column
Given the user refresh the Example page
When the user selects the item 'Trees and Tables->Editable table' in a tree
And the user inputs '999' text into 'Id' column for row with 'Id' column and '0' value in <tableCaption> table
And the user inputs 'user999' text into 'Name' column for row with 'Id' column and '0' value in <tableCaption> table
And the user inputs 'Password999' text into 'Password' column for row with 'Id' column and '0' value in <tableCaption> table
Then the user should see that row with 'Id' column and '0' value is selected in <tableCaption> table
And the user should see that row with 'Id' column and '1' value is deselected in <tableCaption> table
And the user should see '999' text in 'Id' column for row with 'Id' column and '0' value in <tableCaption> table
And the user should see '999' text in 'Id' column for row with 'Id' column and '0' value in <tableCaption> table
And the user should see 'user999' text in 'Name' column for row with 'Id' column and '0' value in <tableCaption> table
And the user should see 'Password999' text in 'Password' column for row with 'Id' column and '0' value in <tableCaption> table
And the user should see that row with 'Id' column and '0' value is unselected in <tableCaption> table
And the user should see that row with 'Id' column and '1' value is unselected in <tableCaption> table
Examples:
|tableCaption|
|Editable table|

Scenario: Input a date into unselected column
Given the user refresh the Example page
When the user selects the item 'Trees and Tables->Editable table' in a tree
And the user inputs '4/12/17 09:23:25 PM' date into 'Date' column for row with 'Id' column and '0' value in <tableCaption> table
Then the user should see that row with 'Id' column and '0' value is selected in <tableCaption> table
And the user should see that row with 'Id' column and '1' value is deselected in <tableCaption> table
And the user should see '4/12/17 09:23:25 PM' date in 'Date' column for row with 'Id' column and '0' value in <tableCaption> table
And the user should see '3/12/16 08:22:24 PM' date in 'Date' column for row with 'Id' column and '1' value in <tableCaption> table
And the user should see that row with 'Id' column and '0' value is unselected in <tableCaption> table
And the user should see that row with 'Id' column and '1' value is unselected in <tableCaption> table
Examples:
|tableCaption|
|Editable table|

Scenario: Input a text into TextField for the selected column
Given the user refresh the Example page
When the user selects the item 'Trees and Tables->Editable table' in a tree
And the user selects the row with 'Id' column and '0' value in <tableCaption> table
And the user inputs '999' text into 'Id' column for row with 'Id' column and '0' value in <tableCaption> table
And the user inputs 'user999' text into 'Name' column for row with 'Id' column and '0' value in <tableCaption> table
And the user inputs 'Password999' text into 'Password' column for row with 'Id' column and '0' value in <tableCaption> table
Then the user should see that row with 'Id' column and '0' value is selected in <tableCaption> table
And the user should see that row with 'Id' column and '1' value is deselected in <tableCaption> table
And the user should see '999' text in 'Id' column for row with 'Id' column and '0' value in <tableCaption> table
And the user should see 'user999' text in 'Name' column for row with 'Id' column and '0' value in <tableCaption> table
And the user should see 'Password999' text in 'Password' column for row with 'Id' column and '0' value in <tableCaption> table
And the user should see that row with 'Id' column and '0' value is selected in <tableCaption> table
And the user should see that row with 'Id' column and '1' value is unselected in <tableCaption> table
Examples:
|tableCaption|
|Editable table|

Scenario: Input a date into DatePicker field for the selected column
Given the user refresh the Example page
When the user selects the item 'Trees and Tables->Editable table' in a tree
And the user selects the row with 'Id' column and '0' value in <tableCaption> table
And the user inputs '4/12/17 09:23:25 PM' date into 'Date' column for row with 'Id' column and '0' value in <tableCaption> table
Then the user should see that row with 'Id' column and '0' value is selected in <tableCaption> table
And the user should see that row with 'Id' column and '1' value is deselected in <tableCaption> table
And the user should see '4/12/17 09:23:25 PM' date in 'Date' column for row with 'Id' column and '0' value in <tableCaption> table
And the user should see '3/12/16 08:22:24 PM' date in 'Date' column for row with 'Id' column and '1' value in <tableCaption> table
And the user should see that row with 'Id' column and '0' value is selected in <tableCaption> table
And the user should see that row with 'Id' column and '1' value is unselected in <tableCaption> table
Examples:
|tableCaption|
|Editable table|

Scenario: Cancel the text input (Ctrl+Z) when column is selected
Given the user refresh the Example page
When the user selects the item 'Trees and Tables->Editable table' in a tree
And the user selects the row with 'Id' column and '0' value in <tableCaption> table
And the user inputs '999' text into 'Id' column for row with 'Id' column and '0' value in <tableCaption> table
And the user cancels the text input into 'Id' column for row with 'Id' column and '0' value in <tableCaption> table
Then the user should see '0' text in 'Id' column for row with 'Id' column and '0' value in <tableCaption> table
And the user should see that row with 'Id' column and '0' value is selected in <tableCaption> table
Examples:
|tableCaption|
|Editable table|

Scenario: Cancel the date input (Ctrl+Z) when column is selected
Given the user refresh the Example page
When the user selects the row with 'Id' column and '0' value in <tableCaption> table
And the user inputs '4/12/17 09:23:25 PM' date into 'Date' column for row with 'Id' column and '0' value in <tableCaption> table
And the user inputs '5/12/17 09:23:25 PM' date into 'Date' column for row with 'Id' column and '0' value in <tableCaption> table
And the user cancels the date input into 'Id' column for row with 'Id' column and '0' value in <tableCaption> table
Then the user should see '4/12/17 09:23:25 PM' date in 'Date' column for row with 'Id' column and '0' value in <tableCaption> table
And the user should see that row with 'Id' column and '0' value is selected in <tableCaption> table
Examples:
|tableCaption|
|Editable table|

Scenario: Make a column with edited textfield not visible
Given the user refresh the Example page
When the user selects the item 'Trees and Tables->Editable table' in a tree
And the user inputs '999' text into 'Id' column for row with 'Id' column and '0' value in <tableCaption> table
And the user makes 'Id' column not visible from the settings wheel for <tableCaption> table
Then the user should not see 'Id' column in <tableCaption> table
Examples:
|tableCaption|
|Editable table|

Scenario: Make a column with edited textfield visible
Given the user refresh the Example page
When the user selects the item 'Trees and Tables->Editable table' in a tree
And the user inputs '999' text into 'Id' column for row with 'Id' column and '0' value in <tableCaption> table
And the user makes 'Id' column not visible from the settings wheel for <tableCaption> table
And the user makes 'Id' column visible from the settings wheel for <tableCaption> table
Then the user should see 'Id' column in <tableCaption> table
And the user should see '999' text in 'Id' column for row with 'Id' column and '0' value in <tableCaption> table
Examples:
|tableCaption|
|Editable table|

Scenario: Make a column with edited date not visible
Given the user refresh the Example page
When the user selects the item 'Trees and Tables->Editable table' in a tree
And the user inputs '4/12/17 09:23:25 PM' date into 'Date' column for row with 'Id' column and '0' value in <tableCaption> table
And the user makes 'Date' column not visible from the settings wheel for <tableCaption> table
Then the user should not see 'Date' column in <tableCaption> table
Examples:
|tableCaption|
|Editable table|

Scenario: Make a column with edited date visible
Given the user refresh the Example page
When the user selects the item 'Trees and Tables->Editable table' in a tree
And the user inputs '4/12/17 09:23:25 PM' date into 'Date' column for row with 'Id' column and '0' value in <tableCaption> table
And the user makes 'Date' column not visible from the settings wheel for <tableCaption> table
And the user makes 'Date' column visible from the settings wheel for <tableCaption> table
Then the user should see 'Date' column in <tableCaption> table
And the user should see '4/12/17 09:23:25 PM' text in 'Date' column for row with 'Id' column and '0' value in <tableCaption> table
Examples:
|tableCaption|
|Editable table|