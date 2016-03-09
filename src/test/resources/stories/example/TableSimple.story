Narrative:
*-----------------------------------------------------------------------------------------------------------------------
* Tested application: vaadin_example
*
* UI element: Trees and Tables -> Table (Simple)
*-----------------------------------------------------------------------------------------------------------------------

Meta:
@author Maksim Zhelezko
@date: 04.03.2016

Scenario: Login to system
Given the user is on the Example page
When the user login in system

Scenario: Check the checkbox with caption 'id' only for SIMPLE table
When the user select 'Trees and Tables->Table' in tree
And the user select checkbox with caption 'id'
Then they should see column 'Id' in table
And they should not see column 'Name' in table

Scenario: Uncheck the checkbox with caption 'id' only for SIMPLE table
When the user deselect checkbox with caption 'id'
Then they should not see column 'Id' in table
And they should not see column 'Name' in table

Scenario: Check the checkbox with caption 'name' only for SIMPLE table
When the user select checkbox with caption 'name'
Then they should see column 'Name' in table
And they should not see column 'Id' in table

Scenario: Uncheck the checkbox with caption 'name' only for SIMPLE table
When the user deselect checkbox with caption 'name'
Then they should not see column 'Name' in table
And they should not see column 'Id' in table

Scenario: Check the checkbox with caption 'id' and 'name' for SIMPLE table
When the user select checkbox with caption 'id'
And the user select checkbox with caption 'name'
Then they should see column 'Id' in table
And they should see column 'Name' in table

Scenario: Uncheck the checkbox with caption 'id' and 'name' for SIMPLE table
When the user deselect checkbox with caption 'id'
And the user deselect checkbox with caption 'name'
Then they should not see column 'Id' in table
And they should not see column 'Name' in table

Scenario: Make visible column 'id' only from the settings wheel for SIMPLE table
Given the user refresh the Example page
When the user select 'Trees and Tables->Table' in tree
And the user makes visible column 'Id' from the wheel for 'simple' table
Then they should see column 'Id' in 'simple' table
And they should not see column 'Name' in 'simple' table
And they should see checked 'Id' item in the wheel in 'simple' table
And they should see unchecked 'Name' item in the wheel in 'simple' table

Scenario: Make not visible columns 'id' and 'name' from the settings wheel for SIMPLE table
When the user makes not visible column 'Id' from the wheel for 'simple' table
Then they should not see column 'Id' in 'simple' table
And they should not see column 'Name' in 'simple' table
And they should see unchecked 'Id' item in the wheel in 'simple' table
And they should see unchecked 'Name' item in the wheel in 'simple' table

Scenario: Make visible column 'name' only from the settings wheel for SIMPLE table
When the user makes visible column 'Name' from the wheel for 'simple' table
Then they should see column 'Name' in 'simple' table
And they should not see column 'Id' in 'simple' table
And they should see unchecked 'Id' item in the wheel in 'simple' table
And they should see checked 'Name' item in the wheel in 'simple' table

Scenario: Make visible columns 'id' and 'name' from the settings wheel for SIMPLE table
When the user makes visible column 'Id' from the wheel for 'simple' table
And the user makes visible column 'Name' from the wheel for 'simple' table
Then they should see column 'Id' in 'simple' table
And they should see column 'Name' in 'simple' table
And they should see checked 'Id' item in the wheel in 'simple' table
And they should see checked 'Name' item in the wheel in 'simple' table

Scenario: Make not visible columns 'id' and 'name' from the settings wheel for SIMPLE table
When the user makes not visible column 'Id' from the wheel for 'simple' table
And  the user makes not visible column 'Name' from the wheel for 'simple' table
Then they should not see column 'Id' in 'simple' table
And they should not see column 'Name' in 'simple' table
And they should see not checked 'Id' item in the wheel in 'simple' table
And they should see not checked 'Name' item in the wheel in 'simple' table

Scenario: Select the first column in SIMPLE table
Given the user refresh the Example page
When the user select 'Trees and Tables->Table' in tree
And the user selects row with column 'Id' and value '0' in 'simple' table
Then they should see row with column 'Id' and value '0' is selected in 'simple' table
And they should see label 'name' contains 'user1' text

Scenario: Deselect the first column in SIMPLE table
When the user deselects row with column 'Id' and value '0' in 'simple' table
Then they should see row with column 'Id' and value '0' is selected in 'simple' table
And they should see label 'name' contains 'ALL' text

Scenario: Select the last column in SIMPLE table
Given the user refresh the Example page
When the user select 'Trees and Tables->Table' in tree
And the user scrolls down to the end in 'simple' table
And the user selects row with column 'Id' and value '49' in 'simple' table
Then they should see row with column 'Id' and value '49' is selected  in 'simple' table
And they should see label 'name' contains 'user49' text

Scenario: Deselect the last column in SIMPLE table
When the user scrolls up to the beginning in 'simple' table
And the user scrolls down to the end in 'simple' table
And the user deselects row with column 'Id' and value '49' in 'simple' table
Then they should see row with column 'Id' and value '49' is selected in 'simple' table
And they should see label 'name' contains 'ALL' text

Scenario: Re-select a column at the beginning in SIMPLE table
Given the user refresh the Example page
When the user select 'Trees and Tables->Table' in tree
And the user selects row with column 'Id' and value '1' in 'simple' table
And the user deselects row with column 'Id' and value '1' in 'simple' table
Then they should see row with column 'Id' and value '1' is deselected in 'simple' table
And they should see label 'name' contains 'ALL' text
When the user selects row with column 'Id' and value '1' in 'simple' table
Then they should see row with column 'Id' and value '1' is selected in 'simple' table
And they should see label 'name' contains 'user1' text

Scenario: Re-select a column at the end in SIMPLE table
Given the user refresh the Example page
When the user select 'Trees and Tables->Table' in tree
And the user scrolls down to the end in 'simple' table
And the user selects row with column 'Id' and value '49' in 'simple' table
And the user deselects row with column 'Id' and value '49' in 'simple' table
Then they should see row with column 'Id' and value '49' is deselected in 'simple' table
And they should see label 'name' contains 'ALL' text
And  they should see 'simple' table in not scrolled to the beggining
When the user selects row with column 'Id' and value '49' in 'simple' table
Then they should see row with column 'Id' and value '49' is selected in 'simple' table
And they should see label 'name' contains 'user49' text
And they should see 'simple' table in not scrolled to the beggining

Scenario: Select another column at the beginning in SIMPLE table
Given the user refresh the Example page
When the user select 'Trees and Tables->Table' in tree
And the user selects row with column 'Id' and value '1' in 'simple' table
And the user selects row with column 'Id' and value '2' in 'simple' table
Then they should see row with column 'Id' and value '1' is deselected in 'simple' table
And they should see row with column 'Id' and value '2' is selected in 'simple' table
And they should see label 'name' contains 'user2' text

Scenario: Select another column at the end in SIMPLE table
Given the user refresh the Example page
When the user select 'Trees and Tables->Table' in tree
And the user scrolls down to the end in 'simple' table
And the user selects row with column 'Id' and value '49' in 'simple' table
And the user selects row with column 'Id' and value '48' in 'simple' table
Then they should see row with column 'Id' and value '49' is deselected in 'simple' table
And they should see row with column 'Id' and value '48' is selected in 'simple' table
And they should see label 'name' contains 'user48' text

Scenario: Select another column in SIMPLE table
Given the user refresh the Example page
When the user select 'Trees and Tables->Table' in tree
And the user scrolls down to the end in 'simple' table
And the user selects row with column 'Id' and value '48' in 'simple' table
And the user scrolls up to the beginning in 'simple' table
And the user selects row with column 'Id' and value '1' in 'simple' table
Then they should see row with column 'Id' and value '1' is selected in 'simple' table
And they should see label 'name' contains 'user1' text
When the user scrolls down to the end in 'simple' table
Then they should see row with column 'Id' and value '48' is deselected in 'simple' table

Scenario: Selection is not disabling for a row when another column is visible in SIMPLE table
Given the user refresh the Example page
When the user select 'Trees and Tables->Table' in tree
And the user selects row with column 'Id' and value '1'' in 'simple' table
And the user makes visible column 'Name' from the wheel for 'simple' table
Then they should see row with column 'Id' and value '1' is selected in 'simple' table
And they should see label 'name' contains 'user1' text

Scenario: Selection is not disabling for a row when another column is visible in SIMPLE table
When the user makes not visible column 'Name' from the wheel for 'simple' table
Then they should see row with column 'Id' and value '1' is selected in 'simple' table
And they should see label 'name' contains 'user1' text

Scenario: Selection is not disabling when all columns are not visible in SIMPLE table
When the user makes not visible column 'Id' from the wheel for 'simple' table
Then they should see row with column 'Name' and value 'user1' is selected in 'simple' table
When the user makes not visible column 'Name' from the wheel for 'simple' table
And the user makes visible column 'Id' from the wheel for 'simple' table
Then they should see row with column 'Id' and value '1' is selected in 'simple' table

Scenario: Select 'NONE' item from 'RowHeadeMode' Combo-Box in SIMPLE table
Given the user refresh the Example page
When the user select 'Trees and Tables->Table' in tree
And the user select checkbox with caption 'id'
And the user select checkbox with caption 'name'
And the user selects row with column 'Id' and value '1' in 'simple' table
And the user selects 'NONE' value from combo-box 'Select RowHeaderMode'
Then they should see row with column 'Id' and value '1' is selected in 'simple' table
And they should see label 'name' contains 'user1' text

Scenario: Select 'CHECKBOX' item from 'RowHeadeMode' Combo-Box in SIMPLE table
Given the user refresh the Example page
When the user select 'Trees and Tables->Table' in tree
And the user select checkbox with caption 'id'
And the user select checkbox with caption 'name'
And the user selects row with column 'Id' and value '1' in 'simple' table
And the user selects 'CHECKBOX' value from combo-box 'Select RowHeaderMode'
Then they should see row with column 'Id' and value '1' is selected in 'simple' table
And they should see checkbox for row with column 'Id' and value '1' is selected in 'simple' table
And they should see label 'name' contains 'user1' text

Scenario: Unselect item by clicking on checkbox in 'CHECKBOX' mode in SIMPLE table
When the user unselected checkbox for row with column 'Id' and value '1' is selected in 'simple' table
Then they should see row with column 'Id' and value '1' is unselected in 'simple' table
And  they should see checkbox for row with column 'Id' and value '1' is unselected in 'simple' table
And they should see label 'name' contains 'ALL' text

Scenario: Select item by clicking on checkbox in 'CHECKBOX' mode in SIMPLE table
Given the user refresh the Example page
When the user select 'Trees and Tables->Table' in tree
And the user selects 'CHECKBOX' value from combo-box 'Select RowHeaderMode'
And the user selected checkbox for row with column 'Id' and value '1' is selected in 'simple' table
Then they should see row with column 'Id' and value '1' is selected in 'simple' table
And they should see checkbox for row with column 'Id' and value '1' is selected in 'simple' table
And they should see label 'name' contains 'user1' text

Scenario: Re-select item by clicking on checkbox in 'CHECKBOX' mode in SIMPLE table
When the user unselected checkbox for row with column 'Id' and value '1' is selected in 'simple' table
And the user selected checkbox for row with column 'Id' and value '1' is selected in 'simple' table
Then they should see row with column 'Id' and value '1' is selected in 'simple' table
And they should see checkbox for row with column 'Id' and value '1' is selected in 'simple' table
And they should see label 'name' contains 'user1' text

Scenario: Select another item by clicking on checkbox in 'CHECKBOX' mode in SIMPLE table
When the user selected checkbox for row with column 'Id' and value '2' is selected in 'simple' table
Then they should see row with column 'Id' and value '2' is selected in 'simple' table
And they should see row with column 'Id' and value '1' is unselected in 'simple' table
And they should see checkbox for row with column 'Id' and value '2' is selected in 'simple' table
And they should see checkbox for row with column 'Id' and value '1' is unselected in 'simple' table
And they should see label 'name' contains 'user2' text

Scenario: Select 'ROW_NUMBER' item from 'RowHeadeMode' Combo-Box in SIMPLE table
Given the user refresh the Example page
When the user select 'Trees and Tables->Table' in tree
And the user select checkbox with caption 'id'
And the user select checkbox with caption 'name'
And the user selects row with column 'Id' and value '1' in 'simple' table
And the user selects 'ROW_NUMBER' value from combo-box 'Select RowHeaderMode'
Then they should see row with column 'Id' and value '1' is selected in 'simple' table
And they should see label 'name' contains 'user1' text

Scenario: Select 'CAPTION' item from 'RowHeadeMode' Combo-Box in SIMPLE table
Given the user refresh the Example page
When the user select 'Trees and Tables->Table' in tree
And the user select checkbox with caption 'id'
And the user select checkbox with caption 'name'
And the user selects row with column 'Id' and value '1' in 'simple' table
And the user selects 'CAPTION' value from combo-box 'Select RowHeaderMode'
Then they should see row with column 'Id' and value '1' is selected in 'simple' table
And they should see label 'name' contains 'user1' text