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
Given the user refresh the Example page
When the user selects the item 'Trees and Tables->Table' in a tree
And the user makes the 'Description' column not visible from the settings wheel for <tableCaption> table
And the user makes the 'Active' column not visible from the settings wheel for <tableCaption> table
And the user makes the 'Date' column not visible from the settings wheel for <tableCaption> table
And the user makes the 'Password' column not visible from the settings wheel for <tableCaption> table
And the user makes the 'Name' column not visible from the settings wheel for <tableCaption> table
Then the user should see the 'Id' column in <tableCaption> table
And the user should not see column 'Name' in <tableCaption> table
And the user should not see column 'Password' in <tableCaption> table
And the user should not see column 'Date' in <tableCaption> table
And the user should not see column 'Active' in <tableCaption> table
And the user should not see column 'Description' in <tableCaption> table
And the user should see checked 'Id' item in the wheel in <tableCaption> table
And the user should see unchecked 'Name' item in the wheel in <tableCaption> table
And the user should see unchecked 'Password' item in the wheel in <tableCaption> table
And the user should see unchecked 'Date' item in the wheel in <tableCaption> table
And the user should see unchecked 'Active' item in the wheel in <tableCaption> table
And the user should see unchecked 'Description' item in the wheel in <tableCaption> table
Examples:
|tableCaption|
|Table with different components in columns and multi selection mode|

Scenario: Make not visible all columns from the settings wheel for MULTI-SELECTION table
When the user makes not visible column 'Id' from the wheel for <tableCaption> table
Then the user should not see column 'Id' in <tableCaption> table
And the user should not see column 'Name' in <tableCaption> table
And the user should not see column 'Password' in <tableCaption> table
And the user should not see column 'Date' in <tableCaption> table
And the user should not see column 'Active' in <tableCaption> table
And the user should not see column 'Description' in <tableCaption> table
And the user should see unchecked 'Id' item in the wheel in <tableCaption> table
And the user should see unchecked 'Name' item in the wheel in <tableCaption> table
And the user should see unchecked 'Password' item in the wheel in <tableCaption> table
And the user should see unchecked 'Date' item in the wheel in <tableCaption> table
And the user should see unchecked 'Active' item in the wheel in <tableCaption> table
And the user should see unchecked 'Description' item in the wheel in <tableCaption> table
Examples:
|tableCaption|
|Table with different components in columns and multi selection mode|

Scenario: Make visible all columns except column 'Description' from the settings wheel for MULTI-SELECTION table
When the user makes the 'Id' column visible from the settings wheel for <tableCaption> table
And the user makes visible column 'Name' from the wheel for <tableCaption> table
And the user makes visible column 'Password' from the wheel for <tableCaption> table
And the user makes visible column 'Date' from the wheel for <tableCaption> table
And the user makes visible column 'Active' from the wheel for <tableCaption> table
Then the user should see column 'Id' in <tableCaption> table
And the user should see column 'Name' in <tableCaption> table
And the user should see column 'Password' in <tableCaption> table
And the user should see column 'Date' in <tableCaption> table
And the user should see column 'Active' in <tableCaption> table
And the user should not see column 'Description' in <tableCaption> table
And the user should see checked 'Id' item in the wheel in <tableCaption> table
And the user should see checked 'Name' item in the wheel in <tableCaption> table
And the user should see checked 'Password' item in the wheel in <tableCaption> table
And the user should see checked 'Date' item in the wheel in <tableCaption> table
And the user should see checked 'Active' item in the wheel in <tableCaption> table
And the user should see unchecked 'Description' item in the wheel in <tableCaption> table
Examples:
|tableCaption|
|Table with different components in columns and multi selection mode|

Scenario: Make visible all columns from the settings wheel for MULTI-SELECTION table
When the user makes visible column 'Id' from the wheel for <tableCaption> table
And the user makes visible column 'Name' from the wheel for <tableCaption> table
And the user makes visible column 'Password' from the wheel for <tableCaption> table
And the user makes visible column 'Date' from the wheel for <tableCaption> table
And the user makes visible column 'Active' from the wheel for <tableCaption> table
And the user makes visible column 'Description' from the wheel for <tableCaption> table
Then the user should see column 'Id' in <tableCaption> table
And the user should see column 'Name' in <tableCaption> table
And the user should see column 'Password' in <tableCaption> table
And the user should see column 'Date' in <tableCaption> table
And the user should see column 'Active' in <tableCaption> table
And the user should see column 'Description' in <tableCaption> table
And the user should see checked 'Id' item in the wheel in <tableCaption> table
And the user should see checked 'Name' item in the wheel in <tableCaption> table
And the user should see checked 'Password' item in the wheel in <tableCaption> table
And the user should see checked 'Date' item in the wheel in <tableCaption> table
And the user should see checked 'Active' item in the wheel in <tableCaption> table
And the user should see checked 'Description' item in the wheel in <tableCaption> table
Examples:
|tableCaption|
|Table with different components in columns and multi selection mode|

Scenario: Select the first row in MULTI-SELECTION table
Given the user refresh the Example page
When the user selects the item 'Trees and Tables->Table' in a tree
And the user selects row with column 'Id' and value '0' in <tableCaption> table
Then the user should see row with column 'Id' and value '0' is selected in <tableCaption> table
Examples:
|tableCaption|
|Table with different components in columns and multi selection mode|

Scenario: Select the last row in MULTI-SELECTION table
Given the user refresh the Example page
When the user selects the item 'Trees and Tables->Table' in a tree
And the user scrolls down to the end in <tableCaption> table
And the user selects row with column 'Id' and value '49' in <tableCaption> table
Then the user should see row with column 'Id' and value '49' is selected in <tableCaption> table
Examples:
|tableCaption|
|Table with different components in columns and multi selection mode|

Scenario: Select another row at the beginning in MULTI-SELECTION table
Given the user refresh the Example page
When the user selects the item 'Trees and Tables->Table' in a tree
And the user selects row with column 'Id' and value '1' in <tableCaption> table
And the user selects row with column 'Id' and value '2' in <tableCaption> table
Then the user should see row with column 'Id' and value '1' is deselected in <tableCaption> table
And the user should see row with column 'Id' and value '2' is selected in <tableCaption> table
Examples:
|tableCaption|
|Table with different components in columns and multi selection mode|

Scenario: Select another row at the end in MULTI-SELECTION table
Given the user refresh the Example page
When the user selects the item 'Trees and Tables->Table' in a tree
And the user scrolls down to the end in <tableCaption> table
And the user selects row with column 'Id' and value '49' in <tableCaption> table
And the user selects row with column 'Id' and value '48' in <tableCaption> table
Then the user should see row with column 'Id' and value '49' is deselected in <tableCaption> table
And the user should see row with column 'Id' and value '48' is selected in <tableCaption> table
Examples:
|tableCaption|
|Table with different components in columns and multi selection mode|

Scenario: Select another row in MULTI-SELECTION table
Given the user refresh the Example page
When the user selects the item 'Trees and Tables->Table' in a tree
And the user scrolls down to the end in <tableCaption> table
And the user selects row with column 'Id' and value '48' in <tableCaption> table
And the user scrolls up to the beginning in <tableCaption> table
And the user selects row with column 'Id' and value '1' in <tableCaption> table
Then the user should see row with column 'Id' and value '1' is selected in <tableCaption> table
When the user scrolls down to the end in <tableCaption> table
Then the user should see row with column 'Id' and value '48' is deselected in <tableCaption> table
Examples:
|tableCaption|
|Table with different components in columns and multi selection mode|

Scenario: Re-select a row at the beginning in MULTI-SELECTION table
Given the user refresh the Example page
When the user selects the item 'Trees and Tables->Table' in a tree
And the user selects row with column 'Id' and value '1' in <tableCaption> table
And the user selects row with column 'Id' and value '0' in <tableCaption> table
Then the user should see row with column 'Id' and value '1' is deselected in <tableCaption> table
And the user should see row with column 'Id' and value '0' is selected in <tableCaption> table
When the user selects row with column 'Id' and value '1' in <tableCaption> table
Then the user should see row with column 'Id' and value '1' is selected in <tableCaption> table
And the user should see row with column 'Id' and value '0' is selected in <tableCaption> table
Examples:
|tableCaption|
|Table with different components in columns and multi selection mode|

Scenario: Re-select a row at the end in MULTI-SELECTION table
Given the user refresh the Example page
When the user selects the item 'Trees and Tables->Table' in a tree
And the user scrolls down to the end in <tableCaption> table
And the user selects row with column 'Id' and value '49' in <tableCaption> table
And the user selects row with column 'Id' and value '48' in <tableCaption> table
Then the user should see row with column 'Id' and value '49' is deselected in <tableCaption> table
And the user should see row with column 'Id' and value '48' is selected in <tableCaption> table
And  the user should see <tableCaption> table in not scrolled to the beggining
When the user selects row with column 'Id' and value '49' in <tableCaption> table
Then the user should see row with column 'Id' and value '49' is selected in <tableCaption> table
And the user should see row with column 'Id' and value '48' is deselected in <tableCaption> table
And the user should see <tableCaption> table in not scrolled to the beggining
Examples:
|tableCaption|
|Table with different components in columns and multi selection mode|

Scenario: Selection is not disabling for a row when another column is visible in MULTI-SELECTION table
Given the user refresh the Example page
When the user selects the item 'Trees and Tables->Table' in a tree
And the user makes not visible column 'Name' from the wheel for <tableCaption> table
And the user selects row with column 'Id' and value '1'' in <tableCaption> table
And the user makes visible column 'Name' from the wheel for <tableCaption> table
Then the user should see row with column 'Id' and value '1' is selected in <tableCaption> table
Examples:
|tableCaption|
|Table with different components in columns and multi selection mode|

Scenario: Selection is not disabling for a row when another column is visible in MULTI-SELECTION table
When the user makes not visible column 'Name' from the wheel for <tableCaption> table
Then the user should see row with column 'Id' and value '1' is selected in <tableCaption> table
Examples:
|tableCaption|
|Table with different components in columns and multi selection mode|

Scenario: Selection is not disabling when all columns are not visible in MULTI-SELECTION table
When the user makes not visible column 'Id' from the wheel for <tableCaption> table
And the user makes not visible column 'Password' from the wheel for <tableCaption> table
And the user makes not visible column 'Date' from the wheel for <tableCaption> table
And the user makes not visible column 'Active' from the wheel for <tableCaption> table
And the user makes the 'Description' column not visible from the settings wheel for <tableCaption> table
And the user selects row with column 'Name' and value 'user1'' in <tableCaption> table
Then the user should see row with column 'Name' and value 'user1' is selected in <tableCaption> table
When the user makes not visible column 'Id' from the wheel for <tableCaption> table
And the user makes visible column 'Id' from the wheel for <tableCaption> table
Then the user should see row with column 'Id' and value '1' is selected in <tableCaption> table
Examples:
|tableCaption|
|Table with different components in columns and multi selection mode|

Scenario: Multi-select the rows next to the current at the beginning in MULTI-SELECTION table
Given the user refresh the Example page
When the user selects the item 'Trees and Tables->Table' in a tree
And the user multi-selects row with column 'Id' and value '1' in <tableCaption> table
And the user multi-selects row with column 'Id' and value '2' in <tableCaption> table
Then the user should see row with column 'Id' and value '1' is selected in <tableCaption> table
And the user should see row with column 'Id' and value '2' is selected in <tableCaption> table
When the user multi-selects row with column 'Id' and value '3' in <tableCaption> table
And the user multi-selects row with column 'Id' and value '4' in <tableCaption> table
Then the user should see row with column 'Id' and value '1' is selected in <tableCaption> table
And the user should see row with column 'Id' and value '2' is selected in <tableCaption> table
And the user should see row with column 'Id' and value '3' is selected in <tableCaption> table
And the user should see row with column 'Id' and value '4' is selected in <tableCaption> table
Examples:
|tableCaption|
|Table with different components in columns and multi selection mode|

Scenario: Multi-select the rows next to the current at the end in MULTI-SELECTION table
Given the user refresh the Example page
When the user selects the item 'Trees and Tables->Table' in a tree
And the user scrolls down to the end in <tableCaption> table
And the user multi-selects row with column 'Id' and value '48' in <tableCaption> table
And the user multi-selects row with column 'Id' and value '49' in <tableCaption> table
Then the user should see row with column 'Id' and value '48' is selected in <tableCaption> table
And the user should see row with column 'Id' and value '49' is selected in <tableCaption> table
And  the user should see <tableCaption> table in not scrolled to the beggining
When the user multi-selects row with column 'Id' and value '46' in <tableCaption> table
And the user multi-selects row with column 'Id' and value '47' in <tableCaption> table
Then the user should see row with column 'Id' and value '46' is selected in <tableCaption> table
And the user should see row with column 'Id' and value '47' is selected in <tableCaption> table
And the user should see row with column 'Id' and value '48' is selected in <tableCaption> table
And the user should see row with column 'Id' and value '49' is selected in <tableCaption> table
And the user should see <tableCaption> table in not scrolled to the beggining
Examples:
|tableCaption|
|Table with different components in columns and multi selection mode|

Scenario: Select other rows at the beginning in MULTI-SELECTION table
Given the user refresh the Example page
When the user selects the item 'Trees and Tables->Table' in a tree
And the user scrolls up to the beginning in <tableCaption> table
And the user multi-selects row with column 'Id' and value '1' in <tableCaption> table
And the user multi-selects row with column 'Id' and value '2' in <tableCaption> table
And the user deselects row with column 'Id' and value '1' in <tableCaption> table
And the user deselects row with column 'Id' and value '2' in <tableCaption> table
And the user multi-selects row with column 'Id' and value '3' in <tableCaption> table
And the user multi-selects row with column 'Id' and value '4' in <tableCaption> table
Then the user should see row with column 'Id' and value '3' is selected in <tableCaption> table
And the user should see row with column 'Id' and value '4' is selected in <tableCaption> table
Examples:
|tableCaption|
|Table with different components in columns and multi selection mode|

Scenario: Select other rows at the end in MULTI-SELECTION table
Given the user refresh the Example page
When the user selects the item 'Trees and Tables->Table' in a tree
And the user scrolls down to the end in <tableCaption> table
And the user multi-selects row with column 'Id' and value '48' in <tableCaption> table
And the user multi-selects row with column 'Id' and value '49' in <tableCaption> table
And the user deselects row with column 'Id' and value '48' in <tableCaption> table
And the user deselects row with column 'Id' and value '49' in <tableCaption> table
And the user multi-selects row with column 'Id' and value '46' in <tableCaption> table
And the user multi-selects row with column 'Id' and value '47' in <tableCaption> table
Then the user should see row with column 'Id' and value '46' is selected in <tableCaption> table
And the user should see row with column 'Id' and value '47' is selected in <tableCaption> table
And the user should see <tableCaption> table in not scrolled to the beggining
Examples:
|tableCaption|
|Table with different components in columns and multi selection mode|

Scenario: Select a new date in DatePicker in selected row of MULTI-SELECTION table
Given the user refresh the Example page
When the user selects the item 'Trees and Tables->Table' in a tree
And the user multi-selects row with column 'Id' and value '1' in <tableCaption> table
And the user input date '4/10/16 05:12:17 PM' into column 'Date' for row with column 'Id' and value '1' in <tableCaption> table
Then the user should see row with column 'Id' and value '1' is selected in <tableCaption> table
And the user should see date '4/10/16 05:12:17 PM' in column 'Date' for row with column 'Id' and value '1' in <tableCaption> table
And the user should see date '3/11/16 08:35:36 PM' in column 'Date' for row with column 'Id' and value '2' in <tableCaption> table
Examples:
|tableCaption|
|Table with different components in columns and multi selection mode|

Scenario: Select a new date in DatePicker in one of selected rows of MULTI-SELECTION table
Given the user refresh the Example page
When the user selects the item 'Trees and Tables->Table' in a tree
And the user multi-selects row with column 'Id' and value '1' in <tableCaption> table
And the user multi-selects row with column 'Id' and value '2' in <tableCaption> table
And the user input date '4/10/16 05:12:17 PM' into column 'Date' for row with column 'Id' and value '2' in <tableCaption> table
Then the user should see row with column 'Id' and value '1' is selected in <tableCaption> table
And the user should see row with column 'Id' and value '2' is selected in <tableCaption> table
And the user should see date '3/10/16 08:32:56 PM' in column 'Date' for row with column 'Id' and value '1' in <tableCaption> table
And the user should see date '4/10/16 05:12:17 PM' in column 'Date' for row with column 'Id' and value '2' in <tableCaption> table
Examples:
|tableCaption|
|Table with different components in columns and multi selection mode|

Scenario: Unselect a checkbox in selected row of MULTI-SELECTION table
Given the user refresh the Example page
When the user selects the item 'Trees and Tables->Table' in a tree
And the user multi-selects row with column 'Id' and value '1' in <tableCaption> table
And the user unselect checkbox in column 'Active' for row with column 'Id' and value '1' in <tableCaption> table
Then the user should see row with column 'Id' and value '1' is selected in <tableCaption> table
And the user should see unselected checkbox in column 'Active' for row with column 'Id' and value '1' in <tableCaption> table
And the user should see selected checkbox in column 'Active' for row with column 'Id' and value '2' in <tableCaption> table
Examples:
|tableCaption|
|Table with different components in columns and multi selection mode|

Scenario: Unselect a checkbox in one of selected rows of MULTI-SELECTION table
Given the user refresh the Example page
When the user selects the item 'Trees and Tables->Table' in a tree
And the user multi-selects row with column 'Id' and value '1' in <tableCaption> table
And the user multi-selects row with column 'Id' and value '2' in <tableCaption> table
And the user unselect checkbox in column 'Active' for row with column 'Id' and value '2' in <tableCaption> table
Then the user should see row with column 'Id' and value '1' is selected in <tableCaption> table
And the user should see row with column 'Id' and value '2' is selected in <tableCaption> table
And the user should see selected checkbox in column 'Active' for row with column 'Id' and value '1' in <tableCaption> table
And the user should see unselected checkbox in column 'Active' for row with column 'Id' and value '2' in <tableCaption> table
Examples:
|tableCaption|
|Table with different components in columns and multi selection mode|

Scenario: Select a checkbox in selected row of MULTI-SELECTION table
Given the user refresh the Example page
When the user selects the item 'Trees and Tables->Table' in a tree
And the user unselect checkbox in column 'Active' for row with column 'Id' and value '1' in <tableCaption> table
And the user unselect checkbox in column 'Active' for row with column 'Id' and value '2' in <tableCaption> table
And the user multi-selects row with column 'Id' and value '1' in <tableCaption> table
And the user select checkbox in column 'Active' for row with column 'Id' and value '1' in <tableCaption> table
Then the user should see row with column 'Id' and value '1' is selected in <tableCaption> table
And the user should see selected checkbox in column 'Active' for row with column 'Id' and value '1' in <tableCaption> table
And the user should see unselected checkbox in column 'Active' for row with column 'Id' and value '2' in <tableCaption> table
Examples:
|tableCaption|
|Table with different components in columns and multi selection mode|

Scenario: Select a checkbox in one of selected rows of MULTI-SELECTION table
Given the user refresh the Example page
When the user selects the item 'Trees and Tables->Table' in a tree
And the user unselect checkbox in column 'Active' for row with column 'Id' and value '1' in <tableCaption> table
And the user unselect checkbox in column 'Active' for row with column 'Id' and value '2' in <tableCaption> table
And the user multi-selects row with column 'Id' and value '1' in <tableCaption> table
And the user multi-selects row with column 'Id' and value '2' in <tableCaption> table
And the user select checkbox in column 'Active' for row with column 'Id' and value '2' in <tableCaption> table
Then the user should see row with column 'Id' and value '1' is selected in <tableCaption> table
And the user should see row with column 'Id' and value '2' is selected in <tableCaption> table
And the user should see unselected checkbox in column 'Active' for row with column 'Id' and value '1' in <tableCaption> table
And the user should see selected checkbox in column 'Active' for row with column 'Id' and value '2' in <tableCaption> table
Examples:
|tableCaption|
|Table with different components in columns and multi selection mode|

Scenario: Input a text in selected row of MULTI-SELECTION table
Given the user refresh the Example page
When the user selects the item 'Trees and Tables->Table' in a tree
And the user multi-selects row with column 'Id' and value '1' in <tableCaption> table
And the user input text 'New description' into column 'Description' for row with column 'Id' and value '1' in <tableCaption> table
Then the user should see row with column 'Id' and value '1' is selected in <tableCaption> table
And the user should see text 'New description' in column 'Description' for row with column 'Id' and value '1' in <tableCaption> table
And the user should see text 'Description of user2' in column 'Description' for row with column 'Id' and value '2' in <tableCaption> table
Examples:
|tableCaption|
|Table with different components in columns and multi selection mode|

Scenario: Select a text in one of selected rows of MULTI-SELECTION table
Given the user refresh the Example page
When the user selects the item 'Trees and Tables->Table' in a tree
And the user multi-selects row with column 'Id' and value '1' in <tableCaption> table
And the user multi-selects row with column 'Id' and value '2' in <tableCaption> table
And the user input text 'New description' into column 'Description' for row with column 'Id' and value '2' in <tableCaption> table
Then the user should see row with column 'Id' and value '1' is selected in <tableCaption> table
And the user should see row with column 'Id' and value '2' is selected in <tableCaption> table
And the user should see text 'Description of user1' in column 'Description' for row with column 'Id' and value '1' in <tableCaption> table
And the user should see text 'New description' in column 'Description' for row with column 'Id' and value '2' in <tableCaption> table
Examples:
|tableCaption|
|Table with different components in columns and multi selection mode|

Scenario: Multi-select the rows across the current in MULTI-SELECTION table
Meta: @id 1
Given the user refresh the Example page
When the user selects the item 'Trees and Tables->Table' in a tree
And the user multi-selects row with column 'Id' and value '4' in <tableCaption> table
Then the user should see row with column 'Id' and value '4' is selected in <tableCaption> table
When the user multi-selects row with column 'Id' and value '6' in <tableCaption> table
Then the user should see row with column 'Id' and value '4' is selected in <tableCaption> table
And the user should see row with column 'Id' and value '5' is unselected in <tableCaption> table
And the user should see row with column 'Id' and value '6' is selected in <tableCaption> table
And the user should see row with column 'Id' and value '7' is unselected in <tableCaption> table
When the user multi-selects row with column 'Id' and value '2' in <tableCaption> table
Then the user should see row with column 'Id' and value '1' is unselected in <tableCaption> table
And the user should see row with column 'Id' and value '2' is selected in <tableCaption> table
And the user should see row with column 'Id' and value '3' is unselected in <tableCaption> table
And the user should see row with column 'Id' and value '4' is selected in <tableCaption> table
And the user should see row with column 'Id' and value '5' is unselected in <tableCaption> table
And the user should see row with column 'Id' and value '6' is selected in <tableCaption> table
And the user should see row with column 'Id' and value '7' is unselected in <tableCaption> table
Examples:
|tableCaption|
|Table with different components in columns and multi selection mode|

Scenario: Unselect a checkbox in a row from the across selected rows in MULTI-SELECTION table
GivenStories: stories/example/CommonLoginExamplesApp.story#{id:1}
When the user unselect checkbox in column 'Active' for row with column 'Id' and value '4' in <tableCaption> table
Then the user should see row with column 'Id' and value '2' is selected in <tableCaption> table
And the user should see selected checkbox in column 'Active' for row with column 'Id' and value '2' in <tableCaption> table
And the user should see row with column 'Id' and value '4' is selected in <tableCaption> table
And the user should see unselected checkbox in column 'Active' for row with column 'Id' and value '4' in <tableCaption> table
And the user should see row with column 'Id' and value '6' is selected in <tableCaption> table
And the user should see selected checkbox in column 'Active' for row with column 'Id' and value '6' in <tableCaption> table
Examples:
|tableCaption|
|Table with different components in columns and multi selection mode|

Scenario: Select a checkbox in a row from the across selected rows in MULTI-SELECTION table
GivenStories: stories/example/CommonLoginExamplesApp.story#{id:1}
When the user select checkbox in column 'Active' for row with column 'Id' and value '4' in <tableCaption> table
Then the user should see row with column 'Id' and value '2' is selected in <tableCaption> table
And the user should see selected checkbox in column 'Active' for row with column 'Id' and value '2' in <tableCaption> table
And the user should see row with column 'Id' and value '4' is selected in <tableCaption> table
And the user should see selected checkbox in column 'Active' for row with column 'Id' and value '4' in <tableCaption> table
And the user should see row with column 'Id' and value '6' is selected in <tableCaption> table
And the user should see selected checkbox in column 'Active' for row with column 'Id' and value '6' in <tableCaption> table
Examples:
|tableCaption|
|Table with different components in columns and multi selection mode|

Scenario: Select a date in DatePicker in a row from the across selected rows in MULTI-SELECTION table
GivenStories: stories/example/CommonLoginExamplesApp.story#{id:1}
When the user input date '4/10/16 05:12:17 PM' into column 'Date' for row with column 'Id' and value '4' in <tableCaption> table
Then the user should see row with column 'Id' and value '2' is selected in <tableCaption> table
And the user should see date '3/14/16 12:52:38 PM' in column 'Date' for row with column 'Id' and value '2' in <tableCaption> table
And the user should see row with column 'Id' and value '4' is selected in <tableCaption> table
And the user should see date '4/10/16 05:12:17 PM' in column 'Date' for row with column 'Id' and value '4' in <tableCaption> table
And the user should see row with column 'Id' and value '6' is selected in <tableCaption> table
And the user should see date '3/18/16 12:52:38 PM' in column 'Date' for row with column 'Id' and value '6' in <tableCaption> table
Examples:
|tableCaption|
|Table with different components in columns and multi selection mode|

Scenario: Input a text in a row from the across selected rows in MULTI-SELECTION table
GivenStories: stories/example/CommonLoginExamplesApp.story#{id:1}
When the user input text 'New description' into column 'Description' for row with column 'Id' and value '2' in <tableCaption> table
Then the user should see row with column 'Id' and value '2' is selected in <tableCaption> table
And the user should see text 'Description of user2' in column 'Description' for row with column 'Id' and value '2' in <tableCaption> table
And the user should see row with column 'Id' and value '4' is selected in <tableCaption> table
And the user should see text 'New description' in column 'Description' for row with column 'Id' and value '4' in <tableCaption> table
And the user should see row with column 'Id' and value '6' is selected in <tableCaption> table
And the user should see text 'Description of user6' in column 'Description' for row with column 'Id' and value '6' in <tableCaption> table
Examples:
|tableCaption|
|Table with different components in columns and multi selection mode|