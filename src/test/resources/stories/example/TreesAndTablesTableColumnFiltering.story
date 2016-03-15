*-----------------------------------------------------------------------------------------------------------------------
* Tested application: vaadin_example
*
* UI element: Trees and Tables -> Table Column filtering
*
* Author: Maksim Zhelezko
* Created Date: 14.03.2016
*-----------------------------------------------------------------------------------------------------------------------
Meta: @group: Table Column filtering
GivenStories: stories/example/CommonLoginExamplesApp.story

Scenario: Make not visible column 'Name' with TextField filter from the settings wheel
Given the user refresh the Example page
When the user select 'Trees and Tables->Table Column filtering' in tree
And the user makes not visible column 'Name' from the wheel for <tableCaption> table
Then they should not see column 'Name' in <tableCaption> table
And they should not see filter in 'Name' column in <tableCaption> table
And they should see column 'Id' in <tableCaption> table
And they should see filter in 'Id' column in <tableCaption> table
And they should see column 'Date' in <tableCaption> table
And they should see filter in 'Date' column in <tableCaption> table
And they should see rows with column 'Id' and values from '0' to '49' in <tableCaption> table
Examples:
|tableCaption|
|Simple Table showing filtering behaviour|

Scenario: Make visible column 'Name' with TextField filter from the settings wheel
When the user makes visible column 'Name' from the wheel for <tableCaption> table
Then they should see column 'Name' in <tableCaption> table
And they should filter in 'Name' column in <tableCaption> table
And they should see column 'Id' in <tableCaption> table
And they should see filter in 'Id' column in <tableCaption> table
And they should see column 'Date' in <tableCaption> table
And they should see filter in 'Date' column in <tableCaption> table
And they should see rows with column 'Id' and values from '0' to '49' in <tableCaption> table
Examples:
|tableCaption|
|Simple Table showing filtering behaviour|

Scenario: Make not visible column 'Date' with DatePicker filter from the settings wheel
Given the user refresh the Example page
When the user select 'Trees and Tables->Table Column filtering' in tree
And the user makes not visible column 'Date' from the wheel for <tableCaption> table
Then they should not see column 'Date' in <tableCaption> table
And they should not see filter in 'Id' column in <tableCaption> table
And they should see column 'Id' in <tableCaption> table
And they should see filter in 'Id' column in <tableCaption> table
And they should see column 'Name' in <tableCaption> table
And they should see filter in 'Name' column in <tableCaption> table
And they should see rows with column 'Id' and values from '0' to '49' in <tableCaption> table
Examples:
|tableCaption|
|Simple Table showing filtering behaviour|

Scenario: Make visible column 'Date' with DatePicker filter from the settings wheel
When the user makes visible column 'Date' from the wheel for <tableCaption> table
Then they should see column 'Date' in <tableCaption> table
And they should see filter in 'Id' column in <tableCaption> table
And they should see column 'Id' in <tableCaption> table
And they should see filter in 'Id' column in <tableCaption> table
And they should see column 'Name' in <tableCaption> table
And they should see filter in 'Name' column in <tableCaption> table
And they should see rows with column 'Id' and values from '0' to '49' in <tableCaption> table
Examples:
|tableCaption|
|Simple Table showing filtering behaviour|

Scenario: Make not visible all columns with filters from the settings wheel
Given the user refresh the Example page
When the user select 'Trees and Tables->Table Column filtering' in tree
And the user makes not visible column 'Id' from the wheel for <tableCaption> table
Then they should not see column 'Id' in <tableCaption> table
When the user makes not visible column 'Name' from the wheel for <tableCaption> table
Then they should not see column 'Name' in <tableCaption> table
And the user makes not visible column 'Date' from the wheel for <tableCaption> table
Then they should not see column 'Date' in <tableCaption> table
And they should not see filter in 'Id' column in <tableCaption> table
And they should not see filter in 'Name' column in <tableCaption> table
And they should not see filter in 'Date' column in <tableCaption> table
Examples:
|tableCaption|
|Simple Table showing filtering behaviour|

Scenario: Make visible all columns with filters from the settings wheel
When the user makes visible column 'Id' from the wheel for <tableCaption> table
Then they should see column 'Id' in <tableCaption> table
When the user makes visible column 'Name' from the wheel for <tableCaption> table
Then they should see column 'Name' in <tableCaption> table
And the user makes visible column 'Date' from the wheel for <tableCaption> table
Then they should see column 'Date' in <tableCaption> table
And they should see filter in 'Id' column in <tableCaption> table
And they should see filter in 'Name' column in <tableCaption> table
And they should see filter in 'Date' column in <tableCaption> table
And they should see rows with column 'Id' and values from '0' to '49' in <tableCaption> table
Examples:
|tableCaption|
|Simple Table showing filtering behaviour|

Scenario: Make not visible selected column 'Name' with TextField filter from the settings wheel
Given the user refresh the Example page
When the user select 'Trees and Tables->Table Column filtering' in tree
And the user selects row with column 'Id' and value '0' in <tableCaption> table
And the user makes not visible column 'Name' from the wheel for <tableCaption> table
Then they should not see column 'Name' in <tableCaption> table
And they should not see filter in 'Name' column in <tableCaption> table
And they should see column 'Id' in <tableCaption> table
And they should see filter in 'Id' column in <tableCaption> table
And they should see column 'Date' in <tableCaption> table
And they should see filter in 'Date' column in <tableCaption> table
And they should see row with column 'Id' and value '0' is selected in <tableCaption> table
Examples:
|tableCaption|
|Simple Table showing filtering behaviour|

Scenario: Make visible selected column 'Name' with TextField filter from the settings wheel
When the user selects row with column 'Id' and value '1' in <tableCaption> table
And the user makes visible column 'Name' from the wheel for <tableCaption> table
Then they should see column 'Name' in <tableCaption> table
And they should filter in 'Name' column in <tableCaption> table
And they should see column 'Id' in <tableCaption> table
And they should see filter in 'Id' column in <tableCaption> table
And they should see column 'Date' in <tableCaption> table
And they should see filter in 'Date' column in <tableCaption> table
And they should see row with column 'Id' and value '1' is selected in <tableCaption> table
Examples:
|tableCaption|
|Simple Table showing filtering behaviour|

Scenario: Make not visible selected column 'Date' with DatePicker filter from the settings wheel
Given the user refresh the Example page
When the user select 'Trees and Tables->Table Column filtering' in tree
And the user selects row with column 'Id' and value '0' in <tableCaption> table
And the user makes not visible column 'Date' from the wheel for <tableCaption> table
Then they should not see column 'Date' in <tableCaption> table
And they should not see filter in 'Id' column in <tableCaption> table
And they should see column 'Id' in <tableCaption> table
And they should see filter in 'Id' column in <tableCaption> table
And they should see column 'Name' in <tableCaption> table
And they should see filter in 'Name' column in <tableCaption> table
And they should see row with column 'Id' and value '0' is selected in <tableCaption> table
Examples:
|tableCaption|
|Simple Table showing filtering behaviour|

Scenario: Make visible selected column 'Date' with DatePicker filter from the settings wheel
And the user selects row with column 'Id' and value '1' in <tableCaption> table
When the user makes visible column 'Date' from the wheel for <tableCaption> table
Then they should see column 'Date' in <tableCaption> table
And they should see filter in 'Id' column in <tableCaption> table
And they should see column 'Id' in <tableCaption> table
And they should see filter in 'Id' column in <tableCaption> table
And they should see column 'Name' in <tableCaption> table
And they should see filter in 'Name' column in <tableCaption> table
And they should see row with column 'Id' and value '1' is selected in <tableCaption> table
Examples:
|tableCaption|
|Simple Table showing filtering behaviour|

Scenario: Make not visible and then visible all selected columns with filters from the settings wheel
Given the user refresh the Example page
When the user select 'Trees and Tables->Table Column filtering' in tree
And the user selects row with column 'Id' and value '0' in <tableCaption> table
And the user makes not visible column 'Id' from the wheel for <tableCaption> table
Then they should not see column 'Id' in <tableCaption> table
When the user makes not visible column 'Name' from the wheel for <tableCaption> table
Then they should not see column 'Name' in <tableCaption> table
And the user makes not visible column 'Date' from the wheel for <tableCaption> table
Then they should not see column 'Date' in <tableCaption> table
And they should not see filter in 'Id' column in <tableCaption> table
And they should not see filter in 'Name' column in <tableCaption> table
And they should not see filter in 'Date' column in <tableCaption> table
When the user makes visible column 'Id' from the wheel for <tableCaption> table
Then they should see column 'Id' in <tableCaption> table
When the user makes visible column 'Name' from the wheel for <tableCaption> table
Then they should see column 'Name' in <tableCaption> table
And the user makes visible column 'Date' from the wheel for <tableCaption> table
Then they should see column 'Date' in <tableCaption> table
And they should see filter in 'Id' column in <tableCaption> table
And they should see filter in 'Name' column in <tableCaption> table
And they should see filter in 'Date' column in <tableCaption> table
And they should see rows with column 'Id' and values from '0' to '49' in <tableCaption> table
Examples:
|tableCaption|
|Simple Table showing filtering behaviour|

Scenario: Fill 'Name' column filter for unselected row
Given the user refresh the Example page
When the user select 'Trees and Tables->Table Column filtering' in tree
And the user input text 'user0' into 'Name' filter
Then they should see rows with column 'Id' and values from '0' to '0' in <tableCaption> table
And they should see label 'Text' contains 'ALL' text
Examples:
|tableCaption|
|Simple Table showing filtering behaviour|

Scenario: Empty 'Name' column filter for unselected row
When the user make empty 'Name' filter
Then they should see rows with column 'Id' and values from '0' to '49' in <tableCaption> table
And they should see label 'Text' contains 'ALL' text
Examples:
|tableCaption|
|Simple Table showing filtering behaviour|

Scenario: Fill 'Name' column filter for selected row
Given the user refresh the Example page
When the user select 'Trees and Tables->Table Column filtering' in tree
And the user selects row with column 'Id' and value '1' in <tableCaption> table
And the user input text 'user1' into 'Name' filter
Then they should see rows with column 'Id' and values from '1' to '1' in <tableCaption> table
And they should see row with column 'Id' and value '1' is selected in <tableCaption> table
And they should see label 'Text' contains 'user1' text
Examples:
|tableCaption|
|Simple Table showing filtering behaviour|

Scenario: Empty 'Name' column filter for selected row
When the user make empty 'Name' filter
Then they should see rows with column 'Id' and values from '0' to '49' in <tableCaption> table
And they should see row with column 'Id' and value '1' is selected in <tableCaption> table
And they should see label 'Text' contains 'user1' text
Examples:
|tableCaption|
|Simple Table showing filtering behaviour|

Scenario: Fill 'Date' (From) column filter for unselected row
Given the user refresh the Example page
When the user select 'Trees and Tables->Table Column filtering' in tree
And the user select date tomorrow after in 'Date' filter
Then they should see rows with column 'Id' and values from '1' to '49' in <tableCaption> table
And they should see label 'Text' contains 'ALL' text
Examples:
|tableCaption|
|Simple Table showing filtering behaviour|

Scenario: Empty 'Date' (From) column filter for unselected row
When the user clear 'Date' filter
Then they should see rows with column 'Id' and values from '0' to '49' in <tableCaption> table
And they should see label 'Text' contains 'ALL' text
Examples:
|tableCaption|
|Simple Table showing filtering behaviour|

Scenario: Fill 'Date' (From) column filter for selected row
Given the user refresh the Example page
When the user select 'Trees and Tables->Table Column filtering' in tree
And the user selects row with column 'Id' and value '1' in <tableCaption> table
And the user select date tomorrow after in 'Date' filter
Then they should see rows with column 'Id' and values from '1' to '49' in <tableCaption> table
And they should see row with column 'Id' and value '1' is selected in <tableCaption> table
And they should see label 'Text' contains 'ALL' text
Examples:
|tableCaption|
|Simple Table showing filtering behaviour|

Scenario: Empty 'Date' (From) column filter for selected row
When the user clear 'Date' filter
Then they should see rows with column 'Id' and values from '0' to '49' in <tableCaption> table
And they should see row with column 'Id' and value '1' is selected in <tableCaption> table
And they should see label 'Text' contains 'ALL' text
Examples:
|tableCaption|
|Simple Table showing filtering behaviour|

Scenario: Fill 'Date' (To) column filter for unselected row
Given the user refresh the Example page
When the user select 'Trees and Tables->Table Column filtering' in tree
And the user select date tomorrow after in 'Date' filter
And they should see label 'Text' contains 'ALL' text
Examples:
|tableCaption|
|Simple Table showing filtering behaviour|

Scenario: Empty 'Date' (To) column filter for unselected row
When the user clear 'Date' filter
Then they should see rows with column 'Id' and values from '0' to '1' in <tableCaption> table
And they should see label 'Text' contains 'ALL' text
Examples:
|tableCaption|
|Simple Table showing filtering behaviour|

Scenario: Fill 'Date' (To) column filter for selected row
Given the user refresh the Example page
When the user select 'Trees and Tables->Table Column filtering' in tree
And the user selects row with column 'Id' and value '1' in <tableCaption> table
And the user select date tomorrow after in 'Date' filter
Then they should see rows with column 'Id' and values from '0' to '1' in <tableCaption> table
And they should see row with column 'Id' and value '1' is selected in <tableCaption> table
And they should see label 'Text' contains 'user1' text
Examples:
|tableCaption|
|Simple Table showing filtering behaviour|

Scenario: Empty 'Date' (To) column filter for selected row
When the user clear 'Date' filter
Then they should see rows with column 'Id' and values from '0' to '49' in <tableCaption> table
And they should see row with column 'Id' and value '1' is selected in <tableCaption> table
And they should see label 'Text' contains 'user1' text
Examples:
|tableCaption|
|Simple Table showing filtering behaviour|

Scenario: Fill 'Date' (From and To) column filter for selected row

Scenario: Empty 'Date' (From and To) column filter for selected row

Scenario: Fill 'Date' (From and To) column filter for unselected row

Scenario: Empty 'Date' (From and To) column filter for unselected row

Scenario: Fill all filters