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
And the user makes 'Name' column not visible from the settings wheel for <tableCaption> table
Then the user should not see 'Name' column in <tableCaption> table
And the user should not see the filter in 'Name' column in <tableCaption> table
And the user should see 'Id' column in <tableCaption> table
And the user should see the filter with textfield in 'Id' column in <tableCaption> table
And the user should see 'Date' column in <tableCaption> table
And the user should see the filter with datepicker in 'Date' column in <tableCaption> table
And the user should see that rows in 'Id' column contain the values from '0' to '49' in <tableCaption> table
Examples:
|tableCaption|
|Simple Table showing filtering behaviour|

Scenario: Make visible column 'Name' with TextField filter from the settings wheel
Given the user refresh the Example page
When the user makes 'Name' column visible from the settings wheel for <tableCaption> table
Then the user should see 'Name' column in <tableCaption> table
And the user should see the filter with textfield in 'Name' column in <tableCaption> table
And the user should see 'Id' column in <tableCaption> table
And the user should see the filter with textfield in 'Id' column in <tableCaption> table
And the user should see 'Date' column in <tableCaption> table
And the user should see the filter with datepicker in 'Date' column in <tableCaption> table
And the user should see that rows in 'Id' column contain the values from '0' to '49' in <tableCaption> table
Examples:
|tableCaption|
|Simple Table showing filtering behaviour|

Scenario: Make not visible column 'Date' with DatePicker filter from the settings wheel
Given the user refresh the Example page
When the user selects the item 'Trees and Tables->Table Column filtering' in a tree
And the user makes 'Date' column not visible from the settings wheel for <tableCaption> table
Then the user should not see 'Date' column in <tableCaption> table
And the user should not see the filter in 'Id' column in <tableCaption> table
And the user should see 'Id' column in <tableCaption> table
And the user should see the filter with textfield in 'Id' column in <tableCaption> table
And the user should see 'Name' column in <tableCaption> table
And the user should see the filter with textfield in 'Name' column in <tableCaption> table
And the user should see that rows in 'Id' column contain the values from '0' to '49' in <tableCaption> table
Examples:
|tableCaption|
|Simple Table showing filtering behaviour|

Scenario: Make visible column 'Date' with DatePicker filter from the settings wheel
When the user makes 'Date' column visible from the settings wheel for <tableCaption> table
Then the user should see 'Date' column in <tableCaption> table
And the user should see the filter with textfield in 'Id' column in <tableCaption> table
And the user should see 'Id' column in <tableCaption> table
And the user should see the filter with textfield in 'Id' column in <tableCaption> table
And the user should see 'Name' column in <tableCaption> table
And the user should see the filter with textfield in 'Name' column in <tableCaption> table
And the user should see that rows in 'Id' column contain the values from '0' to '49' in <tableCaption> table
Examples:
|tableCaption|
|Simple Table showing filtering behaviour|

Scenario: Make not visible all columns with filters from the settings wheel
Given the user refresh the Example page
When the user selects the item 'Trees and Tables->Table Column filtering' in a tree
And the user makes 'Id' column not visible from the settings wheel for <tableCaption> table
Then the user should not see 'Id' column in <tableCaption> table
When the user makes 'Name' column not visible from the settings wheel for <tableCaption> table
Then the user should not see 'Name' column in <tableCaption> table
When the user makes 'Date' column not visible from the settings wheel for <tableCaption> table
Then the user should not see 'Date' column in <tableCaption> table
And the user should not see the filter in 'Id' column in <tableCaption> table
And the user should not see the filter in 'Name' column in <tableCaption> table
And the user should not see the filter in 'Date' column in <tableCaption> table
Examples:
|tableCaption|
|Simple Table showing filtering behaviour|

Scenario: Make visible all columns with filters from the settings wheel
When the user makes 'Id' column visible from the settings wheel for <tableCaption> table
Then the user should see 'Id' column in <tableCaption> table
When the user makes 'Name' column visible from the settings wheel for <tableCaption> table
Then the user should see 'Name' column in <tableCaption> table
When the user makes 'Date' column visible from the settings wheel for <tableCaption> table
Then the user should see 'Date' column in <tableCaption> table
And the user should see the filter with textfield in 'Id' column in <tableCaption> table
And the user should see the filter with textfield in 'Name' column in <tableCaption> table
And the user should see the filter with datepicker in 'Date' column in <tableCaption> table
And the user should see that rows in 'Id' column contain the values from '0' to '49' in <tableCaption> table
Examples:
|tableCaption|
|Simple Table showing filtering behaviour|

Scenario: Make not visible selected column 'Name' with TextField filter from the settings wheel
Given the user refresh the Example page
When the user selects the item 'Trees and Tables->Table Column filtering' in a tree
And the user selects the row with 'Id' column and '0' value in <tableCaption> table
And the user makes 'Name' column not visible from the settings wheel for <tableCaption> table
Then the user should not see 'Name' column in <tableCaption> table
And the user should not see the filter in 'Name' column in <tableCaption> table
And the user should see 'Id' column in <tableCaption> table
And the user should see the filter with textfield in 'Id' column in <tableCaption> table
And the user should see 'Date' column in <tableCaption> table
And the user should see the filter with datepicker in 'Date' column in <tableCaption> table
And the user should see that row with 'Id' column and '0' value is selected in <tableCaption> table
Examples:
|tableCaption|
|Simple Table showing filtering behaviour|

Scenario: Make visible selected column 'Name' with TextField filter from the settings wheel
When the user selects the row with 'Id' column and '1' value in <tableCaption> table
And the user makes 'Name' column visible from the settings wheel for <tableCaption> table
Then the user should see 'Name' column in <tableCaption> table
And the user should see the filter with textfield in 'Name' column in <tableCaption> table
And the user should see 'Id' column in <tableCaption> table
And the user should see the filter with textfield in 'Id' column in <tableCaption> table
And the user should see 'Date' column in <tableCaption> table
And the user should see the filter with datepicker in 'Date' column in <tableCaption> table
And the user should see that row with 'Id' column and '1' value is selected in <tableCaption> table
Examples:
|tableCaption|
|Simple Table showing filtering behaviour|

Scenario: Make not visible selected column 'Date' with DatePicker filter from the settings wheel
Given the user refresh the Example page
When the user selects the item 'Trees and Tables->Table Column filtering' in a tree
And the user selects the row with 'Id' column and '0' value in <tableCaption> table
And the user makes 'Date' column not visible from the settings wheel for <tableCaption> table
Then the user should not see 'Date' column in <tableCaption> table
And the user should not see the filter in 'Id' column in <tableCaption> table
And the user should see 'Id' column in <tableCaption> table
And the user should see the filter with textfield in 'Id' column in <tableCaption> table
And the user should see 'Name' column in <tableCaption> table
And the user should see the filter with textfield in 'Name' column in <tableCaption> table
And the user should see that row with 'Id' column and '0' value is selected in <tableCaption> table
Examples:
|tableCaption|
|Simple Table showing filtering behaviour|

Scenario: Make visible selected column 'Date' with DatePicker filter from the settings wheel
When the user selects the row with 'Id' column and '1' value in <tableCaption> table
And the user makes 'Date' column visible from the settings wheel for <tableCaption> table
Then the user should see 'Date' column in <tableCaption> table
And the user should see the filter with textfield in 'Id' column in <tableCaption> table
And the user should see 'Id' column in <tableCaption> table
And the user should see the filter with textfield in 'Id' column in <tableCaption> table
And the user should see 'Name' column in <tableCaption> table
And the user should see the filter with textfield in 'Name' column in <tableCaption> table
And the user should see that row with 'Id' column and '1' value is selected in <tableCaption> table
Examples:
|tableCaption|
|Simple Table showing filtering behaviour|

Scenario: Make not visible all selected columns with filters from the settings wheel
Given the user refresh the Example page
When the user selects the item 'Trees and Tables->Table Column filtering' in a tree
And the user selects the row with 'Id' column and '0' value in <tableCaption> table
And the user makes 'Id' column not visible from the settings wheel for <tableCaption> table
And the user makes 'Name' column not visible from the settings wheel for <tableCaption> table
And the user makes 'Date' column not visible from the settings wheel for <tableCaption> table
Then the user should not see 'Id' column in <tableCaption> table
And the user should not see 'Name' column in <tableCaption> table
And the user should not see 'Date' column in <tableCaption> table
And the user should not see the filter in 'Id' column in <tableCaption> table
And the user should not see the filter in 'Name' column in <tableCaption> table
And the user should not see the filter in 'Date' column in <tableCaption> table
Examples:
|tableCaption|
|Simple Table showing filtering behaviour|

Scenario: Make visible all selected columns with filters from the settings wheel
Given the user refresh the Example page
When the user selects the item 'Trees and Tables->Table Column filtering' in a tree
And the user selects the row with 'Id' column and '0' value in <tableCaption> table
And the user makes 'Id' column not visible from the settings wheel for <tableCaption> table
And the user makes 'Name' column not visible from the settings wheel for <tableCaption> table
And the user makes 'Date' column not visible from the settings wheel for <tableCaption> table
And the user makes 'Id' column visible from the settings wheel for <tableCaption> table
And the user makes 'Name' column visible from the settings wheel for <tableCaption> table
And the user makes 'Date' column visible from the settings wheel for <tableCaption> table
Then the user should see 'Id' column in <tableCaption> table
And the user should see 'Name' column in <tableCaption> table
And the user should see 'Date' column in <tableCaption> table
And the user should see the filter with textfield in 'Id' column in <tableCaption> table
And the user should see the filter with textfield in 'Name' column in <tableCaption> table
And the user should see the filter with datepicker in 'Date' column in <tableCaption> table
And the user should see that rows in 'Id' column contain the values from '0' to '49' in <tableCaption> table
Examples:
|tableCaption|
|Simple Table showing filtering behaviour|

Scenario: Fill 'Name' column filter for unselected row
Given the user refresh the Example page
When the user selects the item 'Trees and Tables->Table Column filtering' in a tree
And the user inputs 'user0' text into 'Name' filter in <tableCaption> table
Then the user should see that rows in 'Id' column contain the values from '0' to '0' in <tableCaption> table
And the user should see the label with 'ALL' text
Examples:
|tableCaption|
|Simple Table showing filtering behaviour|

Scenario: Empty 'Name' column filter for unselected row
When the user makes 'Name' filter empty in <tableCaption> table
Then the user should see that rows in 'Id' column contain the values from '0' to '49' in <tableCaption> table
And the user should see the label with 'ALL' text
Examples:
|tableCaption|
|Simple Table showing filtering behaviour|

Scenario: Fill 'Name' column filter for selected row
Given the user refresh the Example page
When the user selects the item 'Trees and Tables->Table Column filtering' in a tree
And the user selects the row with 'Id' column and '1' value in <tableCaption> table
And the user inputs 'user1' text into 'Name' filter in <tableCaption> table
Then the user should see that rows in 'Id' column contain the values from '1' to '1' in <tableCaption> table
And the user should see that row with 'Id' column and '1' value is selected in <tableCaption> table
And the user should see the label with 'user1' text
Examples:
|tableCaption|
|Simple Table showing filtering behaviour|

Scenario: Empty 'Name' column filter for selected row
When the user makes 'Name' filter empty in <tableCaption> table
Then the user should see that rows in 'Id' column contain the values from '0' to '49' in <tableCaption> table
And the user should see that row with 'Id' column and '1' value is selected in <tableCaption> table
And the user should see the label with 'user1' text
Examples:
|tableCaption|
|Simple Table showing filtering behaviour|

Scenario: Re-input 'Name' column filter for selected row (but hidden)
When the user selects the item 'Trees and Tables->Table Column filtering' in a tree
And the user selects the row with 'Id' column and '1' value in <tableCaption> table
And the user inputs 'user1' text into 'Name' filter in <tableCaption> table
Then the user should see that rows in 'Id' column contain the values from '1' to '1' in <tableCaption> table
And the user should see that row with 'Id' column and '1' value is selected in <tableCaption> table
And the user should see the label with 'user1' text
When the user inputs 'user2' text into 'Name' filter in <tableCaption> table
Then the user should see that rows in 'Id' column contain the values from '2' to '2' in <tableCaption> table
And the user should see that row with 'Id' column and '2' value is deselected in <tableCaption> table
And the user should see the label with 'user1' text
When the user makes 'Name' filter empty in <tableCaption> table
Then the user should see that rows in 'Id' column contain the values from '0' to '49' in <tableCaption> table
And the user should see that row with 'Id' column and '1' value is selected in <tableCaption> table
And the user should see the label with 'user1' text
Examples:
|tableCaption|
|Simple Table showing filtering behaviour|

Scenario: Pick 'Date' (From) column filter as day before for unselected row
When the user selects the item 'Trees and Tables->Table Column filtering' in a tree
And the user selects the date on a day '1' after today as 'FROM' date in 'Date' filter in <tableCaption> table
Then the user should see that rows in 'Id' column contain the values from '0' to '49' in <tableCaption> table
And the user should see the label with 'ALL' text
Examples:
|tableCaption|
|Simple Table showing filtering behaviour|

Scenario: Pick 'Date' (From) column filter as the current day for unselected row
When the user selects the item 'Trees and Tables->Table Column filtering' in a tree
And the user selects the date on a day '0' after today as 'FROM' date in 'Date' filter in <tableCaption> table
Then the user should see that rows in 'Id' column contain the values from '0' to '49' in <tableCaption> table
And the user should see the label with 'ALL' text
Examples:
|tableCaption|
|Simple Table showing filtering behaviour|

Scenario: Pick 'Date' (From) column filter as day after for unselected row
Given the user refresh the Example page
When the user selects the item 'Trees and Tables->Table Column filtering' in a tree
And the user selects the date on a day '1' after today as 'FROM' date in 'Date' filter in <tableCaption> table
Then the user should see that rows in 'Id' column contain the values from '0' to '49' in <tableCaption> table
And the user should see the label with 'ALL' text
Examples:
|tableCaption|
|Simple Table showing filtering behaviour|

Scenario: Pick 'Date' (From) column filter as days after for unselected row
Given the user refresh the Example page
When the user selects the item 'Trees and Tables->Table Column filtering' in a tree
And the user selects the date on a day '2' after today as 'FROM' date in 'Date' filter in <tableCaption> table
Then the user should see that rows in 'Id' column contain the values from '1' to '49' in <tableCaption> table
And the user should see the label with 'ALL' text
Examples:
|tableCaption|
|Simple Table showing filtering behaviour|

Scenario: Empty 'Date' (From) column filter for unselected row
When the user clears 'Date' filter in <tableCaption> table
Then the user should see that rows in 'Id' column contain the values from '0' to '49' in <tableCaption> table
And the user should see the label with 'ALL' text
Examples:
|tableCaption|
|Simple Table showing filtering behaviour|

Scenario: Pick 'Date' (From) column filter for selected row
Given the user refresh the Example page
When the user selects the item 'Trees and Tables->Table Column filtering' in a tree
And the user selects the row with 'Id' column and '1' value in <tableCaption> table
And the user selects the date on a day '2' after today as 'FROM' date in 'Date' filter in <tableCaption> table
Then the user should see that rows in 'Id' column contain the values from '1' to '49' in <tableCaption> table
And the user should see that row with 'Id' column and '1' value is selected in <tableCaption> table
And the user should see the label with 'user1' text
Examples:
|tableCaption|
|Simple Table showing filtering behaviour|

Scenario: Empty 'Date' (From) column filter for selected row
When the user selects the row with 'Id' column and '1' value in <tableCaption> table
And the user clears 'Date' filter in <tableCaption> table
Then the user should see that rows in 'Id' column contain the values from '0' to '49' in <tableCaption> table
And the user should see that row with 'Id' column and '1' value is selected in <tableCaption> table
And the user should see the label with 'user1' text
Examples:
|tableCaption|
|Simple Table showing filtering behaviour|

Scenario: Pick 'Date' (From) column filter for selected but hidden row
Given the user refresh the Example page
When the user selects the item 'Trees and Tables->Table Column filtering' in a tree
And the user selects the row with 'Id' column and '1' value in <tableCaption> table
And the user selects the date on a day '3' after today as 'FROM' date in 'Date' filter in <tableCaption> table
Then the user should see that rows in 'Id' column contain the values from '2' to '49' in <tableCaption> table
And the user should see that row with 'Id' column and '2' value is deselected in <tableCaption> table
And the user should see the label with 'user1' text
Examples:
|tableCaption|
|Simple Table showing filtering behaviour|

Scenario: Empty 'Date' (From) column filter for selected but hidden row
When the user clears 'Date' filter in <tableCaption> table
Then the user should see that rows in 'Id' column contain the values from '0' to '49' in <tableCaption> table
And the user should see that row with 'Id' column and '1' value is selected in <tableCaption> table
And the user should see the label with 'user1' text
Examples:
|tableCaption|
|Simple Table showing filtering behaviour|

Scenario: Pick 'Date' (To) column filter as day before for unselected row
Given the user refresh the Example page
When the user selects the item 'Trees and Tables->Table Column filtering' in a tree
And the user selects the date on a day '1' before today as 'TO' date in 'Date' filter in <tableCaption> table
Then the user should see no rows in <tableCaption> table
And the user should see the label with 'ALL' text
Examples:
|tableCaption|
|Simple Table showing filtering behaviour|

Scenario: Pick 'Date' (To) column filter as the current day for unselected row
Given the user refresh the Example page
When the user selects the item 'Trees and Tables->Table Column filtering' in a tree
And the user selects the date on a day '0' after today as 'TO' date in 'Date' filter in <tableCaption> table
Then the user should see no rows in <tableCaption> table
And the user should see the label with 'ALL' text
Examples:
|tableCaption|
|Simple Table showing filtering behaviour|

Scenario: Pick 'Date' (To) column filter as the day after for unselected row
Given the user refresh the Example page
When the user selects the item 'Trees and Tables->Table Column filtering' in a tree
And the user selects the date on a day '1' after today as 'TO' date in 'Date' filter in <tableCaption> table
Then the user should see no rows in <tableCaption> table
And the user should see the label with 'ALL' text
Examples:
|tableCaption|
|Simple Table showing filtering behaviour|

Scenario: Pick 'Date' (To) column filter as the days after for unselected row
Given the user refresh the Example page
When the user selects the item 'Trees and Tables->Table Column filtering' in a tree
And the user selects the date on a day '2' after today as 'TO' date in 'Date' filter in <tableCaption> table
Then the user should see that rows in 'Id' column contain the values from '0' to '0' in <tableCaption> table
And the user should see the label with 'ALL' text
Examples:
|tableCaption|
|Simple Table showing filtering behaviour|

Scenario: Empty 'Date' (To) column filter for unselected row
When the user clears 'Date' filter in <tableCaption> table
Then the user should see that rows in 'Id' column contain the values from '0' to '1' in <tableCaption> table
And the user should see the label with 'ALL' text
Examples:
|tableCaption|
|Simple Table showing filtering behaviour|

Scenario: Pick 'Date' (To) column filter for selected row
Given the user refresh the Example page
When the user selects the item 'Trees and Tables->Table Column filtering' in a tree
And the user selects the row with 'Id' column and '1' value in <tableCaption> table
And the user selects the date on a day '2' after today as 'TO' date in 'Date' filter in <tableCaption> table
Then the user should see that rows in 'Id' column contain the values from '0' to '1' in <tableCaption> table
And the user should see that row with 'Id' column and '1' value is selected in <tableCaption> table
And the user should see the label with 'user1' text
Examples:
|tableCaption|
|Simple Table showing filtering behaviour|

Scenario: Empty 'Date' (To) column filter for selected row
When the user selects the row with 'Id' column and '1' value in <tableCaption> table
And the user clears 'Date' filter in <tableCaption> table
Then the user should see that rows in 'Id' column contain the values from '0' to '49' in <tableCaption> table
And the user should see that row with 'Id' column and '1' value is selected in <tableCaption> table
And the user should see the label with 'user1' text
Examples:
|tableCaption|
|Simple Table showing filtering behaviour|

Scenario: Pick 'Date' (To) column filter for selected but hidden row
Given the user refresh the Example page
When the user selects the item 'Trees and Tables->Table Column filtering' in a tree
And the user selects the row with 'Id' column and '1' value in <tableCaption> table
And the user selects the date on a day '3' after today as 'FROM' date in 'Date' filter in <tableCaption> table
Then the user should see that rows in 'Id' column contain the values from '0' to '2' in <tableCaption> table
And the user should see that row with 'Id' column and '0' value is deselected in <tableCaption> table
And the user should see that row with 'Id' column and '1' value is selected in <tableCaption> table
And the user should see that row with 'Id' column and '2' value is deselected in <tableCaption> table
And the user should see the label with 'user1' text
Examples:
|tableCaption|
|Simple Table showing filtering behaviour|

Scenario: Empty 'Date' (To) column filter for selected but hidden row
When the user clears 'Date' filter in <tableCaption> table
Then the user should see that rows in 'Id' column contain the values from '0' to '49' in <tableCaption> table
And the user should see that row with 'Id' column and '1' value is selected in <tableCaption> table
And the user should see the label with 'user1' text
Examples:
|tableCaption|
|Simple Table showing filtering behaviour|

Scenario: Pick 'Date' (From and To) column filter for unselected row
Given the user refresh the Example page
When the user selects the item 'Trees and Tables->Table Column filtering' in a tree
And the user selects the date on a day '1' after today as 'FROM' date in 'Date' filter in <tableCaption> table
And the user selects the date on a day '3' after today as 'TO' date in 'Date' filter in <tableCaption> table
Then the user should see that rows in 'Id' column contain the values from '0' to '2' in <tableCaption> table
Examples:
|tableCaption|
|Simple Table showing filtering behaviour|

Scenario: Empty 'Date' (From and To) column filter for unselected row
When the user clears 'Date' filter in <tableCaption> table
Then the user should see that rows in 'Id' column contain the values from '0' to '49' in <tableCaption> table
And the user should see the label with 'ALL' text
Examples:
|tableCaption|
|Simple Table showing filtering behaviour|

Scenario: Pick 'Date' (From and To) column filter for selected row
Given the user refresh the Example page
When the user selects the item 'Trees and Tables->Table Column filtering' in a tree
And the user selects the row with 'Id' column and '1' value in <tableCaption> table
And the user selects the date on a day '1' after today as 'FROM' date in 'Date' filter in <tableCaption> table
And the user selects the date on a day '3' after today as 'TO' date in 'Date' filter in <tableCaption> table
Then the user should see that rows in 'Id' column contain the values from '0' to '2' in <tableCaption> table
And the user should see that row with 'Id' column and '1' value is selected in <tableCaption> table

Scenario: Empty 'Date' (From and To) column filter for selected row
When the user selects the row with 'Id' column and '1' value in <tableCaption> table
And the user clears 'Date' filter in <tableCaption> table
Then the user should see that rows in 'Id' column contain the values from '0' to '49' in <tableCaption> table
And the user should see that row with 'Id' column and '1' value is selected in <tableCaption> table
And the user should see the label with 'user1' text
Examples:
|tableCaption|
|Simple Table showing filtering behaviour|

Scenario: Fill all filters for unselected row
Given the user refresh the Example page
When the user selects the item 'Trees and Tables->Table Column filtering' in a tree
And the user inputs '0' text into 'Id' filter in <tableCaption> table
And the user inputs 'user0' text into 'Name' filter in <tableCaption> table
And the user selects the date on a day '1' after today as 'TO' date in 'Date' filter in <tableCaption> table
Then the user should see that rows in 'Id' column contain the values from '0' to '0' in <tableCaption> table
And the user should see the label with 'ALL' text

Scenario: Empty all filters for unselected row
When the user makes 'Id' filter empty in <tableCaption> table
And the user makes 'Name' filter empty in <tableCaption> table
And the user clears 'Date' filter in <tableCaption> table
Then the user should see that rows in 'Id' column contain the values from '0' to '49' in <tableCaption> table
And the user should see the label with 'ALL' text
Examples:
|tableCaption|
|Simple Table showing filtering behaviour|

Scenario: Fill all filters for selected row
Given the user refresh the Example page
When the user selects the item 'Trees and Tables->Table Column filtering' in a tree
And the user selects the row with 'Id' column and '0' value in <tableCaption> table
And the user inputs '0' text into 'Id' filter in <tableCaption> table
And the user inputs 'user0' text into 'Name' filter in <tableCaption> table
And the user selects the date on a day '1' after today as 'TO' date in 'Date' filter in <tableCaption> table
Then the user should see that rows in 'Id' column contain the values from '0' to '0' in <tableCaption> table
And the user should see that row with 'Id' column and '0' value is selected in <tableCaption> table
And the user should see the label with 'user0' text

Scenario: Empty all filters for selected row
When the user selects the row with 'Id' column and '0' value in <tableCaption> table
And the user makes 'Id' filter empty in <tableCaption> table
And the user makes 'Name' filter empty in <tableCaption> table
And the user clears 'Date' filter in <tableCaption> table
Then the user should see that rows in 'Id' column contain the values from '0' to '49' in <tableCaption> table
And the user should see that row with 'Id' column and '0' value is selected in <tableCaption> table
And the user should see the label with 'user0' text
Examples:
|tableCaption|
|Simple Table showing filtering behaviour|

Scenario: Repick 'Date' (From) column filter for selected row
Given the user refresh the Example page
When the user selects the item 'Trees and Tables->Table Column filtering' in a tree
And the user selects the row with 'Id' column and '1' value in <tableCaption> table
And the user selects the date on a day '1' after today as 'FROM' date in 'Date' filter in <tableCaption> table
And the user selects the date on a day '3' after today as 'FROM' date in 'Date' filter in <tableCaption> table
Then the user should see that rows in 'Id' column contain the values from '2' to '49' in <tableCaption> table
And the user should see that row with 'Id' column and '2' value is deselected in <tableCaption> table
When the user clears 'Date' filter in <tableCaption> table
Then the user should see that rows in 'Id' column contain the values from '0' to '49' in <tableCaption> table
And the user should see that row with 'Id' column and '1' value is selected in <tableCaption> table
And the user should see the label with 'user1' text
Examples:
|tableCaption|
|Simple Table showing filtering behaviour|

Scenario: Repick 'Date' (To) column filter for selected (and hidden row)
Given the user refresh the Example page
When the user selects the item 'Trees and Tables->Table Column filtering' in a tree
And the user selects the row with 'Id' column and '3' value in <tableCaption> table
And the user selects the date on a day '2' after today as 'FROM' date in 'Date' filter in <tableCaption> table
Then the user should see that rows in 'Id' column contain the values from '0' to '1' in <tableCaption> table
And the user should see that row with 'Id' column and '0' value is deselected in <tableCaption> table
And the user should see that row with 'Id' column and '1' value is deselected in <tableCaption> table
When the user selects the date on a day '4' after today as 'FROM' date in 'Date' filter in <tableCaption> table
Then the user should see that rows in 'Id' column contain the values from '0' to '3' in <tableCaption> table
And the user should see that row with 'Id' column and '0' value is deselected in <tableCaption> table
And the user should see that row with 'Id' column and '1' value is deselected in <tableCaption> table
And the user should see that row with 'Id' column and '2' value is deselected in <tableCaption> table
And the user should see that row with 'Id' column and '3' value is selected in <tableCaption> table
And the user should see the label with 'user3' text
When the user clears 'Date' filter in <tableCaption> table
Then the user should see that rows in 'Id' column contain the values from '0' to '49' in <tableCaption> table
And the user should see that row with 'Id' column and '3' value is selected in <tableCaption> table
And the user should see the label with 'user3' text
Examples:
|tableCaption|
|Simple Table showing filtering behaviour|

Scenario: Repick 'Date' (From and To) column filter for selected row
Given the user refresh the Example page
When the user selects the item 'Trees and Tables->Table Column filtering' in a tree
And the user selects the row with 'Id' column and '1' value in <tableCaption> table
And the user selects the date on a day '0' after today as 'FROM' date in 'Date' filter in <tableCaption> table
And the user selects the date on a day '1' after today as 'TO' date in 'Date' filter in <tableCaption> table
Then the user should see that rows in 'Id' column contain the values from '0' to '0' in <tableCaption> table
And the user should see that row with 'Id' column and '0' value is deselected in <tableCaption> table
When the user selects the date on a day '1' after today as 'FROM' date in 'Date' filter in <tableCaption> table
And the user selects the date on a day '2' after today as 'TO' date in 'Date' filter in <tableCaption> table
Then the user should see that rows in 'Id' column contain the values from '0' to '1' in <tableCaption> table
And the user should see that row with 'Id' column and '1' value is selected in <tableCaption> table
When the user clears 'Date' filter in <tableCaption> table
Then the user should see that rows in 'Id' column contain the values from '0' to '49' in <tableCaption> table
And the user should see that row with 'Id' column and '1' value is selected in <tableCaption> table
And the user should see the label with 'user1' text
Examples:
|tableCaption|
|Simple Table showing filtering behaviour|

Scenario: Make not visible the filtered 'Name' column
When the user selects the item 'Trees and Tables->Table Column filtering' in a tree
And the user selects the row with 'Id' column and '1' value in <tableCaption> table
And the user inputs 'user1' text into 'Name' filter in <tableCaption> table
And the user makes 'Name' column not visible from the settings wheel for <tableCaption> table
Then the user should not see 'Name' column in <tableCaption> table
And the user should see that rows in 'Id' column contain the values from '0' to '49' in <tableCaption> table
When the user makes 'Name' column visible from the settings wheel for <tableCaption> table
Then the user should see 'Name' column in <tableCaption> table
And the user should see that rows in 'Id' column contain the values from '0' to '49' in <tableCaption> table
And the user should see that row with 'Id' column and '1' value is selected in <tableCaption> table
Examples:
|tableCaption|
|Simple Table showing filtering behaviour|

Scenario: Make not visible the filtered 'Date' column
When the user selects the item 'Trees and Tables->Table Column filtering' in a tree
And the user selects the row with 'Id' column and '1' value in <tableCaption> table
And the user selects the date on a day '2' after today as 'TO' date in 'Date' filter in <tableCaption> table
And the user makes 'Date' column not visible from the settings wheel for <tableCaption> table
Then the user should not see 'Date' column in <tableCaption> table
And the user should see that rows in 'Id' column contain the values from '0' to '49' in <tableCaption> table
When the user makes 'Date' column visible from the settings wheel for <tableCaption> table
Then the user should see 'Date' column in <tableCaption> table
And the user should see that rows in 'Id' column contain the values from '0' to '49' in <tableCaption> table
And the user should see that row with 'Id' column and '1' value is selected in <tableCaption> table
Examples:
|tableCaption|
|Simple Table showing filtering behaviour|

Scenario: Input into 'Name' column a text with beginning part of column's value
Given the user refresh the Example page
When the user selects the item 'Trees and Tables->Table Column filtering' in a tree
And the user inputs 'us' text into 'Name' filter in <tableCaption> table
Then the user should see no rows in <tableCaption> table
Examples:
|tableCaption|
|Simple Table showing filtering behaviour|

Scenario: Input into 'Name' column a text with middle part of column's value
Given the user refresh the Example page
When the user selects the item 'Trees and Tables->Table Column filtering' in a tree
And the user inputs 'er' text into 'Name' filter in <tableCaption> table
Then the user should see no rows in <tableCaption> table
Examples:
|tableCaption|
|Simple Table showing filtering behaviour|

Scenario: Input into 'Name' column a text with end part of column's value
Given the user refresh the Example page
When the user selects the item 'Trees and Tables->Table Column filtering' in a tree
And the user inputs 'r3' text into 'Name' filter in <tableCaption> table
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
Then the user should see that values are sorted descendingly in 'Id' column in <tableCaption> table
Examples:
|tableCaption|
|Simple Table showing filtering behaviour|

Scenario: Column 'Id' is unsorted
Given the user refresh the Example page
When the user selects the item 'Trees and Tables->Table Column filtering' in a tree
And the user clicks '3' times on 'Id' column in <tableCaption> table
Then the user should see that values are sorted as '0,1,2,3,4,5,6,7,8,9,10,11' in 'Id' column in <tableCaption> table
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
Then the user should see that values are sorted descendingly in 'Name' column in <tableCaption> table
Examples:
|tableCaption|
|Simple Table showing filtering behaviour|

Scenario: Column 'Name' is unsorted
Given the user refresh the Example page
When the user selects the item 'Trees and Tables->Table Column filtering' in a tree
And the user clicks '3' times on 'Name' column in <tableCaption> table
Then the user should see that values are sorted as 'user0,user1,user2,user3,user4,user5' in 'Name' column in <tableCaption> table
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
Then the user should see that values are sorted descendingly in 'Name' column in <tableCaption> table
Examples:
|tableCaption|
|Simple Table showing filtering behaviour|

Scenario: Re-unsort the 'Id' column
Given the user refresh the Example page
When the user selects the item 'Trees and Tables->Table Column filtering' in a tree
And the user clicks '6' times on 'Name' column in <tableCaption> table
Then the user should see that values are sorted as '0,1,2,3,4,5,6,7,8,9,10,11' in 'Id' column in <tableCaption> table
Examples:
|tableCaption|
|Simple Table showing filtering behaviour|

Scenario: Sort 'Date' column ascendingly
Given the user refresh the Example page
When the user selects the item 'Trees and Tables->Table Column filtering' in a tree
And the user clicks '1' times on 'Date' column in <tableCaption> table
Then the user should see that values are sorted as date ascendingly in 'Date' column in <tableCaption> table
Examples:
|tableCaption|
|Simple Table showing filtering behaviour|

Scenario: Sort 'Date' column descendingly
Given the user refresh the Example page
When the user selects the item 'Trees and Tables->Table Column filtering' in a tree
And the user clicks '2' times on 'Date' column in <tableCaption> table
Then the user should see that values are sorted as date descendingly in 'Date' column in <tableCaption> table
Examples:
|tableCaption|
|Simple Table showing filtering behaviour|