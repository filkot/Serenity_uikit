*-----------------------------------------------------------------------------------------------------------------------
* Tested application: vaadin_example
*
* UI element: Trees and Tables -> Table (Simple)
*
* Author: Maksim Zhelezko
* Date: 04.03.2016
*-----------------------------------------------------------------------------------------------------------------------
Meta: @group: Simple Table
GivenStories: stories/example/CommonLoginExamplesApp.story

Scenario: Check the checkbox with caption 'id' only for SIMPLE table
Given the user refresh the Example page
When the user selects the item 'Trees and Tables->Table' in a tree
And the user checks the checkbox with 'id' caption
Then the user should see the 'Id' column in the table
And the user should not see the 'Name' column in the table

Scenario: Uncheck the checkbox with caption 'id' only for SIMPLE table
Given the user refresh the Example page
When the user selects the item 'Trees and Tables->Table' in a tree
And the user unchecks the checkbox with 'id' caption
Then the user should not see the 'Id' column in the table
And the user should not see the 'Name' column in the table

Scenario: Check the checkbox with caption 'name' only for SIMPLE table
Given the user refresh the Example page
When the user selects the item 'Trees and Tables->Table' in a tree
And the user unchecks the checkbox with 'id' caption
And the user checks the checkbox with 'name' caption
Then the user should see the 'Name' column in the table
And the user should not see the 'Id' column in the table

Scenario: Uncheck the checkbox with caption 'name' only for SIMPLE table
Given the user refresh the Example page
When the user selects the item 'Trees and Tables->Table' in a tree
And the user unchecks the checkbox with 'id' caption
And the user checks the checkbox with 'name' caption
And the user unchecks the checkbox with 'name' caption
Then the user should not see the 'Name' column in the table
And the user should not see the 'Id' column in the table

Scenario: Check the checkbox with caption 'id' and 'name' for SIMPLE table
Given the user refresh the Example page
When the user selects the item 'Trees and Tables->Table' in a tree
And the user checks the checkbox with 'id' caption
And the user checks the checkbox with 'name' caption
Then the user should see the 'Id' column in the table
And the user should see the 'Name' column in the table

Scenario: Uncheck the checkbox with caption 'id' and 'name' for SIMPLE table
Given the user refresh the Example page
When the user selects the item 'Trees and Tables->Table' in a tree
And the user checks the checkbox with 'id' caption
And the user checks the checkbox with 'name' caption
And the user unchecks the checkbox with 'id' caption
And the user unchecks the checkbox with 'name' caption
Then the user should not see the 'Id' column in the table
And the user should not see the 'Name' column in the table

Scenario: Make visible the column 'id' only from the settings wheel for SIMPLE table
Given the user refresh the Example page
When the user selects the item 'Trees and Tables->Table' in a tree
And the user makes the 'Id' column visible from the settings wheel for <tableCaption> table
Then the user should see the 'Id' column in <tableCaption> table
And the user should not see the 'Name' column in <tableCaption> table
And the user should see that 'Id' item is checked in the settings wheel in <tableCaption> table
And the user should see that 'Name' item is unchecked in the settings wheel in <tableCaption> table
Examples:
|tableCaption|
|Simple Table with label components as columns|

Scenario: Make visible the column 'name' only from the settings wheel for SIMPLE table
Given the user refresh the Example page
When the user selects the item 'Trees and Tables->Table' in a tree
And the user makes the 'Id' column not visible from the settings wheel for <tableCaption> table
And the user makes the 'Name' column visible from the settings wheel for <tableCaption> table
Then the user should see the 'Name' column in <tableCaption> table
And the user should not see the 'Id' column in <tableCaption> table
And the user should see that 'Id' item is unchecked in the settings wheel in <tableCaption> table
And the user should see that 'Name' item is checked in the settings wheel in <tableCaption> table
Examples:
|tableCaption|
|Simple Table with label components as columns|

Scenario: Make visible the columns 'id' and 'name' from the settings wheel for SIMPLE table
Given the user refresh the Example page
When the user selects the item 'Trees and Tables->Table' in a tree
And the user makes the 'Id' column visible from the settings wheel for <tableCaption> table
And the user makes the 'Name' column visible from the settings wheel for <tableCaption> table
Then the user should see the 'Id' column in <tableCaption> table
And the user should see the 'Name' column in <tableCaption> table
And the user should see that 'Id' item is checked in the settings wheel in <tableCaption> table
And the user should see that 'Name' item is checked in the settings wheel in <tableCaption> table
Examples:
|tableCaption|
|Simple Table with label components as columns|

Scenario: Make not visible the columns 'id' and 'name' from the settings wheel for SIMPLE table
Given the user refresh the Example page
When the user selects the item 'Trees and Tables->Table' in a tree
And the user makes the 'Id' column visible from the settings wheel for <tableCaption> table
And the user makes the 'Name' column visible from the settings wheel for <tableCaption> table
And the user makes the 'Id' column not visible from the settings wheel for <tableCaption> table
And the user makes the 'Name' column not visible from the settings wheel for <tableCaption> table
Then the user should not see the 'Id' column in <tableCaption> table
And the user should not see the 'Name' column in <tableCaption> table
And the user should see that 'Id' item is unchecked in the settings wheel in <tableCaption> table
And the user should see that 'Name' item is unchecked in the settings wheel in <tableCaption> table
Examples:
|tableCaption|
|Simple Table with label components as columns|

Scenario: Select/Deselect the first column in SIMPLE table
Given the user refresh the Example page
When the user selects the item 'Trees and Tables->Table' in a tree
And the user selects the row with 'Id' column and '0' value in <tableCaption> table
Then the user should see that row with 'Id' column and '0' value is selected in <tableCaption> table
And the user should see the label with 'user0' text
When the user deselects the row with 'Id' column and '0' value in <tableCaption> table
Then the user should see that row with 'Id' column and '0' value is deselected in <tableCaption> table
And the user should see the label with 'ALL' text
Examples:
|tableCaption|
|Simple Table with label components as columns|

Scenario: Select/Deselect the last column in SIMPLE table
Given the user refresh the Example page
When the user selects the item 'Trees and Tables->Table' in a tree
And the user scrolls vertically down to the end in <tableCaption> table
And the user selects the row with 'Id' column and '49' value in <tableCaption> table
Then the user should see that row with 'Id' column and '49' value is selected in <tableCaption> table
And the user should see the label with 'user49' text
When the user scrolls up vertically to the beginning in <tableCaption> table
And the user scrolls vertically down to the end in <tableCaption> table
And the user deselects the row with 'Id' column and '49' value in <tableCaption> table
Then the user should see that row with 'Id' column and '49' value is deselected in <tableCaption> table
And the user should see the label with 'ALL' text
Examples:
|tableCaption|
|Simple Table with label components as columns|

Scenario: Re-select a column at the beginning in SIMPLE table
Given the user refresh the Example page
When the user selects the item 'Trees and Tables->Table' in a tree
And the user selects the row with 'Id' column and '1' value in <tableCaption> table
And the user deselects the row with 'Id' column and '1' value in <tableCaption> table
Then the user should see that row with 'Id' column and '1' value is deselected in <tableCaption> table
And the user should see the label with 'ALL' text
When the user selects the row with 'Id' column and '1' value in <tableCaption> table
Then the user should see that row with 'Id' column and '1' value is selected in <tableCaption> table
And the user should see the label with 'user1' text
Examples:
|tableCaption|
|Simple Table with label components as columns|

Scenario: Re-select a column at the end in SIMPLE table
Given the user refresh the Example page
When the user selects the item 'Trees and Tables->Table' in a tree
And the user scrolls vertically down to the end in <tableCaption> table
And the user selects the row with 'Id' column and '49' value in <tableCaption> table
And the user deselects the row with 'Id' column and '49' value in <tableCaption> table
Then the user should see that row with 'Id' column and '49' value is deselected in <tableCaption> table
And the user should see that <tableCaption> table is scrolled to the end
And the user should see the label with 'ALL' text
When the user selects the row with 'Id' column and '49' value in <tableCaption> table
Then the user should see that row with 'Id' column and '49' value is selected in <tableCaption> table
And the user should see the label with 'user49' text
And the user should see that <tableCaption> table is scrolled to the end
Examples:
|tableCaption|
|Simple Table with label components as columns|

Scenario: Select another column at the beginning in SIMPLE table
Given the user refresh the Example page
When the user selects the item 'Trees and Tables->Table' in a tree
And the user selects the row with 'Id' column and '1' value in <tableCaption> table
And the user selects the row with 'Id' column and '2' value in <tableCaption> table
Then the user should see that row with 'Id' column and '1' value is deselected in <tableCaption> table
And the user should see that row with 'Id' column and '2' value is selected in <tableCaption> table
And the user should see the label with 'user2' text
Examples:
|tableCaption|
|Simple Table with label components as columns|

Scenario: Select another column at the end in SIMPLE table
Given the user refresh the Example page
When the user selects the item 'Trees and Tables->Table' in a tree
And the user scrolls vertically down to the end in <tableCaption> table
And the user selects the row with 'Id' column and '49' value in <tableCaption> table
And the user selects the row with 'Id' column and '48' value in <tableCaption> table
Then the user should see that row with 'Id' column and '49' value is deselected in <tableCaption> table
And the user should see that row with 'Id' column and '48' value is selected in <tableCaption> table
And the user should see the label with 'user48' text
Examples:
|tableCaption|
|Simple Table with label components as columns|

Scenario: Select another column in SIMPLE table
Given the user refresh the Example page
When the user selects the item 'Trees and Tables->Table' in a tree
And the user scrolls vertically down to the end in <tableCaption> table
And the user selects the row with 'Id' column and '48' value in <tableCaption> table
And the user scrolls up vertically to the beginning in <tableCaption> table
And the user selects the row with 'Id' column and '1' value in <tableCaption> table
Then the user should see that row with 'Id' column and '1' value is selected in <tableCaption> table
And the user should see the label with 'user1' text
When the user scrolls vertically down to the end in <tableCaption> table
Then the user should see that row with 'Id' column and '48' value is deselected in <tableCaption> table
Examples:
|tableCaption|
|Simple Table with label components as columns|

Scenario: Selection is not disabling for a row when another column is visible in SIMPLE table
Given the user refresh the Example page
When the user selects the item 'Trees and Tables->Table' in a tree
And the user selects the row with 'Id' column and '1' value in <tableCaption> table
And the user makes the 'Name' column visible from the settings wheel for <tableCaption> table
Then the user should see that row with 'Id' column and '1' value is selected in <tableCaption> table
And the user should see the label with 'user1' text
Examples:
|tableCaption|
|Simple Table with label components as columns|

Scenario: Selection is not disabling for a row when another column is not visible in SIMPLE table
Given the user refresh the Example page
When the user selects the item 'Trees and Tables->Table' in a tree
And the user makes the 'Name' column visible from the settings wheel for <tableCaption> table
And the user selects the row with 'Id' column and '1' value in <tableCaption> table
And the user makes the 'Name' column not visible from the settings wheel for <tableCaption> table
Then the user should see that row with 'Id' column and '1' value is selected in <tableCaption> table
And the user should see the label with 'user1' text
Examples:
|tableCaption|
|Simple Table with label components as columns|

Scenario: Selection is not disabling when all columns are not visible in SIMPLE table
Given the user refresh the Example page
When the user selects the item 'Trees and Tables->Table' in a tree
And the user selects the row with 'Id' column and '1' value in <tableCaption> table
And the user makes the 'Id' column not visible from the settings wheel for <tableCaption> table
Then the user should see no columns in <tableCaption> table
And the user should see no rows in <tableCaption> table
When the user makes the 'Id' column visible from the settings wheel for <tableCaption> table
Then the user should see that row with 'Id' column and '1' value is selected in <tableCaption> table
When the user makes the 'Name' column visible from the settings wheel for <tableCaption> table
Then the user should see that row with 'Name' column and 'user1' value is selected in <tableCaption> table
Examples:
|tableCaption|
|Simple Table with label components as columns|

Scenario: Select 'NONE' item from 'RowHeadeMode' Combo-Box in SIMPLE table
Given the user refresh the Example page
When the user selects the item 'Trees and Tables->Table' in a tree
And the user selects the checkbox with 'id' caption
And the user selects the checkbox with 'name' caption
And the user selects the row with 'Id' column and '1' value in <tableCaption> table
And the user selects 'NONE' value from 'Select RowHeaderMode' combo-box
Then the user should see that row with 'Id' column and '1' value is selected in <tableCaption> table
And the user should see the label with 'user1' text
Examples:
|tableCaption|
|Simple Table with label components as columns|

Scenario: Select 'CHECKBOX' item from 'RowHeadeMode' Combo-Box in SIMPLE table
Given the user refresh the Example page
When the user selects the item 'Trees and Tables->Table' in a tree
And the user selects the checkbox with 'id' caption
And the user selects the checkbox with 'name' caption
And the user selects the row with 'Id' column and '1' value in <tableCaption> table
And the user selects 'CHECKBOX' value from 'Select RowHeaderMode' combo-box
Then the user should see that row with 'Id' column and '1' value is selected in <tableCaption> table
And the user should see that checkbox for row with 'Id' column and '1' value is selected in <tableCaption> table
And the user should see the label with 'user1' text
Examples:
|tableCaption|
|Simple Table with label components as columns|

Scenario: Unselect item by clicking on checkbox in 'CHECKBOX' mode in SIMPLE table
When the user unchecks the checkbox for row with 'Id' column and '1' value in <tableCaption> table
Then the user should see that row with 'Id' column and '1' value is deselected in <tableCaption> table
And the user should see that checkbox for row with 'Id' column and '1' value is unchecked in <tableCaption> table
And the user should see the label with 'ALL' text
Examples:
|tableCaption|
|Simple Table with label components as columns|

Scenario: Select item by clicking on checkbox in 'CHECKBOX' mode in SIMPLE table
Given the user refresh the Example page
When the user selects the item 'Trees and Tables->Table' in a tree
And the user selects 'CHECKBOX' value from 'Select RowHeaderMode' combo-box
And the user selects the checkbox for row with 'Id' column and '1' value in <tableCaption> table
Then the user should see that row with 'Id' column and '1' value is selected in <tableCaption> table
And the user should see that checkbox for row with 'Id' column and '1' value is selected in <tableCaption> table
And the user should see the label with 'user1' text
Examples:
|tableCaption|
|Simple Table with label components as columns|

Scenario: Re-select item by clicking on checkbox in 'CHECKBOX' mode in SIMPLE table
When the user unchecks the checkbox for row with 'Id' column and '1' value in <tableCaption> table
And the user selects the checkbox for row with 'Id' column and '1' value in <tableCaption> table
Then the user should see that row with 'Id' column and '1' value is selected in <tableCaption> table
And the user should see that checkbox for row with 'Id' column and '1' value is selected in <tableCaption> table
And the user should see the label with 'user1' text
Examples:
|tableCaption|
|Simple Table with label components as columns|

Scenario: Select another item by clicking on checkbox in 'CHECKBOX' mode in SIMPLE table
When the user selects the checkbox for row with 'Id' column and '2' value in <tableCaption> table
Then the user should see that row with 'Id' column and '2' value is selected in <tableCaption> table
And the user should see that row with 'Id' column and '1' value is deselected in <tableCaption> table
And the user should see that checkbox for row with 'Id' column and '2' value is checked in <tableCaption> table
And the user should see that checkbox for row with 'Id' column and '1' value is unchecked in <tableCaption> table
And the user should see the label with 'user2' text
Examples:
|tableCaption|
|Simple Table with label components as columns|

Scenario: Select 'ROW_NUMBER' item from 'RowHeadeMode' Combo-Box in SIMPLE table
Given the user refresh the Example page
When the user selects the item 'Trees and Tables->Table' in a tree
And the user selects the checkbox with 'id' caption
And the user selects the checkbox with 'name' caption
And the user selects the row with 'Id' column and '1' value in <tableCaption> table
And the user selects 'ROW_NUMBER' value from 'Select RowHeaderMode' combo-box
Then the user should see that row with 'Id' column and '1' value is selected in <tableCaption> table
And the user should see the label with 'user1' text
Examples:
|tableCaption|
|Simple Table with label components as columns|

Scenario: Select 'CAPTION' item from 'RowHeadeMode' Combo-Box in SIMPLE table
Given the user refresh the Example page
When the user selects the item 'Trees and Tables->Table' in a tree
And the user selects the checkbox with 'id' caption
And the user selects the checkbox with 'name' caption
And the user selects the row with 'Id' column and '1' value in <tableCaption> table
And the user selects 'CAPTION' value from 'Select RowHeaderMode' combo-box
Then the user should see that row with 'Id' column and '1' value is selected in <tableCaption> table
And the user should see the label with 'user1' text
Examples:
|tableCaption|
|Simple Table with label components as columns|