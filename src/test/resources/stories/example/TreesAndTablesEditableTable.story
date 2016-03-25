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
When the user select 'Trees and Tables->Editable table' in tree
And the user select checkbox in column '' for row with column 'Id' and value '0' in <tableCaption> table
Then they should see row with column 'Id' and value '0' is selected in <tableCaption> table
And they should see row with column 'Id' and value '1' is not selected in <tableCaption> table
And they should see checkbox in column '' for row with column 'Id' and value '0' is selected in <tableCaption> table
And they should see checkbox in column '' for row with column 'Id' and value '1' is not selected in <tableCaption> table
Examples:
|tableCaption|
|Editable table|

Scenario: Unselect a checkbox in a column
When the user unselect checkbox in column '' for row with column 'Id' and value '0' in <tableCaption> table
Then they should see row with column 'Id' and value '0' is unselected in <tableCaption> table
And they should see row with column 'Id' and value '1' is not selected in <tableCaption> table
And they should see checkbox in column '' for row with column 'Id' and value '0' is not selected in <tableCaption> table
And they should see checkbox in column '' for row with column 'Id' and value '1' is not selected in <tableCaption> table
Examples:
|tableCaption|
|Editable table|

Scenario: Select a column
Given the user refresh the Example page
When the user select 'Trees and Tables->Editable table' in tree
And the user selects row with column 'Id' and value '0' in <tableCaption> table
Then they should see row with column 'Id' and value '0' is selected in <tableCaption> table
And they should see row with column 'Id' and value '1' is not selected in <tableCaption> table
And they should see checkbox in column '' for row with column 'Id' and value '0' is selected in <tableCaption> table
And they should see checkbox in column '' for row with column 'Id' and value '1' is not selected in <tableCaption> table
Examples:
|tableCaption|
|Editable table|

Scenario: Input a text into unselected column
Given the user refresh the Example page
When the user select 'Trees and Tables->Editable table' in tree
And the user input text '999' into column 'Id' for row with column 'Id' and value '0' in <tableCaption> table
And the user input text 'user999' into column 'Name' for row with column 'Id' and value '0' in <tableCaption> table
And the user input text 'Password999' into column 'Password' for row with column 'Id' and value '0' in <tableCaption> table
Then they should see row with column 'Id' and value '0' is not selected in <tableCaption> table
And they should see row with column 'Id' and value '1' is not selected in <tableCaption> table
And they should see text '999' in column 'Id' for row with column 'Id' and value '0' in <tableCaption> table
And they should see text 'user999' in column 'Password' for row with column 'Id' and value '0' in <tableCaption> table
And they should see text 'Password999' in column 'Id' for row with column 'Id' and value '0' in <tableCaption> table
And they should see checkbox in column '' for row with column 'Id' and value '0' is not selected in <tableCaption> table
And they should see checkbox in column '' for row with column 'Id' and value '1' is not selected in <tableCaption> table
Examples:
|tableCaption|
|Editable table|

Scenario: Input a date into unselected column
Given the user refresh the Example page
When the user select 'Trees and Tables->Editable table' in tree
And the user input date '4/12/17 09:23:25 PM' into column 'Date' for row with column 'Id' and value '0' in <tableCaption> table
Then they should see row with column 'Id' and value '0' is not selected in <tableCaption> table
And they should see row with column 'Id' and value '1' is not selected in <tableCaption> table
And they should see date '4/12/17 09:23:25 PM' in column 'Date' for row with column 'Id' and value '0' in <tableCaption> table
And they should see date '3/12/16 08:22:24 PM' in column 'Date' for row with column 'Id' and value '1' in <tableCaption> table
And they should see checkbox in column '' for row with column 'Id' and value '0' is not selected in <tableCaption> table
And they should see checkbox in column '' for row with column 'Id' and value '1' is not selected in <tableCaption> table
Examples:
|tableCaption|
|Editable table|

Scenario: Input a text into selected column
Given the user refresh the Example page
When the user select 'Trees and Tables->Editable table' in tree
And the user selects row with column 'Id' and value '0' in <tableCaption> table
And the user input text '999' into column 'Id' for row with column 'Id' and value '0' in <tableCaption> table
And the user input text 'user999' into column 'Name' for row with column 'Id' and value '0' in <tableCaption> table
And the user input text 'Password999' into column 'Password' for row with column 'Id' and value '0' in <tableCaption> table
Then they should see row with column 'Id' and value '0' is selected in <tableCaption> table
And they should see row with column 'Id' and value '1' is not selected in <tableCaption> table
And they should see text '999' in column 'Id' for row with column 'Id' and value '0' in <tableCaption> table
And they should see text 'user999' in column 'Password' for row with column 'Id' and value '0' in <tableCaption> table
And they should see text 'Password999' in column 'Id' for row with column 'Id' and value '0' in <tableCaption> table
And they should see checkbox in column '' for row with column 'Id' and value '0' is selected in <tableCaption> table
And they should see checkbox in column '' for row with column 'Id' and value '1' is not selected in <tableCaption> table
Examples:
|tableCaption|
|Editable table|

Scenario: Input a date into selected column
Given the user refresh the Example page
When the user select 'Trees and Tables->Editable table' in tree
And the user selects row with column 'Id' and value '0' in <tableCaption> table
And the user input date '4/12/17 09:23:25 PM' into column 'Date' for row with column 'Id' and value '0' in <tableCaption> table
Then they should see row with column 'Id' and value '0' is selected in <tableCaption> table
And they should see row with column 'Id' and value '1' is not selected in <tableCaption> table
And they should see date '4/12/17 09:23:25 PM' in column 'Date' for row with column 'Id' and value '0' in <tableCaption> table
And they should see date '3/12/16 08:22:24 PM' in column 'Date' for row with column 'Id' and value '1' in <tableCaption> table
And they should see checkbox in column '' for row with column 'Id' and value '0' is selected in <tableCaption> table
And they should see checkbox in column '' for row with column 'Id' and value '1' is not selected in <tableCaption> table
Examples:
|tableCaption|
|Editable table|

Scenario: Cancel the text input (Ctrl+Z) when column is selected
Given the user refresh the Example page
When the user select 'Trees and Tables->Editable table' in tree
And the user selects row with column 'Id' and value '0' in <tableCaption> table
And the user input text '999' into column 'Id' for row with column 'Id' and value '0' in <tableCaption> table
And the user cancel the text input into column 'Id' for row with column 'Id' and value '0' in <tableCaption> table
Then they should see text '0' in column 'Id' for row with column 'Id' and value '0' in <tableCaption> table
And they should see row with column 'Id' and value '0' is selected in <tableCaption> table
And they should see checkbox in column '' for row with column 'Id' and value '0' is selected in <tableCaption> table
When the user input text 'user999' into column 'Name' for row with column 'Id' and value '0' in <tableCaption> table
And the user cancel the text input into column 'Name' for row with column 'Id' and value '0' in <tableCaption> table
Then they should see text 'user0' in column 'Name' for row with column 'Id' and value '0' in <tableCaption> table
And they should see row with column 'Id' and value '0' is selected in <tableCaption> table
And they should see checkbox in column '' for row with column 'Id' and value '0' is selected in <tableCaption> table
When the user input text 'Password999' into column 'Password' for row with column 'Id' and value '0' in <tableCaption> table
And the user cancel the text input into column 'Password' for row with column 'Id' and value '0' in <tableCaption> table
Then they should see text 'ec16e50c-7d33-4619-a2b4-7b37fb395ad6' in column 'Id' for row with column 'Id' and value '0' in <tableCaption> table
And they should see row with column 'Id' and value '0' is selected in <tableCaption> table
And they should see checkbox in column '' for row with column 'Id' and value '0' is selected in <tableCaption> table
Examples:
|tableCaption|
|Editable table|

Scenario: Cancel the date input (Ctrl+Z) when column is selected
Given the user refresh the Example page
When the user select 'Trees and Tables->Editable table' in tree
And the user selects row with column 'Id' and value '0' in <tableCaption> table
And the user input date '4/12/17 09:23:25 PM' into column 'Date' for row with column 'Id' and value '0' in <tableCaption> table
And the user cancel the date input into column 'Id' for row with column 'Id' and value '0' in <tableCaption> table
Then they should see row with column 'Id' and value '0' is selected in <tableCaption> table
And they should see date '3/11/16 10:25:15 PM' in column 'Date' for row with column 'Id' and value '' in <tableCaption> table
And they should see checkbox in column '' for row with column 'Id' and value '0' is selected in <tableCaption> table
Examples:
|tableCaption|
|Editable table|