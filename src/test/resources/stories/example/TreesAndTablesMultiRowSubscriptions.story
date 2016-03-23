*-----------------------------------------------------------------------------------------------------------------------
* Tested application: vaadin_example
*
* UI element: Trees and Tables -> Editable Table
*
* Author: Maksim Zhelezko
* Date: 23.03.2016
*-----------------------------------------------------------------------------------------------------------------------
Meta: @group: Editable Table
GivenStories: stories/example/CommonLoginExamplesApp.story

Scenario: Remove all rows and use 'Change Random Row' button
When the user selects the item 'Trees and Tables->Multi-Row Subscription' in a tree
And the user removes all rows by clicking on 'Remove Row' button
And the user presses on 'Remove Row' button
Then the user should see no rows in a table

Scenario: Remove the unselected row
When the user selects the item 'Trees and Tables->Multi-Row Subscription' in a tree
And the user presses on 'Remove Row' button
Then the user should see '10' rows in a table
And the user should see Total Rows number as '10'
And the user should see that Sum Value equals sum of values in all rows in a table

Scenario: Remove the selected row
When the user selects the item 'Trees and Tables->Multi-Row Subscription' in a tree
And the user selects the row with 'item0' value in a textfield in 'Name' column in <tableCaption> table
And the user presses on 'Remove Row' button
Then the user should see '9' rows in a table
And the user should see Total Rows number as '9'
And the user should see that Sum Value equals sum of values in all rows in a table

Scenario: Remove the deselected row
When the user selects the item 'Trees and Tables->Multi-Row Subscription' in a tree
And the user selects the row with 'item0' value in a textfield in 'Name' column in <tableCaption> table
And the user deselects the row with 'item0' value in a textfield in 'Name' column in <tableCaption> table
And the user presses on 'Remove Row' button
Then the user should see '10' rows in a table
And the user should see Total Rows number as '10'
And the user should see that Sum Value equals sum of values in all rows in a table

Scenario: Change Random Row when the row is unselected
When the user selects the item 'Trees and Tables->Multi-Row Subscription' in a tree
And the user presses on 'Change Random Row' button
Then the user should see '10' rows in a table
And the user should see Total Rows number as '10'
And the user should see that Sum Value equals sum of values in all rows in a table

Scenario: Change Random Row when the row is selected
When the user selects the item 'Trees and Tables->Multi-Row Subscription' in a tree
And the user selects the row with 'item1' value in a textfield in 'Name' column in <tableCaption> table
And the user presses on 'Change Random Row' button
Then the user should see '10' rows in a table
And the user should see Total Rows number as '10'
And the user should see that Sum Value equals sum of values in all rows in a table

Scenario: Change Random Row when the row is deselected
When the user selects the item 'Trees and Tables->Multi-Row Subscription' in a tree
And the user selects the row with 'item1' value in a textfield in 'Name' column in <tableCaption> table
And the user deselects the row with 'item1' value in a textfield in 'Name' column in <tableCaption> table
And the user presses on 'Change Random Row' button
Then the user should see '10' rows in a table
And the user should see Total Rows number as '10'
And the user should see that Sum Value equals sum of values in all rows in a table

Scenario: Add row with no value and name and use 'Change Random Row' until a newly added is set
When the user selects the item 'Trees and Tables->Multi-Row Subscription' in a tree
And the user removes all rows by clicking on 'Remove Row' button
And the user presses on 'Add Row' button
And the user makes the textfield empty in 'Value' column in the first row in a table
Then the user should see '1' rows in a table
And the user should see Total Rows number as '1'
And the user should see that Sum Value equals sum of values in all rows in a table
And the user presses on 'Change Random Row' button
Then the user should see '1' rows in a table
And the user should see Total Rows number as '1'
And the user should see that Sum Value equals sum of values in all rows in a table

Scenario: Add row with value and no name and use 'Change Random Row' until a newly added is set
When the user selects the item 'Trees and Tables->Multi-Row Subscription' in a tree
And the user removes all rows by clicking on 'Remove Row' button
And the user presses on 'Add Row' button
And the user makes the textfield empty in 'Name' column in the first row in a table
Then the user should see '1' rows in a table
And the user should see Total Rows number as '1'
And the user should see that Sum Value equals sum of values in all rows in a table
And the user presses on 'Change Random Row' button
Then the user should see '1' rows in a table
And the user should see Total Rows number as '1'
And the user should see that Sum Value equals sum of values in all rows in a table
And the user should see the empty value in a textfield in 'Name' column in the first row in a table

Scenario: Add row with no value and no name and use 'Change Random Row' until a newly added is set
When the user selects the item 'Trees and Tables->Multi-Row Subscription' in a tree
And the user removes all rows by clicking on 'Remove Row' button
And the user presses on 'Add Row' button
And the user makes the textfield empty in 'Name' column in the first row in a table
And the user makes the textfield empty in 'Value' column in the first row in a table
Then the user should see '1' rows in a table
And the user should see Total Rows number as '1'
And the user should see that Sum Value equals sum of values in all rows in a table
And the user presses on 'Change Random Row' button
Then the user should see '1' rows in a table
And the user should see Total Rows number as '1'
And the user should see that Sum Value equals sum of values in all rows in a table
And the user should see the empty value in a textfield in 'Name' column in the first row in a table

Scenario: Add row with value and name and use 'Change Random Row' until a newly added is set
When the user selects the item 'Trees and Tables->Multi-Row Subscription' in a tree
And the user removes all rows by clicking on 'Remove Row' button
And the user presses on 'Add Row' button
Then the user should see '1' rows in a table
And the user should see Total Rows number as '1'
And the user should see that Sum Value equals sum of values in all rows in a table
And the user presses on 'Change Random Row' button
Then the user should see '1' rows in a table
And the user should see Total Rows number as '1'
And the user should see that Sum Value equals sum of values in all rows in a table

Scenario: Add the one row and use 'Change Random Row' button
When the user selects the item 'Trees and Tables->Multi-Row Subscription' in a tree
And the user presses on 'Add Row' button
Then the user should see '11' rows in a table
And the user should see Total Rows number as '11'
And the user should see that Sum Value equals sum of values in all rows in a table
And the user presses on 'Change Random Row' button
Then the user should see '11' rows in a table
And the user should see Total Rows number as '11'
And the user should see that Sum Value equals sum of values in all rows in a table

Scenario: Input a new Name and use 'Change Random Row' button
When the user selects the item 'Trees and Tables->Multi-Row Subscription' in a tree
And the user removes all rows by clicking on 'Remove Row' button
And the user presses on 'Add Row' button
And the user inputs 'a1' text into 'Name' column for row with 'Name' column and 'item 0' value in a table
And the user presses on 'Change Random Row' button
Then the user should see that Sum Value equals sum of values in all rows in a table
And the user should see 'a1' value in a textfield in 'Name' column in the first row in a table

Scenario: Input a new Value and use 'Change Random Row' button
When the user selects the item 'Trees and Tables->Multi-Row Subscription' in a tree
And the user removes all rows by clicking on 'Remove Row' button
And the user presses on 'Add Row' button
And the user inputs '999999999' text into 'Name' column for row with 'Name' column and 'item 0' value in a table
And the user presses on 'Change Random Row' button
Then the user should see that Sum Value equals sum of values in all rows in a table
And the user should see 'a1' value in a textfield in 'Name' column in the first row in a table

Scenario: Input a new Name and use 'Add Row' button


Scenario: Input a new Value and use 'Add Row' button


Scenario: Input a new Name and use 'Remove Row' button


Scenario: Input a new Value and use 'Remove Row' button


Scenario: Callculate when all values are positive


Scenario: Callculate when all values are negative


Scenario: Callculate with all values are zero


Scenario: Callculate when Value is a value with letters


Scenario: Callculate when Value is a value with special characters