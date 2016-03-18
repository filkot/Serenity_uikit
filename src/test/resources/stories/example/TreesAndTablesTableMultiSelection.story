*-----------------------------------------------------------------------------------------------------------------------
* Tested application: vaadin_example
*
* UI element: Trees and Tables -> Table (Multi-Selection)
*
* Author: Maksim Zhelezko
* Created Date: 04.03.2016
*-----------------------------------------------------------------------------------------------------------------------
Meta: @group: Multi-Selection Table
GivenStories: stories/example/CommonLoginExamplesApp.story

Scenario: Make not visible all columns except column 'id' from the settings wheel for MULTI-SELECTION table
When the user selects the item 'Trees and Tables->Table' in a tree
And the user makes the 'Description' column not visible from the settings wheel for <tableCaption> table
And the user makes the 'Active' column not visible from the settings wheel for <tableCaption> table
And the user makes the 'Date' column not visible from the settings wheel for <tableCaption> table
And the user makes the 'Password' column not visible from the settings wheel for <tableCaption> table
And the user makes the 'Name' column not visible from the settings wheel for <tableCaption> table
Then the user should see the 'Id' column in <tableCaption> table
And the user should not see the 'Name' column in <tableCaption> table
And the user should not see the 'Password' column in <tableCaption> table
And the user should not see the 'Date' column in <tableCaption> table
And the user should not see the 'Active' column in <tableCaption> table
And the user should not see the 'Description' column in <tableCaption> table
And the user should not see the 'Id' column in <tableCaption> table
And the user should see that 'Name' item is unchecked in the settings wheel in <tableCaption> table
And the user should see that 'Password' item is unchecked in the settings wheel in <tableCaption> table
And the user should see that 'Date' item is unchecked in the settings wheel in <tableCaption> table
And the user should see that 'Active' item is unchecked in the settings wheel in <tableCaption> table
And the user should see that 'Description' item is unchecked in the settings wheel in <tableCaption> table
Examples:
|tableCaption|
|Table with different components in columns and multi selection mode|

Scenario: Make not visible all columns from the settings wheel for MULTI-SELECTION table
When the user makes the 'Id' column not visible from the settings wheel for <tableCaption> table
Then the user should not see the 'Id' column in <tableCaption> table
And the user should not see the 'Name' column in <tableCaption> table
And the user should not see the 'Password' column in <tableCaption> table
And the user should not see the 'Date' column in <tableCaption> table
And the user should not see the 'Active' column in <tableCaption> table
And the user should not see the 'Description' column in <tableCaption> table
And the user should see that 'Id' item is unchecked in the settings wheel in <tableCaption> table
And the user should see that 'Name' item is unchecked in the settings wheel in <tableCaption> table
And the user should see that 'Password' item is unchecked in the settings wheel in <tableCaption> table
And the user should see that 'Date' item is unchecked in the settings wheel in <tableCaption> table
And the user should see that 'Active' item is unchecked in the settings wheel in <tableCaption> table
And the user should see that 'Description' item is unchecked in the settings wheel in <tableCaption> table
Examples:
|tableCaption|
|Table with different components in columns and multi selection mode|

Scenario: Make visible all columns except column 'Description' from the settings wheel for MULTI-SELECTION table
When the user makes the 'Id' column visible from the settings wheel for <tableCaption> table
And the user makes the 'Name' column not visible from the settings wheel for <tableCaption> table
And the user makes the 'Password' column not visible from the settings wheel for <tableCaption> table
And the user makes the 'Date' column not visible from the settings wheel for <tableCaption> table
And the user makes the 'Active' column not visible from the settings wheel for <tableCaption> table
Then the user should see the 'Id' column in <tableCaption> table
And the user should see the 'Name' column in <tableCaption> table
And the user should see the 'Password' column in <tableCaption> table
And the user should see the 'Date' column in <tableCaption> table
And the user should see the 'Active' column in <tableCaption> table
And the user should not see the 'Description' column in <tableCaption> table
And the user should see that 'Id' item is checked in the settings wheel in <tableCaption> table
And the user should see that 'Name' item is checked in the settings wheel in <tableCaption> table
And the user should see that 'Pasword' item is checked in the settings wheel in <tableCaption> table
And the user should see that 'Date' item is checked in the settings wheel in <tableCaption> table
And the user should see that 'Active' item is checked in the settings wheel in <tableCaption> table
And the user should see that 'Description' item is unchecked in the settings wheel in <tableCaption> table
Examples:
|tableCaption|
|Table with different components in columns and multi selection mode|

Scenario: Make visible all columns from the settings wheel for MULTI-SELECTION table
When the user makes the 'Id' column visible from the settings wheel for <tableCaption> table
And the user makes the 'Name' column not visible from the settings wheel for <tableCaption> table
And the user makes the 'Password' column not visible from the settings wheel for <tableCaption> table
And the user makes the 'Date' column not visible from the settings wheel for <tableCaption> table
And the user makes the 'Active' column not visible from the settings wheel for <tableCaption> table
And the user makes the 'Description' column not visible from the settings wheel for <tableCaption> table
Then the user should see the 'Id' column in <tableCaption> table
And the user should see the 'Name' column in <tableCaption> table
And the user should see the 'Password' column in <tableCaption> table
And the user should see the 'Date' column in <tableCaption> table
And the user should see the 'Active' column in <tableCaption> table
And the user should see the 'Description' column in <tableCaption> table
And the user should see that 'Id' item is checked in the settings wheel in <tableCaption> table
And the user should see that 'Name' item is checked in the settings wheel in <tableCaption> table
And the user should see that 'Password' item is checked in the settings wheel in <tableCaption> table
And the user should see that 'Date' item is checked in the settings wheel in <tableCaption> table
And the user should see that 'Active' item is checked in the settings wheel in <tableCaption> table
And the user should see that 'Description' item is checked in the settings wheel in <tableCaption> table
Examples:
|tableCaption|
|Table with different components in columns and multi selection mode|

Scenario: Select the first row in MULTI-SELECTION table
Given the user refresh the Example page
When the user selects the item 'Trees and Tables->Table' in a tree
And the user selects the row with 'Id' column and '0' value in <tableCaption> table
Then the user should see that row with 'Id' column and '0' value is selected in <tableCaption> table
Examples:
|tableCaption|
|Table with different components in columns and multi selection mode|

Scenario: Select the last row in MULTI-SELECTION table
Given the user refresh the Example page
When the user selects the item 'Trees and Tables->Table' in a tree
And the user scrolls vertically down to the end in <tableCaption> table
And the user selects the row with 'Id' column and '49' value in <tableCaption> table
Then the user should see that row with 'Id' column and '49' value is selected in <tableCaption> table
Examples:
|tableCaption|
|Table with different components in columns and multi selection mode|

Scenario: Select another row at the beginning in MULTI-SELECTION table
Given the user refresh the Example page
When the user selects the item 'Trees and Tables->Table' in a tree
And the user selects the row with 'Id' column and '1' value in <tableCaption> table
And the user selects the row with 'Id' column and '2' value in <tableCaption> table
Then the user should see that row with 'Id' column and '1' value is deselected in <tableCaption> table
And the user should see that row with 'Id' column and '2' value is selected in <tableCaption> table
Examples:
|tableCaption|
|Table with different components in columns and multi selection mode|

Scenario: Select another row at the end in MULTI-SELECTION table
Given the user refresh the Example page
When the user selects the item 'Trees and Tables->Table' in a tree
And the user scrolls vertically down to the end in <tableCaption> table
And the user selects the row with 'Id' column and '49' value in <tableCaption> table
And the user selects the row with 'Id' column and '48' value in <tableCaption> table
Then the user should see that row with 'Id' column and '49' value is deselected in <tableCaption> table
And the user should see that row with 'Id' column and '48' value is selected in <tableCaption> table
Examples:
|tableCaption|
|Table with different components in columns and multi selection mode|

Scenario: Select another row in MULTI-SELECTION table
Given the user refresh the Example page
When the user selects the item 'Trees and Tables->Table' in a tree
And the user scrolls vertically down to the end in <tableCaption> table
And the user selects the row with 'Id' column and '48' value in <tableCaption> table
And the user scrolls up vertically to the beginning in <tableCaption> table
And the user selects the row with 'Id' column and '1' value in <tableCaption> table
Then the user should see that row with 'Id' column and '1' value is selected in <tableCaption> table
When the user scrolls vertically down to the end in <tableCaption> table
Then the user should see that row with 'Id' column and '48' value is deselected in <tableCaption> table
Examples:
|tableCaption|
|Table with different components in columns and multi selection mode|

Scenario: Re-select a row at the beginning in MULTI-SELECTION table
Given the user refresh the Example page
When the user selects the item 'Trees and Tables->Table' in a tree
And the user selects the row with 'Id' column and '1' value in <tableCaption> table
And the user selects the row with 'Id' column and '0' value in <tableCaption> table
Then the user should see that row with 'Id' column and '1' value is deselected in <tableCaption> table
And the user should see that row with 'Id' column and '0' value is selected in <tableCaption> table
When the user selects the row with 'Id' column and '1' value in <tableCaption> table
Then the user should see that row with 'Id' column and '1' value is selected in <tableCaption> table
And the user should see that row with 'Id' column and '0' value is selected in <tableCaption> table
Examples:
|tableCaption|
|Table with different components in columns and multi selection mode|

Scenario: Re-select a row at the end in MULTI-SELECTION table
Given the user refresh the Example page
When the user selects the item 'Trees and Tables->Table' in a tree
And the user scrolls vertically down to the end in <tableCaption> table
And the user selects the row with 'Id' column and '49' value in <tableCaption> table
And the user selects the row with 'Id' column and '48' value in <tableCaption> table
Then the user should see that row with 'Id' column and '49' value is deselected in <tableCaption> table
And the user should see that row with 'Id' column and '48' value is selected in <tableCaption> table
And the user should see that <tableCaption> table is scrolled to the end
When the user selects the row with 'Id' column and '49' value in <tableCaption> table
Then the user should see that row with 'Id' column and '49' value is selected in <tableCaption> table
And the user should see that row with 'Id' column and '48' value is deselected in <tableCaption> table
And the user should see that <tableCaption> table is scrolled to the end
Examples:
|tableCaption|
|Table with different components in columns and multi selection mode|

Scenario: Selection is not disabling for a row when another column is visible in MULTI-SELECTION table
Given the user refresh the Example page
When the user selects the item 'Trees and Tables->Table' in a tree
And the user makes the 'Name' column not visible from the settings wheel for <tableCaption> table
And the user selects the row with 'Id' column and '1' value in <tableCaption> table
And the user makes the 'Name' column visible from the settings wheel for <tableCaption> table
Then the user should see that row with 'Id' column and '1' value is selected in <tableCaption> table
Examples:
|tableCaption|
|Table with different components in columns and multi selection mode|

Scenario: Selection is not disabling for a row when another column is visible in MULTI-SELECTION table
When the user makes the 'Name' column not visible from the settings wheel for <tableCaption> table
Then the user should see that row with 'Id' column and '1' value is selected in <tableCaption> table
Examples:
|tableCaption|
|Table with different components in columns and multi selection mode|

Scenario: Selection is not disabling when all columns are not visible in MULTI-SELECTION table
When the user makes the 'Id' column not visible from the settings wheel for <tableCaption> table
And the user makes the 'Password' column not visible from the settings wheel for <tableCaption> table
And the user makes the 'Date' column not visible from the settings wheel for <tableCaption> table
And the user makes the 'Active' column not visible from the settings wheel for <tableCaption> table
And the user makes the 'Description' column not visible from the settings wheel for <tableCaption> table
And the user selects the row with 'Name' column and 'user1' value in <tableCaption> table
Then the user should see that row with 'Name' column and 'user1' value is selected in <tableCaption> table
When the user makes the 'Id' column not visible from the settings wheel for <tableCaption> table
And the user makes the 'Id' column visible from the settings wheel for <tableCaption> table
Then the user should see that row with 'Id' column and '1' value is selected in <tableCaption> table
Examples:
|tableCaption|
|Table with different components in columns and multi selection mode|

Scenario: Multi-select the rows next to the current at the beginning in MULTI-SELECTION table
Given the user refresh the Example page
When the user selects the item 'Trees and Tables->Table' in a tree
And the user multi-selects the row with 'Id' column and '1' value in <tableCaption> table
And the user multi-selects the row with 'Id' column and '2' value in <tableCaption> table
Then the user should see that row with 'Id' column and '1' value is selected in <tableCaption> table
And the user should see that row with 'Id' column and '2' value is selected in <tableCaption> table
When the user multi-selects the row with 'Id' column and '3' value in <tableCaption> table
And the user multi-selects the row with 'Id' column and '4' value in <tableCaption> table
Then the user should see that row with 'Id' column and '1' value is selected in <tableCaption> table
And the user should see that row with 'Id' column and '2' value is selected in <tableCaption> table
And the user should see that row with 'Id' column and '3' value is selected in <tableCaption> table
And the user should see that row with 'Id' column and '4' value is selected in <tableCaption> table
Examples:
|tableCaption|
|Table with different components in columns and multi selection mode|

Scenario: Multi-select the rows next to the current at the end in MULTI-SELECTION table
Given the user refresh the Example page
When the user selects the item 'Trees and Tables->Table' in a tree
And the user scrolls vertically down to the end in <tableCaption> table
And the user multi-selects the row with 'Id' column and '48' value in <tableCaption> table
And the user multi-selects the row with 'Id' column and '49' value in <tableCaption> table
Then the user should see that row with 'Id' column and '48' value is selected in <tableCaption> table
And the user should see that row with 'Id' column and '49' value is selected in <tableCaption> table
And  the user should see that <tableCaption> table is scrolled to the end
When the user multi-selects the row with 'Id' column and '46' value in <tableCaption> table
And the user multi-selects the row with 'Id' column and '47' value in <tableCaption> table
Then the user should see that row with 'Id' column and '46' value is selected in <tableCaption> table
And the user should see that row with 'Id' column and '47' value is selected in <tableCaption> table
And the user should see that row with 'Id' column and '48' value is selected in <tableCaption> table
And the user should see that row with 'Id' column and '49' value is selected in <tableCaption> table
And the user should see that <tableCaption> table is scrolled to the end
Examples:
|tableCaption|
|Table with different components in columns and multi selection mode|

Scenario: Select other rows at the beginning in MULTI-SELECTION table
Given the user refresh the Example page
When the user selects the item 'Trees and Tables->Table' in a tree
And the user scrolls up vertically to the beginning in <tableCaption> table
And the user multi-selects the row with 'Id' column and '1' value in <tableCaption> table
And the user multi-selects the row with 'Id' column and '2' value in <tableCaption> table
And the user deselects the row with 'Id' column and '1' value in <tableCaption> table
And the user deselects the row with 'Id' column and '2' value in <tableCaption> table
And the user multi-selects the row with 'Id' column and '3' value in <tableCaption> table
And the user multi-selects the row with 'Id' column and '4' value in <tableCaption> table
Then the user should see that row with 'Id' column and '3' value is selected in <tableCaption> table
And the user should see that row with 'Id' column and '4' value is selected in <tableCaption> table
Examples:
|tableCaption|
|Table with different components in columns and multi selection mode|

Scenario: Select other rows at the end in MULTI-SELECTION table
Given the user refresh the Example page
When the user selects the item 'Trees and Tables->Table' in a tree
And the user scrolls vertically down to the end in <tableCaption> table
And the user multi-selects the row with 'Id' column and '48' value in <tableCaption> table
And the user multi-selects the row with 'Id' column and '49' value in <tableCaption> table
And the user deselects the row with 'Id' column and '48' value in <tableCaption> table
And the user deselects the row with 'Id' column and '49' value in <tableCaption> table
And the user multi-selects the row with 'Id' column and '46' value in <tableCaption> table
And the user multi-selects the row with 'Id' column and '47' value in <tableCaption> table
Then the user should see that row with 'Id' column and '46' value is selected in <tableCaption> table
And the user should see that row with 'Id' column and '47' value is selected in <tableCaption> table
And the user should see that <tableCaption> table is scrolled to the end
Examples:
|tableCaption|
|Table with different components in columns and multi selection mode|

Scenario: Select a new date in DatePicker in selected row of MULTI-SELECTION table
Given the user refresh the Example page
When the user selects the item 'Trees and Tables->Table' in a tree
And the user multi-selects the row with 'Id' column and '1' value in <tableCaption> table
And the user inputs '4/10/16 05:12:17 PM' date into 'Date' column for row with 'Id' column and '1' value in <tableCaption> table
Then the user should see that row with 'Id' column and '1' value is selected in <tableCaption> table
And the user should see '4/10/16 05:12:17 PM' date in 'Date' column for row with 'Id' column and '1' value in <tableCaption> table
And the user should see '3/11/16 08:35:36 PM' date in 'Date' column for row with 'Id' column and '2' value in <tableCaption> table
Examples:
|tableCaption|
|Table with different components in columns and multi selection mode|

Scenario: Select a new date in DatePicker in one of selected rows of MULTI-SELECTION table
Given the user refresh the Example page
When the user selects the item 'Trees and Tables->Table' in a tree
And the user multi-selects the row with 'Id' column and '1' value in <tableCaption> table
And the user multi-selects the row with 'Id' column and '2' value in <tableCaption> table
And the user inputs '4/10/16 05:12:17 PM' date into 'Date' column for row with 'Id' column and '2' value in <tableCaption> table
Then the user should see that row with 'Id' column and '1' value is selected in <tableCaption> table
And the user should see that row with 'Id' column and '2' value is selected in <tableCaption> table
And the user should see '3/10/16 08:32:56 PM' date in 'Date' column for row with 'Id' column and '1' value in <tableCaption> table
And the user should see '4/10/16 05:12:17 PM' date in 'Date' column for row with 'Id' column and '2' value in <tableCaption> table
Examples:
|tableCaption|
|Table with different components in columns and multi selection mode|

Scenario: Unselect a checkbox in selected row of MULTI-SELECTION table
Given the user refresh the Example page
When the user selects the item 'Trees and Tables->Table' in a tree
And the user multi-selects the row with 'Id' column and '1' value in <tableCaption> table
And the user deselects the checkbox in 'Active' column for row with 'Id' column and '1' value in <tableCaption> table
Then the user should see that row with 'Id' column and '1' value is selected in <tableCaption> table
And the user should see that checkbox in 'Active' column for row with 'Id' column and '1' value is unchecked in <tableCaption> table
And the user should see that checkbox in 'Active' column for row with 'Id' column and '2' value is checked in <tableCaption> table
Examples:
|tableCaption|
|Table with different components in columns and multi selection mode|

Scenario: Unselect a checkbox in one of selected rows of MULTI-SELECTION table
Given the user refresh the Example page
When the user selects the item 'Trees and Tables->Table' in a tree
And the user multi-selects the row with 'Id' column and '1' value in <tableCaption> table
And the user multi-selects the row with 'Id' column and '2' value in <tableCaption> table
And the user deselects the checkbox in 'Active' column for row with 'Id' column and '2' value in <tableCaption> table
Then the user should see that row with 'Id' column and '1' value is selected in <tableCaption> table
And the user should see that row with 'Id' column and '2' value is selected in <tableCaption> table
And the user should see that checkbox in 'Active' column for row with 'Id' column and '1' value is checked in <tableCaption> table
And the user should see that checkbox in 'Active' column for row with 'Id' column and '2' value is unchecked in <tableCaption> table
Examples:
|tableCaption|
|Table with different components in columns and multi selection mode|

Scenario: Select a checkbox in selected row of MULTI-SELECTION table
Given the user refresh the Example page
When the user selects the item 'Trees and Tables->Table' in a tree
And the user deselects the checkbox in 'Active' column for row with 'Id' column and '1' value in <tableCaption> table
And the user deselects the checkbox in 'Active' column for row with 'Id' column and '2' value in <tableCaption> table
And the user multi-selects the row with 'Id' column and '1' value in <tableCaption> table
And the user selects the checkbox in 'Active' column for row with 'Id' column and '1' value in <tableCaption> table
Then the user should see that row with 'Id' column and '1' value is selected in <tableCaption> table
And the user should see that checkbox in 'Active' column for row with 'Id' column and '1' value is checked in <tableCaption> table
And the user should see that checkbox in 'Active' column for row with 'Id' column and '2' value is unchecked in <tableCaption> table
Examples:
|tableCaption|
|Table with different components in columns and multi selection mode|

Scenario: Select a checkbox in one of selected rows of MULTI-SELECTION table
Given the user refresh the Example page
When the user selects the item 'Trees and Tables->Table' in a tree
And the user deselects the checkbox in 'Active' column for row with 'Id' column and '1' value in <tableCaption> table
And the user deselects the checkbox in 'Active' column for row with 'Id' column and '2' value in <tableCaption> table
And the user multi-selects the row with 'Id' column and '1' value in <tableCaption> table
And the user multi-selects the row with 'Id' column and '2' value in <tableCaption> table
And the user checks the checkbox in 'Active' column for row with 'Id' column and '2' value in <tableCaption> table
Then the user should see that row with 'Id' column and '1' value is selected in <tableCaption> table
And the user should see that row with 'Id' column and '2' value is selected in <tableCaption> table
And the user should see that checkbox in 'Active' column for row with 'Id' column and '1' value is unchecked in <tableCaption> table
And the user should see that checkbox in 'Active' column for row with 'Id' column and '2' value is checked in <tableCaption> table
Examples:
|tableCaption|
|Table with different components in columns and multi selection mode|

Scenario: Input a text in selected row of MULTI-SELECTION table
Given the user refresh the Example page
When the user selects the item 'Trees and Tables->Table' in a tree
And the user multi-selects the row with 'Id' column and '1' value in <tableCaption> table
And the user inputs 'New description' text into 'Description' column for row with 'Id' column and '1' value in <tableCaption> table
Then the user should see that row with 'Id' column and '1' value is selected in <tableCaption> table
And the user should see 'New description' text in 'Description' column for row with 'Id' column and '1' value in <tableCaption> table
And the user should see 'Description of user2' text in 'Description' column for row with 'Id' column and '2' value in <tableCaption> table
Examples:
|tableCaption|
|Table with different components in columns and multi selection mode|

Scenario: Select a text in one of selected rows of MULTI-SELECTION table
Given the user refresh the Example page
When the user selects the item 'Trees and Tables->Table' in a tree
And the user multi-selects the row with 'Id' column and '1' value in <tableCaption> table
And the user multi-selects the row with 'Id' column and '2' value in <tableCaption> table
And the user inputs 'New description' text into 'Description' column for row with 'Id' column and '2' value in <tableCaption> table
Then the user should see that row with 'Id' column and '1' value is selected in <tableCaption> table
And the user should see that row with 'Id' column and '2' value is selected in <tableCaption> table
And the user should see 'Description of user1' text in 'Description' column for row with 'Id' column and '1' value in <tableCaption> table
And the user should see 'New description' text in 'Description' column for row with 'Id' column and '2' value in <tableCaption> table
Examples:
|tableCaption|
|Table with different components in columns and multi selection mode|

Scenario: Multi-select the rows across the current in MULTI-SELECTION table
Meta: @id 1
Given the user refresh the Example page
When the user selects the item 'Trees and Tables->Table' in a tree
And the user multi-selects the row with 'Id' column and '4' value in <tableCaption> table
Then the user should see that row with 'Id' column and '4' value is selected in <tableCaption> table
When the user multi-selects the row with 'Id' column and '6' value in <tableCaption> table
Then the user should see that row with 'Id' column and '4' value is selected in <tableCaption> table
And the user should see that row with 'Id' column and '5' value is deselected in <tableCaption> table
And the user should see that row with 'Id' column and '6' value is selected in <tableCaption> table
And the user should see that row with 'Id' column and '7' value is deselected in <tableCaption> table
When the user multi-selects the row with 'Id' column and '2' value in <tableCaption> table
Then the user should see that row with 'Id' column and '1' value is deselected in <tableCaption> table
And the user should see that row with 'Id' column and '2' value is selected in <tableCaption> table
And the user should see that row with 'Id' column and '3' value is deselected in <tableCaption> table
And the user should see that row with 'Id' column and '4' value is selected in <tableCaption> table
And the user should see that row with 'Id' column and '5' value is deselected in <tableCaption> table
And the user should see that row with 'Id' column and '6' value is selected in <tableCaption> table
And the user should see that row with 'Id' column and '7' value is deselected in <tableCaption> table
Examples:
|tableCaption|
|Table with different components in columns and multi selection mode|

Scenario: Unselect a checkbox in a row from the across selected rows in MULTI-SELECTION table
GivenStories: stories/example/CommonLoginExamplesApp.story#{id:1}
When the user unchecks the checkbox in 'Active' column for row with 'Id' column and '4' value in <tableCaption> table
Then the user should see that row with 'Id' column and '2' value is selected in <tableCaption> table
And the user should see that checkbox in 'Active' column for row with 'Id' column and '2' value is checked in <tableCaption> table
And the user should see that row with 'Id' column and '4' value is selected in <tableCaption> table
And the user should see that checkbox in 'Active' column for row with 'Id' column and '4' value is unchecked in <tableCaption> table
And the user should see that row with 'Id' column and '6' value is selected in <tableCaption> table
And the user should see that checkbox in 'Active' column for row with 'Id' column and '6' value is checked in <tableCaption> table
Examples:
|tableCaption|
|Table with different components in columns and multi selection mode|

Scenario: Select a checkbox in a row from the across selected rows in MULTI-SELECTION table
GivenStories: stories/example/CommonLoginExamplesApp.story#{id:1}
When the user checks the checkbox in 'Active' column for row with 'Id' column and '4' value in <tableCaption> table
Then the user should see that row with 'Id' column and '2' value is selected in <tableCaption> table
And the user should see that checkbox in 'Active' column for row with 'Id' column and '2' value is checked in <tableCaption> table
And the user should see that row with 'Id' column and '4' value is selected in <tableCaption> table
And the user should see that checkbox in 'Active' column for row with 'Id' column and '4' value is checked in <tableCaption> table
And the user should see that row with 'Id' column and '6' value is selected in <tableCaption> table
And the user should see that checkbox in 'Active' column for row with 'Id' column and '6' value is checked in <tableCaption> table
Examples:
|tableCaption|
|Table with different components in columns and multi selection mode|

Scenario: Select a date in DatePicker in a row from the across selected rows in MULTI-SELECTION table
GivenStories: stories/example/CommonLoginExamplesApp.story#{id:1}
When the user inputs '4/10/16 05:12:17 PM' date into 'Date' column for row with 'Id' column and '4' value in <tableCaption> table
Then the user should see that row with 'Id' column and '2' value is selected in <tableCaption> table
And the user should see '3/14/16 12:52:38 PM' date in 'Date' column for row with 'Id' column and '2' value in <tableCaption> table
And the user should see that row with 'Id' column and '4' value is selected in <tableCaption> table
And the user should see '4/10/16 05:12:17 PM' date in 'Date' column for row with 'Id' column and '4' value in <tableCaption> table
And the user should see that row with 'Id' column and '6' value is selected in <tableCaption> table
And the user should see '3/18/16 12:52:38 PM' date in 'Date' column for row with 'Id' column and '6' value in <tableCaption> table
Examples:
|tableCaption|
|Table with different components in columns and multi selection mode|

Scenario: Input a text in a row from the across selected rows in MULTI-SELECTION table
GivenStories: stories/example/CommonLoginExamplesApp.story#{id:1}
When the user inputs 'New description' text into 'Description' column for row with 'Id' column and '2' value in <tableCaption> table
Then the user should see that row with 'Id' column and '2' value is selected in <tableCaption> table
And the user should see 'Description of user2' text in 'Description' column for row with 'Id' column and '2' value in <tableCaption> table
And the user should see that row with 'Id' column and '4' value is selected in <tableCaption> table
And the user should see 'New description' text in 'Description' column for row with 'Id' column and '4' value in <tableCaption> table
And the user should see that row with 'Id' column and '6' value is selected in <tableCaption> table
And the user should see 'Description of user6' text in 'Description' column for row with 'Id' column and '6' value in <tableCaption> table
Examples:
|tableCaption|
|Table with different components in columns and multi selection mode|