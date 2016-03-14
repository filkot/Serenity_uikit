*-----------------------------------------------------------------------------------------------------------------------
* Tested application: vaadin_example
*
* UI element: Trees and Tables -> Table with filters
*
* Author: Maksim Zhelezko
* Created Date: 11.03.2016
*-----------------------------------------------------------------------------------------------------------------------
Meta: @group: Simple Table
GivenStories: stories/example/CommonLoginExamplesApp.story

Scenario: Filter rows by Receiving Country as 'ALL' and Transmitting Country as 'ALL'
Given the user refresh the Example page
When the user select 'Trees and Tables->Table with filters' in tree
And the user select 'ALL' in comboBox with caption 'Receiving Country'
And the user select 'ALL' in comboBox with caption 'Transmitting Country'
Then they should see rows with column 'Filling ID' and values from '0' to '99' in 'COUNTRIES' table

Scenario: Filter rows by Receiving Country
Given the user refresh the Example page
When the user select 'Trees and Tables->Table with filters' in tree
And the user select 'receiving country0' in comboBox with caption 'Receiving Country'
And the user select 'ALL' in comboBox with caption 'Transmitting Country'
Then they should see rows with column 'Filling ID' and values from '0' to '0' in 'COUNTRIES' table
When the user select 'receiving country1' in comboBox with caption 'Receiving Country'
Then they should see rows with column 'Filling ID' and values from '1' to '1' in 'COUNTRIES' table
When the user select 'receiving country2' in comboBox with caption 'Receiving Country'
Then they should see rows with column 'Filling ID' and values from '2' to '2' in 'COUNTRIES' table
When the user select 'receiving country3' in comboBox with caption 'Receiving Country'
Then they should see rows with column 'Filling ID' and values from '3' to '3' in 'COUNTRIES' table
When the user select 'receiving country4' in comboBox with caption 'Receiving Country'
Then they should see rows with column 'Filling ID' and values from '4' to '4' in 'COUNTRIES' table

Scenario: Filter rows by Transmitting Country
Given the user refresh the Example page
When the user select 'Trees and Tables->Table with filters' in tree
And the user select 'ALL' in comboBox with caption 'Receiving Country'
And the user select 'transmitting country0' in comboBox with caption 'Transmitting Country'
Then they should see rows with column 'Filling ID' and values from '0' to '0' in 'COUNTRIES' table
When the user select 'transmitting country1' in comboBox with caption 'Transmitting Country'
Then they should see rows with column 'Filling ID' and values from '1' to '1' in 'COUNTRIES' table
When the user select 'transmitting country2' in comboBox with caption 'Transmitting Country'
Then they should see rows with column 'Filling ID' and values from '2' to '2' in 'COUNTRIES' table
When the user select 'transmitting country3' in comboBox with caption 'Transmitting Country'
Then they should see rows with column 'Filling ID' and values from '3' to '3' in 'COUNTRIES' table
When the user select 'transmitting country4' in comboBox with caption 'Transmitting Country'
Then they should see rows with column 'Filling ID' and values from '4' to '4' in 'COUNTRIES' table

Scenario: Filter rows by Receiving Country as 'receiving country1' and Transmitting Country as 'transmitting country1'
Given the user refresh the Example page
When the user select 'Trees and Tables->Table with filters' in tree
And the user select 'receiving country1' in comboBox with caption 'Receiving Country'
And the user select 'transmitting country1' in comboBox with caption 'Transmitting Country'
Then they should see rows with column 'Filling ID' and values from '1' to '1' in 'COUNTRIES' table

Scenario: Filter rows by Receiving Country as 'receiving country1' and Transmitting Country as 'transmitting country2'
Given the user refresh the Example page
When the user select 'Trees and Tables->Table with filters' in tree
And the user select 'receiving country1' in comboBox with caption 'Receiving Country'
And the user select 'transmitting country2' in comboBox with caption 'Transmitting Country'
Then they should see no rows with column 'Filling ID' in 'COUNTRIES' table