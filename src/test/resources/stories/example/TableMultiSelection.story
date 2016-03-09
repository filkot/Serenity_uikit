Scenario: Login in system
Given the user is on the Example page
When the user login in system

Scenario: Make not visible all columns except column 'id' from the settings wheel for MULTI-SELECTION table
Given the user is on the Example page
When the user login in system
And the user select 'Trees and Tables->Table' in tree
And the user makes not visible column 'Description' from the wheel for 'multi-selection' table
And the user makes not visible column 'Active' from the wheel for 'multi-selection' table
And the user makes not visible column 'Date' from the wheel for 'multi-selection' table
And the user makes not visible column 'Password' from the wheel for 'multi-selection' table
And the user makes not visible column 'Name' from the wheel for 'multi-selection' table
Then they should see column 'Id' in 'multi-selection' table
And they should not see column 'Name' in 'multi-selection' table
And they should not see column 'Password' in 'multi-selection' table
And they should not see column 'Date' in 'multi-selection' table
And they should not see column 'Active' in 'multi-selection' table
And they should not see column 'Description' in 'multi-selection' table
And they should see checked 'Id' item in the wheel in 'multi-selection' table
And they should see unchecked 'Name' item in the wheel in 'multi-selection' table
And they should see unchecked 'Password' item in the wheel in 'multi-selection' table
And they should see unchecked 'Date' item in the wheel in 'multi-selection' table
And they should see unchecked 'Active' item in the wheel in 'multi-selection' table
And they should see unchecked 'Description' item in the wheel in 'multi-selection' table

Scenario: Make not visible all columns from the settings wheel for MULTI-SELECTION table
When the user makes not visible column 'Id' from the wheel for 'multi-selection' table
Then they should not see column 'Id' in 'multi-selection' table
And they should not see column 'Name' in 'multi-selection' table
And they should not see column 'Password' in 'multi-selection' table
And they should not see column 'Date' in 'multi-selection' table
And they should not see column 'Active' in 'multi-selection' table
And they should not see column 'Description' in 'multi-selection' table
And they should see unchecked 'Id' item in the wheel in 'multi-selection' table
And they should see unchecked 'Name' item in the wheel in 'multi-selection' table
And they should see unchecked 'Password' item in the wheel in 'multi-selection' table
And they should see unchecked 'Date' item in the wheel in 'multi-selection' table
And they should see unchecked 'Active' item in the wheel in 'multi-selection' table
And they should see unchecked 'Description' item in the wheel in 'multi-selection' table

Scenario: Make visible all columns except column 'Description' from the settings wheel for MULTI-SELECTION table
When the user makes visible column 'Id' from the wheel for 'multi-selection' table
And the user makes visible column 'Name' from the wheel for 'multi-selection' table
And the user makes visible column 'Password' from the wheel for 'multi-selection' table
And the user makes visible column 'Date' from the wheel for 'multi-selection' table
And the user makes visible column 'Active' from the wheel for 'multi-selection' table
Then they should see column 'Id' in 'multi-selection' table
And they should see column 'Name' in 'multi-selection' table
And they should see column 'Password' in 'multi-selection' table
And they should see column 'Date' in 'multi-selection' table
And they should see column 'Active' in 'multi-selection' table
And they should not see column 'Description' in 'multi-selection' table
And they should see checked 'Id' item in the wheel in 'multi-selection' table
And they should see checked 'Name' item in the wheel in 'multi-selection' table
And they should see checked 'Password' item in the wheel in 'multi-selection' table
And they should see checked 'Date' item in the wheel in 'multi-selection' table
And they should see checked 'Active' item in the wheel in 'multi-selection' table
And they should see unchecked 'Description' item in the wheel in 'multi-selection' table

Scenario: Make visible all columns from the settings wheel for MULTI-SELECTION table
When the user makes visible column 'Id' from the wheel for 'multi-selection' table
And the user makes visible column 'Name' from the wheel for 'multi-selection' table
And the user makes visible column 'Password' from the wheel for 'multi-selection' table
And the user makes visible column 'Date' from the wheel for 'multi-selection' table
And the user makes visible column 'Active' from the wheel for 'multi-selection' table
And the user makes visible column 'Description' from the wheel for 'multi-selection' table
Then they should see column 'Id' in 'multi-selection' table
And they should see column 'Name' in 'multi-selection' table
And they should see column 'Password' in 'multi-selection' table
And they should see column 'Date' in 'multi-selection' table
And they should see column 'Active' in 'multi-selection' table
And they should see column 'Description' in 'multi-selection' table
And they should see checked 'Id' item in the wheel in 'multi-selection' table
And they should see checked 'Name' item in the wheel in 'multi-selection' table
And they should see checked 'Password' item in the wheel in 'multi-selection' table
And they should see checked 'Date' item in the wheel in 'multi-selection' table
And they should see checked 'Active' item in the wheel in 'multi-selection' table
And they should see checked 'Description' item in the wheel in 'multi-selection' table

Scenario: Select the first column in MULTI-SELECTION table
Given the user refresh the Example page
When the user select 'Trees and Tables->Table' in tree
And the user selects row with column 'Id' and value '0' in 'multi-selection' table
Then they should see row with column 'Id' and value '0' is selected in 'multi-selection' table

Scenario: Deselect the first column in MULTI-SELECTION table
When the user deselects row with column 'Id' and value '0' in 'multi-selection' table
Then they should see row with column 'Id' and value '0' is selected in 'multi-selection' table

Scenario: Select the last column in MULTI-SELECTION table
Given the user refresh the Example page
When the user select 'Trees and Tables->Table' in tree
And the user scrolls down to the end in 'multi-selection' table
And the user selects row with column 'Id' and value '49' in 'multi-selection' table
Then they should see row with column 'Id' and value '49' is selected in 'multi-selection' table

Scenario: Deselect the last column in MULTI-SELECTION table
When the user scrolls up to the beginning in 'multi-selection' table
And the user scrolls down to the end in 'multi-selection' table
And the user deselects row with column 'Id' and value '49' in 'multi-selection' table
Then they should see row with column 'Id' and value '49' is selected in 'multi-selection' table