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
And the user should see Total Rows is '10'
And the user should see that Sum Value equals sum of values in all rows in a table

Scenario: Remove the selected row
When the user selects the item 'Trees and Tables->Multi-Row Subscription' in a tree
And the user selects the row with 'item0' value in a textfield in 'Name' column in <tableCaption> table
And the user presses on 'Remove Row' button
Then the user should see '9' rows in a table
And the user should see Total Rows is '9'
And the user should see that Sum Value equals sum of values in all rows in a table

Scenario: Remove the deselected row
When the user selects the item 'Trees and Tables->Multi-Row Subscription' in a tree
And the user selects the row with 'item0' value in a textfield in 'Name' column in <tableCaption> table
And the user deselects the row with 'item0' value in a textfield in 'Name' column in <tableCaption> table
And the user presses on 'Remove Row' button
Then the user should see '10' rows in a table
And the user should see Total Rows is '10'
And the user should see that Sum Value equals sum of values in all rows in a table

Scenario: Change Random Row when the row is unselected
When the user selects the item 'Trees and Tables->Multi-Row Subscription' in a tree
And the user presses on 'Change Random Row' button
Then the user should see '10' rows in a table
And the user should see Total Rows is '10'
And the user should see that Sum Value equals sum of values in all rows in a table

Scenario: Change Random Row when the row is selected
When the user selects the item 'Trees and Tables->Multi-Row Subscription' in a tree
And the user selects the row with 'item1' value in a textfield in 'Name' column in <tableCaption> table
And the user presses on 'Change Random Row' button
Then the user should see '10' rows in a table
And the user should see Total Rows is '10'
And the user should see that Sum Value equals sum of values in all rows in a table

Scenario: Change Random Row when the row is deselected
When the user selects the item 'Trees and Tables->Multi-Row Subscription' in a tree
And the user selects the row with 'item1' value in a textfield in 'Name' column in <tableCaption> table
And the user deselects the row with 'item1' value in a textfield in 'Name' column in <tableCaption> table
And the user presses on 'Change Random Row' button
Then the user should see '10' rows in a table
And the user should see Total Rows is '10'
And the user should see that Sum Value equals sum of values in all rows in a table

Scenario: Add row with no value and name and use 'Change Random Row' until a newly added is set
When the user selects the item 'Trees and Tables->Multi-Row Subscription' in a tree
And the user removes all rows by clicking on 'Remove Row' button
And the user presses on 'Add Row' button
And the user makes the textfield empty in 'Value' column in the first row in a table
Then the user should see '1' rows in a table
And the user should see Total Rows is '1'
And the user should see that Sum Value equals sum of values in all rows in a table
And the user presses on 'Change Random Row' button
Then the user should see '1' rows in a table
And the user should see Total Rows is '1'
And the user should see that Sum Value equals sum of values in all rows in a table

Scenario: Add row with value and no name and use 'Change Random Row' until a newly added is set
When the user selects the item 'Trees and Tables->Multi-Row Subscription' in a tree
And the user removes all rows by clicking on 'Remove Row' button
And the user presses on 'Add Row' button
And the user makes the textfield empty in 'Name' column in the first row in a table
Then the user should see '1' rows in a table
And the user should see Total Rows is '1'
And the user should see that Sum Value equals sum of values in all rows in a table
And the user presses on 'Change Random Row' button
Then the user should see '1' rows in a table
And the user should see Total Rows is '1'
And the user should see that Sum Value equals sum of values in all rows in a table
And the user should see the empty value in a textfield in 'Name' column in the first row in a table

Scenario: Add row with no value and no name and use 'Change Random Row' until a newly added is set
When the user selects the item 'Trees and Tables->Multi-Row Subscription' in a tree
And the user removes all rows by clicking on 'Remove Row' button
And the user presses on 'Add Row' button
And the user makes the textfield empty in 'Name' column in the first row in a table
And the user makes the textfield empty in 'Value' column in the first row in a table
Then the user should see '1' rows in a table
And the user should see Total Rows is '1'
And the user should see that Sum Value equals sum of values in all rows in a table
And the user presses on 'Change Random Row' button
Then the user should see '1' rows in a table
And the user should see Total Rows is '1'
And the user should see that Sum Value equals sum of values in all rows in a table
And the user should see the empty value in a textfield in 'Name' column in the first row in a table

Scenario: Add row with value and name and use 'Change Random Row' until a newly added is set
When the user selects the item 'Trees and Tables->Multi-Row Subscription' in a tree
And the user removes all rows by clicking on 'Remove Row' button
And the user presses on 'Add Row' button
Then the user should see '1' rows in a table
And the user should see Total Rows is '1'
And the user should see that Sum Value equals sum of values in all rows in a table
And the user presses on 'Change Random Row' button
Then the user should see '1' rows in a table
And the user should see Total Rows is '1'
And the user should see that Sum Value equals sum of values in all rows in a table

Scenario: Add the one row and use 'Change Random Row' button
When the user selects the item 'Trees and Tables->Multi-Row Subscription' in a tree
And the user presses on 'Add Row' button
Then the user should see '11' rows in a table
And the user should see Total Rows is '11'
And the user should see that Sum Value equals sum of values in all rows in a table
And the user presses on 'Change Random Row' button
Then the user should see '11' rows in a table
And the user should see Total Rows is '11'
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
When the user selects the item 'Trees and Tables->Multi-Row Subscription' in a tree
And the user removes all rows by clicking on 'Remove Row' button
And the user presses on 'Add Row' button
And the user inputs 'New Name' text into 'Name' column for row with 'Name' column and 'item 0' value in a table
And the user presses on 'Add Row' button
Then the user should see that Sum Value equals sum of values in all rows in a table
And the user should see 'New Name' value in a textfield in 'Name' column in the first row in a table

Scenario: Input a new Value and use 'Add Row' button
When the user selects the item 'Trees and Tables->Multi-Row Subscription' in a tree
And the user removes all rows by clicking on 'Remove Row' button
And the user presses on 'Add Row' button
And the user inputs '999999999' text into 'Value' column for row with 'Name' column and 'item 0' value in a table
And the user presses on 'Add Row' button
Then the user should see that Sum Value equals sum of values in all rows in a table
And the user should see 'New Name' value in a textfield in 'Name' column in the first row in a table

Scenario: Input a new Name and use 'Remove Row' button
When the user selects the item 'Trees and Tables->Multi-Row Subscription' in a tree
And the user removes all rows by clicking on 'Remove Row' button
And the user presses on 'Add Row' button
And the user inputs 'New Name' text into 'Name' column for row with 'Name' column and 'item 0' value in a table
And the user presses on 'Remove Row' button
Then the user should see that Sum Value equals sum of values in all rows in a table
And the user should see 'New Name' value in a textfield in 'Name' column in the first row in a table

Scenario: Input a new Value and use 'Remove Row' button
When the user selects the item 'Trees and Tables->Multi-Row Subscription' in a tree
And the user removes all rows by clicking on 'Remove Row' button
And the user presses on 'Add Row' button
And the user inputs '999999999' text into 'Value' column for row with 'Name' column and 'item 0' value in a table
And the user presses on 'Remove Row' button
Then the user should see no rows in a table

Scenario: Callculate when all values are positive
When the user selects the item 'Trees and Tables->Multi-Row Subscription' in a tree
And the user removes all rows by clicking on 'Remove Row' button
And the user presses on 'Add Row' button
And the user inputs '100' text into 'Value' column for row with 'Name' column and 'new row 0' value in a table
And the user presses on 'Add Row' button
And the user inputs '200' text into 'Value' column for row with 'Name' column and 'new row 1' value in a table
And the user presses on 'Add Row' button
And the user inputs '300' text into 'Value' column for row with 'Name' column and 'new row 2' value in a table
Then the user should see that Sum Value is '600'

Scenario: Callculate when all values are negative
When the user selects the item 'Trees and Tables->Multi-Row Subscription' in a tree
And the user removes all rows by clicking on 'Remove Row' button
And the user presses on 'Add Row' button
And the user inputs '-100' text into 'Value' column for row with 'Name' column and 'new row 0' value in a table
And the user presses on 'Add Row' button
And the user inputs '-200' text into 'Value' column for row with 'Name' column and 'new row 1' value in a table
And the user presses on 'Add Row' button
And the user inputs '-300' text into 'Value' column for row with 'Name' column and 'new row 2' value in a table
Then the user should see that Sum Value is '-600'

Scenario: Callculate with all values are zero
When the user selects the item 'Trees and Tables->Multi-Row Subscription' in a tree
And the user removes all rows by clicking on 'Remove Row' button
And the user presses on 'Add Row' button
And the user inputs '0' text into 'Value' column for row with 'Name' column and 'new row 0' value in a table
And the user presses on 'Add Row' button
And the user inputs '0' text into 'Value' column for row with 'Name' column and 'new row 1' value in a table
And the user presses on 'Add Row' button
And the user inputs '0' text into 'Value' column for row with 'Name' column and 'new row 2' value in a table
Then the user should see that Sum Value is '0'

Scenario: Callculate when Value is a value with letters
When the user selects the item 'Trees and Tables->Multi-Row Subscription' in a tree
And the user removes all rows by clicking on 'Remove Row' button
And the user presses on 'Add Row' button
And the user inputs 'abcdefghijklmnopqrstuvwxyz' text into 'Value' column for row with 'Name' column and 'new row 0' value in a table
Then the user should see that Sum Value is '0'
When the user presses on 'Add Row' button
And the user inputs '100' text into 'Value' column for row with 'Name' column and 'new row 1' value in a table
Then the user should see that Sum Value is '100'
When the user presses on 'Add Row' button
And the user inputs 'abcdefghijklmnopqrstuvwxyz' text into 'Value' column for row with 'Name' column and 'new row 2' value in a table
Then the user should see that Sum Value is '100'

Scenario: Callculate when Value is a value with special characters
When the user selects the item 'Trees and Tables->Multi-Row Subscription' in a tree
And the user removes all rows by clicking on 'Remove Row' button
And the user presses on 'Add Row' button
And the user inputs '~`!@#$%^&*()-=_+[\]{|}:;"'<,>.?' text into 'Value' column for row with 'Name' column and 'new row 0' value in a table
Then the user should see that Sum Value is '0'
When the user presses on 'Add Row' button
And the user inputs '100' text into 'Value' column for row with 'Name' column and 'new row 1' value in a table
Then the user should see that Sum Value is '100'
When the user presses on 'Add Row' button
And the user inputs '~`!@#$%^&*()-=_+[\]{|}:;"'<,>.?' text into 'Value' column for row with 'Name' column and 'new row 2' value in a table
Then the user should see that Sum Value is '100'