*-----------------------------------------------------------------------------------------------------------------------
* Tested application: vaadin_example
*
* UI element: Trees and Tables -> Lazy Data Loading -> Table
*
* Author: Maksim Zhelezko
* Date: 30.03.2016
*-----------------------------------------------------------------------------------------------------------------------
Meta: @group: LazyDataLoadingTreeTable
GivenStories: stories/example/CommonLoginExamplesApp.story

Scenario: Enabled/Disabled buttons for data loading
Given the user refresh the Example page
When the user selects the item 'Trees and Tables->Lazy Data Loading->TreeTable' in a tree
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
When the user selects the item 'Trees and Tables->Lazy Data Loading->TreeTable' in a tree
And the user clicks on 'Load data' button
And the user waits until data is loaded in <tableCaption> table
Then the user should see that values are sorted as 'child1,child4,child7,child10,child13' in 'Name' column in <tableCaption> table
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
Then the user should see that values are sorted as 'child1,child4,child7,child10,child13' in 'Name' column in <tableCaption> table
Examples:
|tableCaption|
|TableWithProgressBarPresenter example: Lazy table|

Scenario: Stop/Resume lazy loading into table
Given the user refresh the Example page
When the user selects the item 'Trees and Tables->Lazy Data Loading->TreeTable' in a tree
And the user clicks on 'Load data' button
And the user waits until '1' row is loaded into <tableCaption> table
And the user clicks on 'Stop loading' button
Then the user should see that values are sorted as 'child1,child4' in 'Name' column in <tableCaption> table
When the user clicks on 'Load data' button
And the user waits until data is loaded in <tableCaption> table
Then the user should see that values are sorted as 'child1,child4,child7,child10,child13' in 'Name' column in <tableCaption> table
Examples:
|tableCaption|
|TableWithProgressBarPresenter example: Lazy table|

Scenario: Make 'Id' column visible when the data is loaded
Given the user refresh the Example page
When the user selects the item 'Trees and Tables->Lazy Data Loading->TreeTable' in a tree
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

Scenario: Make 'Id' and 'Password' columns not visible when the data is loaded
Given the user refresh the Example page
When the user selects the item 'Trees and Tables->Lazy Data Loading->TreeTable' in a tree
And the user clicks on 'Load data' button
And the user waits until data is loaded in <tableCaption> table
And the user makes 'Id' column not visible from the settings wheel for <tableCaption> table
And the user makes 'Password' column not visible from the settings wheel for <tableCaption> table
Then the user should not see 'Id' column in <tableCaption> table
And the user should see 'Name' column in <tableCaption> table
And the user should not see 'Password' column in <tableCaption> table
And the user should see that values are sorted as 'user0,user1,user2,user3,user4' in 'Name' column in <tableCaption> table
Examples:
|tableCaption|
|TableWithProgressBarPresenter example: Lazy table|

Scenario: Make all columns not visible when the data is loaded
Given the user refresh the Example page
When the user selects the item 'Trees and Tables->Lazy Data Loading->TreeTable' in a tree
And the user clicks on 'Load data' button
And the user waits until data is loaded in <tableCaption> table
And the user makes 'Id' column not visible from the settings wheel for <tableCaption> table
And the user makes 'Name' column not visible from the settings wheel for <tableCaption> table
And the user makes 'Password' column not visible from the settings wheel for <tableCaption> table
Then the user should see no columns in <tableCaption> table
And the user should see no rows in <tableCaption> table
Examples:
|tableCaption|
|TableWithProgressBarPresenter example: Lazy table|

Scenario: Make all columns not visible when the data is loaded
Given the user refresh the Example page
When the user selects the item 'Trees and Tables->Lazy Data Loading->TreeTable' in a tree
And the user clicks on 'Load data' button
And the user waits until data is loaded in <tableCaption> table
And the user makes 'Id' column not visible from the settings wheel for <tableCaption> table
And the user makes 'Name' column not visible from the settings wheel for <tableCaption> table
And the user makes 'Password' column not visible from the settings wheel for <tableCaption> table
And the user makes 'Id' column visible from the settings wheel for <tableCaption> table
And the user makes 'Name' column visible from the settings wheel for <tableCaption> table
And the user makes 'Password' column visible from the settings wheel for <tableCaption> table
Then the user should see that values are sorted as 'user0,user1,user2,user3,user4' in 'Name' column in <tableCaption> table
Examples:
|tableCaption|
|TableWithProgressBarPresenter example: Lazy table|

Scenario: Unhide 'Name' column when the data is loaded
Given the user refresh the Example page
When the user selects the item 'Trees and Tables->Lazy Data Loading->TreeTable' in a tree
And the user makes 'Name' column not visible from the settings wheel for <tableCaption> table
And the user clicks on 'Load data' button
And the user waits until data is loaded in <tableCaption> table
And the user makes 'Name' column visible from the settings wheel for <tableCaption> table
Then the user should see that values are sorted as 'user0,user1,user2,user3,user4' in 'Name' column in <tableCaption> table
Examples:
|tableCaption|
|TableWithProgressBarPresenter example: Lazy table|

Scenario: Unhide 'Id' and 'Name' columns when the data is loaded
Given the user refresh the Example page
When the user selects the item 'Trees and Tables->Lazy Data Loading->TreeTable' in a tree
And the user makes 'Name' column not visible from the settings wheel for <tableCaption> table
And the user makes 'Name' column not visible from the settings wheel for <tableCaption> table
And the user clicks on 'Load data' button
And the user waits until data is loaded in <tableCaption> table
And the user makes 'Id' column visible from the settings wheel for <tableCaption> table
And the user makes 'Name' column visible from the settings wheel for <tableCaption> table
Then the user should see that values are sorted as 'user0,user1,user2,user3,user4' in 'Name' column in <tableCaption> table
Examples:
|tableCaption|
|TableWithProgressBarPresenter example: Lazy table|

Scenario: Unhide all columns when the data is loaded
Given the user refresh the Example page
When the user selects the item 'Trees and Tables->Lazy Data Loading->TreeTable' in a tree
And the user makes 'Id' column not visible from the settings wheel for <tableCaption> table
And the user makes 'Name' column not visible from the settings wheel for <tableCaption> table
And the user makes 'Password' column not visible from the settings wheel for <tableCaption> table
And the user clicks on 'Load data' button
And the user waits until data is loaded in <tableCaption> table
And the user makes 'Id' column visible from the settings wheel for <tableCaption> table
And the user makes 'Name' column visible from the settings wheel for <tableCaption> table
And the user makes 'Password' column visible from the settings wheel for <tableCaption> table
Then the user should see that values are sorted as 'user0,user1,user2,user3,user4' in 'Name' column in <tableCaption> table
Examples:
|tableCaption|
|TableWithProgressBarPresenter example: Lazy table|

Scenario: Select the parent row and re-load the data
Given the user refresh the Example page
When the user selects the item 'Trees and Tables->Lazy Data Loading->TreeTable' in a tree
And the user clicks on 'Load data' button
And the user waits until data is loaded in <tableCaption> table
And the user selects the row with 'Name' column and 'child1' value in <tableCaption> table
And the user clicks on 'Load data' button
And the user waits until data is loaded in <tableCaption> table
Then the user should see that row with 'Name' column and 'child1' value is unselected in <tableCaption> table
Examples:
|tableCaption|
|TableWithProgressBarPresenter example: Lazy table|

Scenario: Select the parent row and resume the loading the data
Given the user refresh the Example page
When the user selects the item 'Trees and Tables->Lazy Data Loading->TreeTable' in a tree
And the user clicks on 'Load data' button
And the user waits until '1' row is loaded into <tableCaption> table
And the user clicks on 'Stop loading' button
And the user selects the row with 'Name' column and 'child1' value in <tableCaption> table
And the user clicks on 'Load data' button
And the user waits until data is loaded in <tableCaption> table
Then the user should see that row with 'Name' column and 'child1' value is selected in <tableCaption> table
Examples:
|tableCaption|
|TableWithProgressBarPresenter example: Lazy table|

Scenario: Select the multiple parent rows and re-load the data
Given the user refresh the Example page
When the user selects the item 'Trees and Tables->Lazy Data Loading->TreeTable' in a tree
And the user clicks on 'Load data' button
And the user waits until data is loaded in <tableCaption> table
And the user multi-selects the row with 'Name' column and 'child4' value in <tableCaption> table
And the user multi-selects the row with 'Name' column and 'child7' value in <tableCaption> table
And the user clicks on 'Load data' button
And the user waits until data is loaded in <tableCaption> table
Then the user should see that row with 'Id' column and 'child4' value is unselected in <tableCaption> table
And the user should see that row with 'Id' column and 'child7' value is unselected in <tableCaption> table
Examples:
|tableCaption|
|TableWithProgressBarPresenter example: Lazy table|

Scenario: Expand and re-load the data
Given the user refresh the Example page
When the user selects the item 'Trees and Tables->Lazy Data Loading->TreeTable' in a tree
And the user clicks on 'Load data' button
And the user waits until data is loaded in <tableCaption> table
And the user expands the row with 'Name' column and 'child1' value in <tableCaption> table
And the user clicks on 'Load data' button
And the user waits until data is loaded in <tableCaption> table
Then the user should see that row with 'Name' column and 'child1' value is collapsed in <tableCaption> table
Examples:
|tableCaption|
|TableWithProgressBarPresenter example: Lazy table|

Scenario: Expand and resume the loading the data
Given the user refresh the Example page
When the user selects the item 'Trees and Tables->Lazy Data Loading->TreeTable' in a tree
And the user clicks on 'Load data' button
And the user waits until data is loaded in <tableCaption> table
And the user expands the row with 'Name' column and 'child1' value in <tableCaption> table
And the user clicks on 'Load data' button
And the user waits until data is loaded in <tableCaption> table
Then the user should see that row with 'Name' column and 'child1' value is expanded in <tableCaption> table
Examples:
|tableCaption|
|TableWithProgressBarPresenter example: Lazy table|

Scenario: Select the child row and re-load the data
Given the user refresh the Example page
When the user selects the item 'Trees and Tables->Lazy Data Loading->TreeTable' in a tree
And the user clicks on 'Load data' button
And the user waits until data is loaded in <tableCaption> table
And the user expands the row with 'Name' column and 'child1' value in <tableCaption> table
And the user selects the row with 'Name' column and 'child2' value in <tableCaption> table
And the user clicks on 'Load data' button
And the user waits until data is loaded in <tableCaption> table
Then the user should see that row with 'Name' column and 'child2' value is unselected in <tableCaption> table
Examples:
|tableCaption|
|TableWithProgressBarPresenter example: Lazy table|

Scenario: Select the child row and resume the loading the data
Given the user refresh the Example page
When the user selects the item 'Trees and Tables->Lazy Data Loading->TreeTable' in a tree
And the user clicks on 'Load data' button
And the user waits until '1' row is loaded into <tableCaption> table
And the user clicks on 'Stop loading' button
And the user expands the row with 'Name' column and 'child1' value in <tableCaption> table
And the user selects the row with 'Name' column and 'child2' value in <tableCaption> table
And the user clicks on 'Load data' button
And the user waits until data is loaded in <tableCaption> table
Then the user should see that row with 'Name' column and 'child2' value is selected in <tableCaption> table
Examples:
|tableCaption|
|TableWithProgressBarPresenter example: Lazy table|

Scenario: Select the multiple child rows and re-load the data
Given the user refresh the Example page
When the user selects the item 'Trees and Tables->Lazy Data Loading->TreeTable' in a tree
And the user clicks on 'Load data' button
And the user waits until data is loaded in <tableCaption> table
And the user expands the row with 'Name' column and 'child1' value in <tableCaption> table
And the user multi-selects the row with 'Name' column and 'child2' value in <tableCaption> table
And the user multi-selects the row with 'Name' column and 'child3' value in <tableCaption> table
And the user clicks on 'Load data' button
And the user waits until data is loaded in <tableCaption> table
Then the user should see that row with 'Name' column and 'child2' value is selected in <tableCaption> table
And the user should see that row with 'Name' column and 'child3' value is selected in <tableCaption> table
Examples:
|tableCaption|
|TableWithProgressBarPresenter example: Lazy table|