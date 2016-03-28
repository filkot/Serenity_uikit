*-----------------------------------------------------------------------------------------------------------------------
* Tested application: vaadin_example
*
* UI element: Trees and Tables -> Editable Table
*
* Author: Maksim Zhelezko
* Date: 09.03.2016
*-----------------------------------------------------------------------------------------------------------------------
Meta: @group: LazyDataLoadingTable
GivenStories: stories/example/CommonLoginExamplesApp.story

Scenario: Enabled/Disabled buttons for data loading
Given the user refresh the Example page
When the user selects the item 'Trees and Tables->Lazy Data Loading->Table' in a tree
Then the user should see that 'Load data' button is enabled
And the user should see that 'Stop loading' button is disabled
When the user clicks on 'Load data' button
Then the user should see that 'Load data' button is disabled
And the user should see that 'Stop loading' button is enabled
When the user waits until data is loaded in <tableCaption> table
Then the user should see that 'Load data' button is enabled
And the user should see that 'Stop loading' button is disabled
Examples:
|tableCaption|
|TableWithProgressBarPresenter example: Lazy table|

Scenario: Lazy data loading into table
Given the user refresh the Example page
When the user selects the item 'Trees and Tables->Lazy Data Loading->Table' in a tree
And the user clicks on 'Load data' button
And the user waits until data is loaded in <tableCaption> table
Then the user should see that rows with 'Id' column contain the values from '0' to '4' in <tableCaption> table
And the user should see that values are sorted as 'user0,user1,user2,user3,user4' in 'Name' column in <tableCaption> table
And the user should see 'Password' column in <tableCaption> table
Examples:
|tableCaption|
|TableWithProgressBarPresenter example: Lazy table|

Scenario: Lazy data re-loading into table
Given the user refresh the Example page
When the user selects the item 'Trees and Tables->Lazy Data Loading->Table' in a tree
And the user clicks on 'Load data' button
And the user waits until data is loaded in <tableCaption> table
And the user clicks on 'Load data' button
And the user waits until data is loaded in <tableCaption> table
Then the user should see that rows with 'Id' column contain the values from '0' to '4' in <tableCaption> table
And the user should see that values are sorted as 'user0,user1,user2,user3,user4' in 'Name' column in <tableCaption> table
And the user should see 'Password' column in <tableCaption> table
Examples:
|tableCaption|
|TableWithProgressBarPresenter example: Lazy table|

Scenario: Stop/Resume lazy loading into table
Given the user refresh the Example page
When the user selects the item 'Trees and Tables->Lazy Data Loading->Table' in a tree
And the user clicks on 'Load data' button
And the user waits until '1' rows are loaded in <tableCaption> table
And the user clicks on 'Stop loading' button
Then the user should see that rows with 'Id' column contain the values from '0' to '1' in <tableCaption> table
When the user clicks on 'Load data' button
And the user waits until data is loaded in <tableCaption> table
Then the user should see that rows with 'Id' column contain the values from '0' to '4' in <tableCaption> table
And the user should see that values are sorted as 'user0,user1,user2,user3,user4' in 'Name' column in <tableCaption> table
And the user should see 'Password' column in <tableCaption> table
Examples:
|tableCaption|
|TableWithProgressBarPresenter example: Lazy table|

Scenario: Make 'Id' column visible when the data is loaded
Given the user refresh the Example page
When the user selects the item 'Trees and Tables->Lazy Data Loading->Table' in a tree
And the user clicks on 'Load data' button
And the user waits until data is loaded in <tableCaption> table
And the user makes 'Id' column not visible from the settings wheel for <tableCaption> table
Then the user should not see 'Id' column in <tableCaption> table
And the user should not see 'Name' column in <tableCaption> table
And the user should see 'Password' column in <tableCaption> table
And the user should see that values are sorted as 'user0,user1,user2,user3,user4' in 'Name' column in <tableCaption> table
Examples:
|tableCaption|
|TableWithProgressBarPresenter example: Lazy table|

Scenario: Make 'Name' and 'Password' columns not visible when the data is loaded
Given the user refresh the Example page
When the user selects the item 'Trees and Tables->Lazy Data Loading->Table' in a tree
And the user clicks on 'Load data' button
And the user waits until data is loaded in <tableCaption> table
And the user makes 'Name' column not visible from the settings wheel for <tableCaption> table
And the user makes 'Password' column not visible from the settings wheel for <tableCaption> table
Then the user should see 'Id' column in <tableCaption> table
And the user should not see 'Name' column in <tableCaption> table
And the user should not see 'Password' column in <tableCaption> table
And the user should see that rows with 'Id' column contain the values from '0' to '4' in <tableCaption> table
Examples:
|tableCaption|
|TableWithProgressBarPresenter example: Lazy table|

Scenario: Make all columns not visible when the data is loaded
Given the user refresh the Example page
When the user selects the item 'Trees and Tables->Lazy Data Loading->Table' in a tree
And the user clicks on 'Load data' button
And the user waits until data is loaded in <tableCaption> table
And the user makes 'Id' column not visible from the settings wheel for <tableCaption> table
And the user makes 'Name' column not visible from the settings wheel for <tableCaption> table
And the user makes 'Password' column not visible from the settings wheel for <tableCaption> table
Then the user should see no columns in <tableCaption> table
Then the user should see no rows in <tableCaption> table
Examples:
|tableCaption|
|TableWithProgressBarPresenter example: Lazy table|

Scenario: Make all columns not visible when the data is loaded
Given the user refresh the Example page
When the user selects the item 'Trees and Tables->Lazy Data Loading->Table' in a tree
And the user clicks on 'Load data' button
And the user waits until data is loaded in <tableCaption> table
And the user makes 'Id' column not visible from the settings wheel for <tableCaption> table
And the user makes 'Name' column not visible from the settings wheel for <tableCaption> table
And the user makes 'Password' column not visible from the settings wheel for <tableCaption> table
Then the user should see no columns in <tableCaption> table
And the user should see no rows in <tableCaption> table
When the user makes 'Id' column visible from the settings wheel for <tableCaption> table
And the user makes 'Name' column visible from the settings wheel for <tableCaption> table
And the user makes 'Password' column visible from the settings wheel for <tableCaption> table
Then the user should see that rows with 'Id' column contain the values from '0' to '4' in <tableCaption> table
And the user should see that values are sorted as 'user0,user1,user2,user3,user4' in 'Name' column in <tableCaption> table
And the user should see 'Password' column in <tableCaption> table
Examples:
|tableCaption|
|TableWithProgressBarPresenter example: Lazy table|

Scenario: Unhide 'Id' column when the data is loaded

Scenario: Unhide 'Id' and 'Name' columns when the data is loaded

Scenario: Unhide all columns when the data is loaded

Scenario: Select a row and re-load the data

Scenario: Select a row and resume the loading the data