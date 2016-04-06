*-----------------------------------------------------------------------------------------------------------------------
* Tested application: vaadin_example
*
* UI element: Trees and Tables -> Table with filters
*
* Author: Maksim Zhelezko
* Date: 11.03.2016
*-----------------------------------------------------------------------------------------------------------------------
Meta: @group: TableWithFilters
GivenStories: stories/example/CommonLoginExamplesApp.story

Scenario: Filter rows by Receiving Country as 'ALL' and Transmitting Country as 'ALL'
When the user selects the item 'Trees and Tables->Table with filters' in a tree
And the user selects 'ALL' item from 'Receiving Country' combo box
And the user selects 'ALL' item from 'Transmitting Country' combo box
Then the user should see that rows in 'Filling ID' column contain the values from '0' to '99' in <tableCaption> table
Examples:
|tableCaption|
|COUNTRIES|

Scenario: Filter rows by Receiving Country
Given the user refresh the Example page
When the user selects the item 'Trees and Tables->Table with filters' in a tree
And the user selects 'receiving country0' item from 'Receiving Country' combo box
And the user selects 'ALL' item from 'Transmitting Country' combo box
Then the user should see that rows in 'Filling ID' column contain the values from '0' to '0' in <tableCaption> table
When the user selects 'receiving country1' item from 'Receiving Country' combo box
Then the user should see that rows in 'Filling ID' column contain the values from '1' to '1' in <tableCaption> table
When the user selects 'receiving country2' item from 'Receiving Country' combo box
Then the user should see that rows in 'Filling ID' column contain the values from '2' to '2' in <tableCaption> table
When the user selects 'receiving country3' item from 'Receiving Country' combo box
Then the user should see that rows in 'Filling ID' column contain the values from '3' to '3' in <tableCaption> table
When the user selects 'receiving country4' item from 'Receiving Country' combo box
Then the user should see that rows in 'Filling ID' column contain the values from '4' to '4' in <tableCaption> table
Examples:
|tableCaption|
|COUNTRIES|

Scenario: Filter rows by Transmitting Country
Given the user refresh the Example page
When the user selects the item 'Trees and Tables->Table with filters' in a tree
And the user selects 'ALL' item from 'Receiving Country' combo box
And the user selects 'transmitting country0' item from 'Transmitting Country' combo box
Then the user should see that rows in 'Filling ID' column contain the values from '0' to '0' in <tableCaption> table
When the user selects 'transmitting country1' item from 'Transmitting Country' combo box
Then the user should see that rows in 'Filling ID' column contain the values from '1' to '1' in <tableCaption> table
When the user selects 'transmitting country2' item from 'Transmitting Country' combo box
Then the user should see that rows in 'Filling ID' column contain the values from '2' to '2' in <tableCaption> table
When the user selects 'transmitting country3' item from 'Transmitting Country' combo box
Then the user should see that rows in 'Filling ID' column contain the values from '3' to '3' in <tableCaption> table
When the user selects 'transmitting country4' item from 'Transmitting Country' combo box
Then the user should see that rows in 'Filling ID' column contain the values from '4' to '4' in <tableCaption> table
Examples:
|tableCaption|
|COUNTRIES|

Scenario: Filter rows by Receiving Country as 'receiving country1' and Transmitting Country as 'transmitting country1'
Given the user refresh the Example page
When the user selects the item 'Trees and Tables->Table with filters' in a tree
And the user selects 'receiving country1' item from 'Receiving Country' combo box
And the user selects 'transmitting country1' item from 'Transmitting Country' combo box
Then the user should see that rows in 'Filling ID' column contain the values from '1' to '1' in <tableCaption> table
Examples:
|tableCaption|
|COUNTRIES|

Scenario: Filter rows by Receiving Country as 'receiving country1' and Transmitting Country as 'transmitting country2'
Given the user refresh the Example page
When the user selects the item 'Trees and Tables->Table with filters' in a tree
And the user selects 'receiving country1' item from 'Receiving Country' combo box
And the user selects 'transmitting country2' item from 'Transmitting Country' combo box
Then the user should see no rows in <tableCaption> table
Examples:
|tableCaption|
|COUNTRIES|

Scenario: Filter and filter back the across selected rows by Receiving Country
Given the user refresh the Example page
When the user selects the item 'Trees and Tables->Table with filters' in a tree
And the user multi-selects the row with 'Filling ID' column and '0' value in <tableCaption> table
Then the user should see that row with 'Filling ID' column and '0' value is selected in <tableCaption> table
When the user selects the row with 'Filling ID' column and '2' value in <tableCaption> table
Then the user should see that row with 'Filling ID' column and '2' value is selected in <tableCaption> table
When the user selects 'receiving country0' item from 'Receiving Country' combo box
And the user selects 'ALL' item from 'Transmitting Country' combo box
Then the user should see that rows in 'Filling ID' column contain the values from '0' to '0' in <tableCaption> table
When the user selects 'receiving country1' item from 'Receiving Country' combo box
Then the user should see that rows in 'Filling ID' column contain the values from '1' to '1' in <tableCaption> table
When the user selects 'receiving country2' item from 'Receiving Country' combo box
Then the user should see that rows in 'Filling ID' column contain the values from '2' to '2' in <tableCaption> table
When the user selects 'receiving country3' item from 'Receiving Country' combo box
Then the user should see that rows in 'Filling ID' column contain the values from '3' to '3' in <tableCaption> table
When the user selects 'receiving country4' item from 'Receiving Country' combo box
Then the user should see that rows in 'Filling ID' column contain the values from '4' to '4' in <tableCaption> table
When the user selects 'ALL' item from 'Receiving Country' combo box
Then the user should see that rows in 'Filling ID' column contain the values from '0' to '99' in <tableCaption> table
And the user should see that row with 'Filling ID' column and '0' value is selected in <tableCaption> table
And the user should see that row with 'Filling ID' column and '2' value is selected in <tableCaption> table
Examples:
|tableCaption|
|COUNTRIES|

Scenario: Filter and filter back the selected rows by Transmitting Country
Given the user refresh the Example page
When the user selects the item 'Trees and Tables->Table with filters' in a tree
And the user multi-selects the row with 'Filling ID' column and '1' value in <tableCaption> table
Then the user should see that row with 'Filling ID' column and '1' value is selected in <tableCaption> table
When the user selects the row with 'Filling ID' column and '2' value in <tableCaption> table
Then the user should see that row with 'Filling ID' column and '2' value is selected in <tableCaption> table
When the user selects 'ALL' item from 'Receiving Country' combo box
And the user selects 'transmitting country0' item from 'Transmitting Country' combo box
Then the user should see that rows in 'Filling ID' column contain the values from '0' to '0' in <tableCaption> table
When the user selects 'transmitting country1' item from 'Transmitting Country' combo box
Then the user should see that rows in 'Filling ID' column contain the values from '1' to '1' in <tableCaption> table
When the user selects 'transmitting country2' item from 'Transmitting Country' combo box
Then the user should see that rows in 'Filling ID' column contain the values from '2' to '2' in <tableCaption> table
When the user selects 'transmitting country3' item from 'Transmitting Country' combo box
Then the user should see that rows in 'Filling ID' column contain the values from '3' to '3' in <tableCaption> table
When the user selects 'transmitting country4' item from 'Transmitting Country' combo box
Then the user should see that rows in 'Filling ID' column contain the values from '4' to '4' in <tableCaption> table
When the user selects 'ALL' item from 'Transmitting Country' combo box
Then the user should see that rows in 'Filling ID' column contain the values from '0' to '99' in <tableCaption> table
And the user should see that row with 'Filling ID' column and '0' value is selected in <tableCaption> table
And the user should see that row with 'Filling ID' column and '2' value is selected in <tableCaption> table
Examples:
|tableCaption|
|COUNTRIES|