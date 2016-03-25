*-----------------------------------------------------------------------------------------------------------------------
* Tested application: vaadin_example
*
* UI element: Trees and Tables -> Table Column filtering
*
* Author: Maksim Zhelezko
* Date: 14.03.2016
*-----------------------------------------------------------------------------------------------------------------------
Meta: @group: TableColumnFiltering
GivenStories: stories/example/CommonLoginExamplesApp.story

Scenario: Make not visible column 'Name' with TextField filter from the settings wheel
When the user selects the item 'Trees and Tables->Table Column filtering' in a tree
And the user makes not visible column 'Name' from the wheel for <tableCaption> table
Then the user should not see column 'Name' in <tableCaption> table
And the user should not see filter in 'Name' column in <tableCaption> table
And the user should see column 'Id' in <tableCaption> table
And the user should see filter in 'Id' column in <tableCaption> table
And the user should see column 'Date' in <tableCaption> table
And the user should see filter in 'Date' column in <tableCaption> table
And the user should see rows with column 'Id' and values from '0' to '49' in <tableCaption> table
Examples:
|tableCaption|
|Simple Table showing filtering behaviour|

Scenario: Make visible column 'Name' with TextField filter from the settings wheel
Given the user refresh the Example page
When the user makes visible column 'Name' from the wheel for <tableCaption> table
Then the user should see column 'Name' in <tableCaption> table
And the user should filter in 'Name' column in <tableCaption> table
And the user should see column 'Id' in <tableCaption> table
And the user should see filter in 'Id' column in <tableCaption> table
And the user should see column 'Date' in <tableCaption> table
And the user should see filter in 'Date' column in <tableCaption> table
And the user should see rows with column 'Id' and values from '0' to '49' in <tableCaption> table
Examples:
|tableCaption|
|Simple Table showing filtering behaviour|

Scenario: Make not visible column 'Date' with DatePicker filter from the settings wheel
Given the user refresh the Example page
When the user selects the item 'Trees and Tables->Table Column filtering' in a tree
And the user makes not visible column 'Date' from the wheel for <tableCaption> table
Then the user should not see column 'Date' in <tableCaption> table
And the user should not see filter in 'Id' column in <tableCaption> table
And the user should see column 'Id' in <tableCaption> table
And the user should see filter in 'Id' column in <tableCaption> table
And the user should see column 'Name' in <tableCaption> table
And the user should see filter in 'Name' column in <tableCaption> table
And the user should see rows with column 'Id' and values from '0' to '49' in <tableCaption> table
Examples:
|tableCaption|
|Simple Table showing filtering behaviour|

Scenario: Make visible column 'Date' with DatePicker filter from the settings wheel
When the user makes visible column 'Date' from the wheel for <tableCaption> table
Then the user should see column 'Date' in <tableCaption> table
And the user should see filter in 'Id' column in <tableCaption> table
And the user should see column 'Id' in <tableCaption> table
And the user should see filter in 'Id' column in <tableCaption> table
And the user should see column 'Name' in <tableCaption> table
And the user should see filter in 'Name' column in <tableCaption> table
And the user should see rows with column 'Id' and values from '0' to '49' in <tableCaption> table
Examples:
|tableCaption|
|Simple Table showing filtering behaviour|

Scenario: Make not visible all columns with filters from the settings wheel
Given the user refresh the Example page
When the user selects the item 'Trees and Tables->Table Column filtering' in a tree
And the user makes not visible column 'Id' from the wheel for <tableCaption> table
Then the user should not see column 'Id' in <tableCaption> table
When the user makes not visible column 'Name' from the wheel for <tableCaption> table
Then the user should not see column 'Name' in <tableCaption> table
And the user makes not visible column 'Date' from the wheel for <tableCaption> table
Then the user should not see column 'Date' in <tableCaption> table
And the user should not see filter in 'Id' column in <tableCaption> table
And the user should not see filter in 'Name' column in <tableCaption> table
And the user should not see filter in 'Date' column in <tableCaption> table
Examples:
|tableCaption|
|Simple Table showing filtering behaviour|

Scenario: Make visible all columns with filters from the settings wheel
When the user makes visible column 'Id' from the wheel for <tableCaption> table
Then the user should see column 'Id' in <tableCaption> table
When the user makes visible column 'Name' from the wheel for <tableCaption> table
Then the user should see column 'Name' in <tableCaption> table
And the user makes visible column 'Date' from the wheel for <tableCaption> table
Then the user should see column 'Date' in <tableCaption> table
And the user should see filter in 'Id' column in <tableCaption> table
And the user should see filter in 'Name' column in <tableCaption> table
And the user should see filter in 'Date' column in <tableCaption> table
And the user should see rows with column 'Id' and values from '0' to '49' in <tableCaption> table
Examples:
|tableCaption|
|Simple Table showing filtering behaviour|

Scenario: Make not visible selected column 'Name' with TextField filter from the settings wheel
Given the user refresh the Example page
When the user selects the item 'Trees and Tables->Table Column filtering' in a tree
And the user selects row with column 'Id' and value '0' in <tableCaption> table
And the user makes not visible column 'Name' from the wheel for <tableCaption> table
Then the user should not see column 'Name' in <tableCaption> table
And the user should not see filter in 'Name' column in <tableCaption> table
And the user should see column 'Id' in <tableCaption> table
And the user should see filter in 'Id' column in <tableCaption> table
And the user should see column 'Date' in <tableCaption> table
And the user should see filter in 'Date' column in <tableCaption> table
And the user should see row with column 'Id' and value '0' is selected in <tableCaption> table
Examples:
|tableCaption|
|Simple Table showing filtering behaviour|

Scenario: Make visible selected column 'Name' with TextField filter from the settings wheel
When the user selects row with column 'Id' and value '1' in <tableCaption> table
And the user makes visible column 'Name' from the wheel for <tableCaption> table
Then the user should see column 'Name' in <tableCaption> table
And the user should filter in 'Name' column in <tableCaption> table
And the user should see column 'Id' in <tableCaption> table
And the user should see filter in 'Id' column in <tableCaption> table
And the user should see column 'Date' in <tableCaption> table
And the user should see filter in 'Date' column in <tableCaption> table
And the user should see row with column 'Id' and value '1' is selected in <tableCaption> table
Examples:
|tableCaption|
|Simple Table showing filtering behaviour|

Scenario: Make not visible selected column 'Date' with DatePicker filter from the settings wheel
Given the user refresh the Example page
When the user selects the item 'Trees and Tables->Table Column filtering' in a tree
And the user selects row with column 'Id' and value '0' in <tableCaption> table
And the user makes not visible column 'Date' from the wheel for <tableCaption> table
Then the user should not see column 'Date' in <tableCaption> table
And the user should not see filter in 'Id' column in <tableCaption> table
And the user should see column 'Id' in <tableCaption> table
And the user should see filter in 'Id' column in <tableCaption> table
And the user should see column 'Name' in <tableCaption> table
And the user should see filter in 'Name' column in <tableCaption> table
And the user should see row with column 'Id' and value '0' is selected in <tableCaption> table
Examples:
|tableCaption|
|Simple Table showing filtering behaviour|

Scenario: Make visible selected column 'Date' with DatePicker filter from the settings wheel
And the user selects row with column 'Id' and value '1' in <tableCaption> table
When the user makes visible column 'Date' from the wheel for <tableCaption> table
Then the user should see column 'Date' in <tableCaption> table
And the user should see filter in 'Id' column in <tableCaption> table
And the user should see column 'Id' in <tableCaption> table
And the user should see filter in 'Id' column in <tableCaption> table
And the user should see column 'Name' in <tableCaption> table
And the user should see filter in 'Name' column in <tableCaption> table
And the user should see row with column 'Id' and value '1' is selected in <tableCaption> table
Examples:
|tableCaption|
|Simple Table showing filtering behaviour|

Scenario: Make not visible and then visible all selected columns with filters from the settings wheel
Given the user refresh the Example page
When the user selects the item 'Trees and Tables->Table Column filtering' in a tree
And the user selects row with column 'Id' and value '0' in <tableCaption> table
And the user makes not visible column 'Id' from the wheel for <tableCaption> table
Then the user should not see column 'Id' in <tableCaption> table
When the user makes not visible column 'Name' from the wheel for <tableCaption> table
Then the user should not see column 'Name' in <tableCaption> table
And the user makes not visible column 'Date' from the wheel for <tableCaption> table
Then the user should not see column 'Date' in <tableCaption> table
And the user should not see filter in 'Id' column in <tableCaption> table
And the user should not see filter in 'Name' column in <tableCaption> table
And the user should not see filter in 'Date' column in <tableCaption> table
When the user makes visible column 'Id' from the wheel for <tableCaption> table
Then the user should see column 'Id' in <tableCaption> table
When the user makes visible column 'Name' from the wheel for <tableCaption> table
Then the user should see column 'Name' in <tableCaption> table
And the user makes visible column 'Date' from the wheel for <tableCaption> table
Then the user should see column 'Date' in <tableCaption> table
And the user should see filter in 'Id' column in <tableCaption> table
And the user should see filter in 'Name' column in <tableCaption> table
And the user should see filter in 'Date' column in <tableCaption> table
And the user should see rows with column 'Id' and values from '0' to '49' in <tableCaption> table
Examples:
|tableCaption|
|Simple Table showing filtering behaviour|

Scenario: Fill 'Name' column filter for unselected row
Given the user refresh the Example page
When the user selects the item 'Trees and Tables->Table Column filtering' in a tree
And the user inputs text 'user0' into 'Name' filter
Then the user should see rows with column 'Id' and values from '0' to '0' in <tableCaption> table
And the user should see label 'Text' contains 'ALL' text
Examples:
|tableCaption|
|Simple Table showing filtering behaviour|

Scenario: Empty 'Name' column filter for unselected row
When the user make empty 'Name' filter
Then the user should see rows with column 'Id' and values from '0' to '49' in <tableCaption> table
And the user should see label 'Text' contains 'ALL' text
Examples:
|tableCaption|
|Simple Table showing filtering behaviour|

Scenario: Fill 'Name' column filter for selected row
Given the user refresh the Example page
When the user selects the item 'Trees and Tables->Table Column filtering' in a tree
And the user selects row with column 'Id' and value '1' in <tableCaption> table
And the user inputs text 'user1' into 'Name' filter
Then the user should see rows with column 'Id' and values from '1' to '1' in <tableCaption> table
And the user should see row with column 'Id' and value '1' is selected in <tableCaption> table
And the user should see label 'Text' contains 'user1' text
Examples:
|tableCaption|
|Simple Table showing filtering behaviour|

Scenario: Empty 'Name' column filter for selected row
When the user make empty 'Name' filter
Then the user should see rows with column 'Id' and values from '0' to '49' in <tableCaption> table
And the user should see row with column 'Id' and value '1' is selected in <tableCaption> table
And the user should see label 'Text' contains 'user1' text
Examples:
|tableCaption|
|Simple Table showing filtering behaviour|

Scenario: Re-input 'Name' column filter for selected row (but hidden)
When the user selects the item 'Trees and Tables->Table Column filtering' in a tree
And the user selects row with column 'Id' and value '1' in <tableCaption> table
And the user inputs text 'user1' into 'Name' filter
Then the user should see rows with column 'Id' and values from '1' to '1' in <tableCaption> table
And the user should see row with column 'Id' and value '1' is selected in <tableCaption> table
And the user should see label 'Text' contains 'user1' text
When the user inputs text 'user2' into 'Name' filter
Then the user should see rows with column 'Id' and values from '2' to '2' in <tableCaption> table
And the user should see row with column 'Id' and value '2' is deselected in <tableCaption> table
And the user should see label 'Text' contains 'user1' text
When the user makes the 'Name' filter empty
Then the user should see rows with column 'Id' and values from '0' to '49' in <tableCaption> table
And the user should see row with column 'Id' and value '1' is selected in <tableCaption> table
And the user should see label 'Text' contains 'user1' text
Examples:
|tableCaption|
|Simple Table showing filtering behaviour|

Scenario: Pick 'Date' (From) column filter as day before for unselected row
When the user selects the item 'Trees and Tables->Table Column filtering' in a tree
And the user selects the date on a day '1' after before as 'FROM' date in 'Date' filter
Then the user should see rows with column 'Id' and values from '0' to '49' in <tableCaption> table
And the user should see label 'Text' contains 'ALL' text
Examples:
|tableCaption|
|Simple Table showing filtering behaviour|

Scenario: Pick 'Date' (From) column filter as the current day for unselected row
When the user selects the item 'Trees and Tables->Table Column filtering' in a tree
And the user selects the date on a day '0' after today as 'FROM' date in 'Date' filter
Then the user should see rows with column 'Id' and values from '0' to '49' in <tableCaption> table
And the user should see label 'Text' contains 'ALL' text
Examples:
|tableCaption|
|Simple Table showing filtering behaviour|

Scenario: Pick 'Date' (From) column filter as day after for unselected row
Given the user refresh the Example page
When the user selects the item 'Trees and Tables->Table Column filtering' in a tree
And the user selects the date on a day '1' after today as 'FROM' date in 'Date' filter
Then the user should see rows with column 'Id' and values from '0' to '49' in <tableCaption> table
And the user should see label 'Text' contains 'ALL' text
Examples:
|tableCaption|
|Simple Table showing filtering behaviour|

Scenario: Pick 'Date' (From) column filter as days after for unselected row
Given the user refresh the Example page
When the user selects the item 'Trees and Tables->Table Column filtering' in a tree
And the user selects the date on a day '2' after today as 'FROM' date in 'Date' filter
Then the user should see rows with column 'Id' and values from '1' to '49' in <tableCaption> table
And the user should see label 'Text' contains 'ALL' text
Examples:
|tableCaption|
|Simple Table showing filtering behaviour|

Scenario: Empty 'Date' (From) column filter for unselected row
When the user clears 'Date' filter
Then the user should see rows with column 'Id' and values from '0' to '49' in <tableCaption> table
And the user should see label 'Text' contains 'ALL' text
Examples:
|tableCaption|
|Simple Table showing filtering behaviour|

Scenario: Pick 'Date' (From) column filter for selected row
Given the user refresh the Example page
When the user selects the item 'Trees and Tables->Table Column filtering' in a tree
And the user selects row with column 'Id' and value '1' in <tableCaption> table
And the user selects the date on a day '2' after today as 'FROM' date in 'Date' filter
Then the user should see rows with column 'Id' and values from '1' to '49' in <tableCaption> table
And the user should see row with column 'Id' and value '1' is selected in <tableCaption> table
And the user should see label 'Text' contains 'user1' text
Examples:
|tableCaption|
|Simple Table showing filtering behaviour|

Scenario: Empty 'Date' (From) column filter for selected row
When the user selects row with column 'Id' and value '1' in <tableCaption> table
And the user clears 'Date' filter
Then the user should see rows with column 'Id' and values from '0' to '49' in <tableCaption> table
And the user should see row with column 'Id' and value '1' is selected in <tableCaption> table
And the user should see label 'Text' contains 'user1' text
Examples:
|tableCaption|
|Simple Table showing filtering behaviour|

Scenario: Pick 'Date' (From) column filter for selected but hidden row
Given the user refresh the Example page
When the user selects the item 'Trees and Tables->Table Column filtering' in a tree
And the user selects row with column 'Id' and value '1' in <tableCaption> table
And the user selects the date on a day '3' after today as 'FROM' date in 'Date' filter
Then the user should see rows with column 'Id' and values from '2' to '49' in <tableCaption> table
And the user should see row with column 'Id' and value '2' is deselected in <tableCaption> table
And the user should see label 'Text' contains 'user1' text
Examples:
|tableCaption|
|Simple Table showing filtering behaviour|

Scenario: Empty 'Date' (From) column filter for selected but hidden row
When the user clears 'Date' filter
Then the user should see rows with column 'Id' and values from '0' to '49' in <tableCaption> table
And the user should see row with column 'Id' and value '1' is selected in <tableCaption> table
And the user should see label 'Text' contains 'user1' text
Examples:
|tableCaption|
|Simple Table showing filtering behaviour|

Scenario: Pick 'Date' (To) column filter as day before for unselected row
Given the user refresh the Example page
When the user selects the item 'Trees and Tables->Table Column filtering' in a tree
And the user selects the date on a day '1' before today as 'TO' date in 'Date' filter
Then the user should see no rows in <tableCaption> table
And the user should see label 'Text' contains 'ALL' text
Examples:
|tableCaption|
|Simple Table showing filtering behaviour|

Scenario: Pick 'Date' (To) column filter as the current day for unselected row
Given the user refresh the Example page
When the user selects the item 'Trees and Tables->Table Column filtering' in a tree
And the user selects the date on a day '0' after today as 'TO' date in 'Date' filter
Then the user should see no rows in <tableCaption> table
And the user should see label 'Text' contains 'ALL' text
Examples:
|tableCaption|
|Simple Table showing filtering behaviour|

Scenario: Pick 'Date' (To) column filter as the day after for unselected row
Given the user refresh the Example page
When the user selects the item 'Trees and Tables->Table Column filtering' in a tree
And the user selects the date on a day '1' after today as 'TO' date in 'Date' filter
Then the user should see no rows in <tableCaption> table
And the user should see label 'Text' contains 'ALL' text
Examples:
|tableCaption|
|Simple Table showing filtering behaviour|

Scenario: Pick 'Date' (To) column filter as the days after for unselected row
Given the user refresh the Example page
When the user selects the item 'Trees and Tables->Table Column filtering' in a tree
And the user selects the date on a day '2' after today as 'TO' date in 'Date' filter
Then the user should see rows with column 'Id' and values from '0' to '0' in <tableCaption> table
And the user should see label 'Text' contains 'ALL' text
Examples:
|tableCaption|
|Simple Table showing filtering behaviour|

Scenario: Empty 'Date' (To) column filter for unselected row
When the user clears 'Date' filter
Then the user should see rows with column 'Id' and values from '0' to '1' in <tableCaption> table
And the user should see label 'Text' contains 'ALL' text
Examples:
|tableCaption|
|Simple Table showing filtering behaviour|

Scenario: Pick 'Date' (To) column filter for selected row
Given the user refresh the Example page
When the user selects the item 'Trees and Tables->Table Column filtering' in a tree
And the user selects row with column 'Id' and value '1' in <tableCaption> table
And the user selects the date on a day '2' after today as 'TO' date in 'Date' filter
Then the user should see rows with column 'Id' and values from '0' to '1' in <tableCaption> table
And the user should see row with column 'Id' and value '1' is selected in <tableCaption> table
And the user should see label 'Text' contains 'user1' text
Examples:
|tableCaption|
|Simple Table showing filtering behaviour|

Scenario: Empty 'Date' (To) column filter for selected row
When the user selects row with column 'Id' and value '1' in <tableCaption> table
And the user clears 'Date' filter
Then the user should see rows with column 'Id' and values from '0' to '49' in <tableCaption> table
And the user should see row with column 'Id' and value '1' is selected in <tableCaption> table
And the user should see label 'Text' contains 'user1' text
Examples:
|tableCaption|
|Simple Table showing filtering behaviour|

Scenario: Pick 'Date' (To) column filter for selected but hidden row
Given the user refresh the Example page
When the user selects the item 'Trees and Tables->Table Column filtering' in a tree
And the user selects row with column 'Id' and value '1' in <tableCaption> table
And the user selects the date on a day '3' after today as 'FROM' date in 'Date' filter
Then the user should see rows with column 'Id' and values from '0' to '2' in <tableCaption> table
And the user should see row with column 'Id' and value '0' is deselected in <tableCaption> table
And the user should see row with column 'Id' and value '1' is selected in <tableCaption> table
And the user should see row with column 'Id' and value '2' is deselected in <tableCaption> table
And the user should see label 'Text' contains 'user1' text
Examples:
|tableCaption|
|Simple Table showing filtering behaviour|

Scenario: Empty 'Date' (To) column filter for selected but hidden row
When the user clears 'Date' filter
Then the user should see rows with column 'Id' and values from '0' to '49' in <tableCaption> table
And the user should see row with column 'Id' and value '1' is selected in <tableCaption> table
And the user should see label 'Text' contains 'user1' text
Examples:
|tableCaption|
|Simple Table showing filtering behaviour|

Scenario: Pick 'Date' (From and To) column filter for unselected row
Given the user refresh the Example page
When the user selects the item 'Trees and Tables->Table Column filtering' in a tree
And the user selects the date on a day '1' after today as 'FROM' date in 'Date' filter
And the user selects the date on a day '3' after today as 'TO' date in 'Date' filter
Then the user should see rows with column 'Id' and values from '0' to '2' in <tableCaption> table
Examples:
|tableCaption|
|Simple Table showing filtering behaviour|

Scenario: Empty 'Date' (From and To) column filter for unselected row
When the user clears 'Date' filter
Then the user should see rows with column 'Id' and values from '0' to '49' in <tableCaption> table
And the user should see label 'Text' contains 'ALL' text
Examples:
|tableCaption|
|Simple Table showing filtering behaviour|

Scenario: Pick 'Date' (From and To) column filter for selected row
Given the user refresh the Example page
When the user selects the item 'Trees and Tables->Table Column filtering' in a tree
And the user selects row with column 'Id' and value '1' in <tableCaption> table
And the user selects the date on a day '1' after today as 'FROM' date in 'Date' filter
And the user selects the date on a day '3' after today as 'TO' date in 'Date' filter
Then the user should see rows with column 'Id' and values from '0' to '2' in <tableCaption> table
And the user should see row with column 'Id' and value '1' is selected in <tableCaption> table

Scenario: Empty 'Date' (From and To) column filter for selected row
When the user selects row with column 'Id' and value '1' in <tableCaption> table
And the user clears 'Date' filter
Then the user should see rows with column 'Id' and values from '0' to '49' in <tableCaption> table
And the user should see row with column 'Id' and value '1' is selected in <tableCaption> table
And the user should see label 'Text' contains 'user1' text
Examples:
|tableCaption|
|Simple Table showing filtering behaviour|

Scenario: Fill all filters for unselected row
Given the user refresh the Example page
When the user selects the item 'Trees and Tables->Table Column filtering' in a tree
And the user inputs text '0' into 'Id' filter
And the user inputs text 'user0' into 'Name' filter
And the user selects the date on a day '1' after today as 'TO' date in 'Date' filter
Then the user should see rows with column 'Id' and values from '0' to '0' in <tableCaption> table
And the user should see label 'Text' contains 'ALL' text

Scenario: Empty all filters for unselected row
When the user clear 'Id' filter
And the user clear 'Name' filter
And the user clears 'Date' filter
Then the user should see rows with column 'Id' and values from '0' to '49' in <tableCaption> table
And the user should see label 'Text' contains 'ALL' text
Examples:
|tableCaption|
|Simple Table showing filtering behaviour|

Scenario: Fill all filters for selected row
Given the user refresh the Example page
When the user selects the item 'Trees and Tables->Table Column filtering' in a tree
And the user selects row with column 'Id' and value '0' in <tableCaption> table
And the user inputs text '0' into 'Id' filter
And the user inputs text 'user0' into 'Name' filter
And the user selects the date on a day '1' after today as 'TO' date in 'Date' filter
Then the user should see rows with column 'Id' and values from '0' to '0' in <tableCaption> table
And the user should see row with column 'Id' and value '0' is selected in <tableCaption> table
And the user should see label 'Text' contains 'user0' text

Scenario: Empty all filters for selected row
When the user selects row with column 'Id' and value '0' in <tableCaption> table
And the user clear 'Id' filter
And the user clear 'Name' filter
And the user clears 'Date' filter
Then the user should see rows with column 'Id' and values from '0' to '49' in <tableCaption> table
And the user should see row with column 'Id' and value '0' is selected in <tableCaption> table
And the user should see label 'Text' contains 'user0' text
Examples:
|tableCaption|
|Simple Table showing filtering behaviour|

Scenario: Repick 'Date' (From) column filter for selected row
Given the user refresh the Example page
When the user selects the item 'Trees and Tables->Table Column filtering' in a tree
And the user selects row with column 'Id' and value '1' in <tableCaption> table
And the user selects the date on a day '1' after today as 'FROM' date in 'Date' filter
And the user selects the date on a day '3' after today as 'FROM' date in 'Date' filter
Then the user should see rows with column 'Id' and values from '2' to '49' in <tableCaption> table
And the user should see row with column 'Id' and value '2' is deselected in <tableCaption> table
When the user clears 'Date' filter
Then the user should see rows with column 'Id' and values from '0' to '49' in <tableCaption> table
And the user should see row with column 'Id' and value '1' is selected in <tableCaption> table
And the user should see label 'Text' contains 'user1' text
Examples:
|tableCaption|
|Simple Table showing filtering behaviour|

Scenario: Repick 'Date' (To) column filter for selected (and hidden row)
Given the user refresh the Example page
When the user selects the item 'Trees and Tables->Table Column filtering' in a tree
And the user selects row with column 'Id' and value '3' in <tableCaption> table
And the user selects the date on a day '2' after today as 'FROM' date in 'Date' filter
Then the user should see rows with column 'Id' and values from '0' to '1' in <tableCaption> table
And the user should see row with column 'Id' and value '0' is deselected in <tableCaption> table
And the user should see row with column 'Id' and value '1' is deselected in <tableCaption> table
When the user selects the date on a day '4' after today as 'FROM' date in 'Date' filter
Then the user should see rows with column 'Id' and values from '0' to '3' in <tableCaption> table
And the user should see row with column 'Id' and value '0' is deselected in <tableCaption> table
And the user should see row with column 'Id' and value '1' is deselected in <tableCaption> table
And the user should see row with column 'Id' and value '2' is deselected in <tableCaption> table
And the user should see row with column 'Id' and value '3' is selected in <tableCaption> table
And the user should see label 'Text' contains 'user3' text
When the user clears 'Date' filter
Then the user should see rows with column 'Id' and values from '0' to '49' in <tableCaption> table
And the user should see row with column 'Id' and value '3' is selected in <tableCaption> table
And the user should see label 'Text' contains 'user3' text
Examples:
|tableCaption|
|Simple Table showing filtering behaviour|

Scenario: Repick 'Date' (From and To) column filter for selected row
Given the user refresh the Example page
When the user selects the item 'Trees and Tables->Table Column filtering' in a tree
And the user selects row with column 'Id' and value '1' in <tableCaption> table
And the user selects the date on a day '0' after today as 'FROM' date in 'Date' filter
And the user selects the date on a day '1' after today as 'TO' date in 'Date' filter
Then the user should see rows with column 'Id' and values from '0' to '0' in <tableCaption> table
And the user should see row with column 'Id' and value '0' is deselected in <tableCaption> table
When the user selects the date on a day '1' after today as 'FROM' date in 'Date' filter
And the user selects the date on a day '2' after today as 'TO' date in 'Date' filter
Then the user should see rows with column 'Id' and values from '0' to '1' in <tableCaption> table
And the user should see row with column 'Id' and value '1' is selected in <tableCaption> table
When the user clears 'Date' filter
Then the user should see rows with column 'Id' and values from '0' to '49' in <tableCaption> table
And the user should see row with column 'Id' and value '1' is selected in <tableCaption> table
And the user should see label 'Text' contains 'user1' text
Examples:
|tableCaption|
|Simple Table showing filtering behaviour|

Scenario: Make not visible the filtered 'Name' column
When the user selects the item 'Trees and Tables->Table Column filtering' in a tree
And the user selects row with column 'Id' and value '1' in <tableCaption> table
And the user inputs text 'user1' into 'Name' filter
And the user makes not visible column 'Name' from the wheel for <tableCaption> table
Then the user should not see column 'Name' in <tableCaption> table
And the user should see rows with column 'Id' and values from '0' to '49' in <tableCaption> table
When the user makes visible column 'Name' from the wheel for <tableCaption> table
Then the user should see column 'Name' in <tableCaption> table
And the user should see rows with column 'Id' and values from '0' to '49' in <tableCaption> table
And the user should see row with column 'Id' and value '1' is selected in <tableCaption> table
Examples:
|tableCaption|
|Simple Table showing filtering behaviour|

Scenario: Make not visible the filtered 'Date' column
When the user selects the item 'Trees and Tables->Table Column filtering' in a tree
And the user selects row with column 'Id' and value '1' in <tableCaption> table
And the user selects the date on a day '2' after before as 'TO' date in 'Date' filter
And the user makes not visible column 'Date' from the wheel for <tableCaption> table
Then the user should not see column 'Date' in <tableCaption> table
And the user should see rows with column 'Id' and values from '0' to '49' in <tableCaption> table
When the user makes visible column 'Date' from the wheel for <tableCaption> table
Then the user should see column 'Date' in <tableCaption> table
And the user should see rows with column 'Id' and values from '0' to '49' in <tableCaption> table
And the user should see row with column 'Id' and value '1' is selected in <tableCaption> table
Examples:
|tableCaption|
|Simple Table showing filtering behaviour|

Scenario: Input into 'Name' column a text with beginning part of column's value
Given the user refresh the Example page
When the user selects the item 'Trees and Tables->Table Column filtering' in a tree
And the user inputs text 'us' into 'Name' filter
Then the user should see no rows in <tableCaption> table
Examples:
|tableCaption|
|Simple Table showing filtering behaviour|

Scenario: Input into 'Name' column a text with middle part of column's value
Given the user refresh the Example page
When the user selects the item 'Trees and Tables->Table Column filtering' in a tree
And the user inputs text 'er' into 'Name' filter
Then the user should see no rows in <tableCaption> table
Examples:
|tableCaption|
|Simple Table showing filtering behaviour|

Scenario: Input into 'Name' column a text with end part of column's value
Given the user refresh the Example page
When the user selects the item 'Trees and Tables->Table Column filtering' in a tree
And the user inputs text 'r3' into 'Name' filter
Then the user should see no rows in <tableCaption> table
Examples:
|tableCaption|
|Simple Table showing filtering behaviour|

Scenario: Sort 'Id' column ascendingly
Given the user refresh the Example page
When the user selects the item 'Trees and Tables->Table Column filtering' in a tree
And the user clicks '1' times on 'Id' column in <tableCaption> table
Then the user should see that values are sorted ascendingly in 'Id' column in <tableCaption> table
Examples:
|tableCaption|
|Simple Table showing filtering behaviour|

Scenario: Sort 'Id' column descendingly
Given the user refresh the Example page
When the user selects the item 'Trees and Tables->Table Column filtering' in a tree
And the user clicks '2' times on 'Id' column in <tableCaption> table
Then the user should see that values in 'Id' column are sorted descendingly in <tableCaption> table
Examples:
|tableCaption|
|Simple Table showing filtering behaviour|

Scenario: Column 'Id' is unsorted
Given the user refresh the Example page
When the user selects the item 'Trees and Tables->Table Column filtering' in a tree
And the user clicks '3' times on 'Id' column in <tableCaption> table
Then the user should see that values in 'Id' column are sorted as '0,1,2,3,4,5,6,7,8,9,10,11' in <tableCaption> table
Examples:
|tableCaption|
|Simple Table showing filtering behaviour|

Scenario: Sort 'Name' column ascendingly
Given the user refresh the Example page
When the user selects the item 'Trees and Tables->Table Column filtering' in a tree
And the user clicks '1' times on 'Name' column in <tableCaption> table
Then the user should see that values are sorted ascendingly in 'Name' column in <tableCaption> table
Examples:
|tableCaption|
|Simple Table showing filtering behaviour|

Scenario: Sort 'Name' column descendingly
Given the user refresh the Example page
When the user selects the item 'Trees and Tables->Table Column filtering' in a tree
And the user clicks '2' times on 'Name' column in <tableCaption> table
Then the user should see that values in 'Name' column are sorted descendingly in <tableCaption> table
Examples:
|tableCaption|
|Simple Table showing filtering behaviour|

Scenario: Column 'Name' is unsorted
Given the user refresh the Example page
When the user selects the item 'Trees and Tables->Table Column filtering' in a tree
And the user clicks '3' times on 'Name' column in <tableCaption> table
Then the user should see that values in 'Name' column are sorted as 'user0,user1,user2,user3,user4,user5' in <tableCaption> table
Examples:
|tableCaption|
|Simple Table showing filtering behaviour|

Scenario: Re-sort 'Id' column ascendingly
Given the user refresh the Example page
When the user selects the item 'Trees and Tables->Table Column filtering' in a tree
And the user clicks '4' times on 'Id' column in <tableCaption> table
Then the user should see that values are sorted ascendingly in 'Id' column in <tableCaption> table
Examples:
|tableCaption|
|Simple Table showing filtering behaviour|

Scenario: Re-sort 'Name' column descendingly
Given the user refresh the Example page
When the user selects the item 'Trees and Tables->Table Column filtering' in a tree
And the user clicks '5' times on 'Name' column in <tableCaption> table
Then the user should see that values in 'Name' column are sorted descendingly in <tableCaption> table
Examples:
|tableCaption|
|Simple Table showing filtering behaviour|

Scenario: Re-unsort the 'Id' column
Given the user refresh the Example page
When the user selects the item 'Trees and Tables->Table Column filtering' in a tree
And the user clicks '6' times on 'Name' column in <tableCaption> table
Then the user should see that values in 'Id' column are sorted as '0,1,2,3,4,5,6,7,8,9,10,11' in <tableCaption> table
Examples:
|tableCaption|
|Simple Table showing filtering behaviour|

Scenario: Sort 'Date' column ascendingly
Given the user refresh the Example page
When the user selects the item 'Trees and Tables->Table Column filtering' in a tree
And the user clicks '1' times on 'Date' column in <tableCaption> table
Then the user should see that values in 'Date' column are sorted as date ascendingly in <tableCaption> table
Examples:
|tableCaption|
|Simple Table showing filtering behaviour|

Scenario: Sort 'Date' column descendingly
Given the user refresh the Example page
When the user selects the item 'Trees and Tables->Table Column filtering' in a tree
And the user clicks '2' times on 'Date' column in <tableCaption> table
Then the user should see that values in 'Date' column are sorted as date descendingly in <tableCaption> table
Examples:
|tableCaption|
|Simple Table showing filtering behaviour|