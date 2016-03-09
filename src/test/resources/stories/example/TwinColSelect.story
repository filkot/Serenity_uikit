Scenario: User transfers all items starting from the first in 'TwinColumn Selection' section
Given the user is on the Example page
When the user login in system
And the user select 'Data Input->Multiple Values->TwinColumn Selection' in tree
And the user transfer 'first row' from left to right
Then they should see the item list 'first row' in right col
When the user transfer 'second row' from left to right
Then they should see the item list 'first row, second row' in right col
When the user transfer 'third row' from left to right
Then they should see the item list 'first row, second row, third row' in right col

Scenario: User transfers all items starting from the second in 'TwinColumn Selection' section
Given the user refresh the Example page
When the user select 'Data Input->Multiple Values->TwinColumn Selection' in tree
And the user transfer 'second row' from left to right
Then they should see the item list 'second row' in right col
When the user transfer 'first row' from left to right
Then they should see the item list 'first row, second row' in right col
When the user transfer 'third row' from left to right
Then they should see the item list 'first row, second row, third row' in right col

Scenario: User transfers all items starting from the third in 'TwinColumn Selection' section
Given the user refresh the Example page
When the user select 'Data Input->Multiple Values->TwinColumn Selection' in tree
And the user transfer 'third row' from left to right
Then they should see the item list 'third row' in right col
When the user transfer 'second row' from left to right
Then they should see the item list 'second row, third row' in right col
When the user transfer 'first row' from left to right
Then they should see the item list 'first row, second row, third row' in right col

Scenario: User transfers and transfers back only the first item in 'TwinColumn Selection' section
Given the user refresh the Example page
When the user select 'Data Input->Multiple Values->TwinColumn Selection' in tree
And the user transfer 'first row' from left to right
Then they should see the item list 'first row' in right col
When the user transfer 'first row' from right to left
Then they should see the item list '' in right col

Scenario: User transfers and transfers back only the last item in 'TwinColumn Selection' section
Given the user refresh the Example page
When the user select 'Data Input->Multiple Values->TwinColumn Selection' in tree
And the user transfer 'third row' from left to right
Then they should see the item list 'third row' in right col
When the user transfer 'third row' from right to left
Then they should see the item list '' in right col

Scenario: User transfers all items and transfers back only the first two items starting from the first in 'TwinColumn Selection' section
Given the user refresh the Example page
When the user select 'Data Input->Multiple Values->TwinColumn Selection' in tree
And the user transfer 'first row' from left to right
And the user transfer 'second row' from left to right
And the user transfer 'third row' from left to right
And the user transfer 'first row' from right to left
Then they should see the item list 'second row, third row' in right col
When the user transfer 'second row' from right to left
Then they should see the item list 'third row' in right col

Scenario: User transfers all items and transfers back only the first two items starting from the last in 'TwinColumn Selection' section
Given the user refresh the Example page
When the user select 'Data Input->Multiple Values->TwinColumn Selection' in tree
And the user transfer 'first row' from left to right
And the user transfer 'second row' from left to right
And the user transfer 'third row' from left to right
And the user transfer 'second row' from right to left
Then they should see the item list 'first row, third row' in right col
When the user transfer 'first row' from right to left
Then they should see the item list 'third row' in right col

Scenario: User transfers all items and transfers back only the last two items starting from the first in 'TwinColumn Selection' section
Given the user refresh the Example page
When the user select 'Data Input->Multiple Values->TwinColumn Selection' in tree
And the user transfer 'first row' from left to right
And the user transfer 'second row' from left to right
And the user transfer 'third row' from left to right
And the user transfer 'second row' from right to left
Then they should see the item list 'first row, third row' in right col
When the user transfer 'third row' from right to left
Then they should see the item list 'first row' in right col

Scenario: User transfers all items and transfers back only the last two items starting from the last in 'TwinColumn Selection' section
Given the user refresh the Example page
When the user select 'Data Input->Multiple Values->TwinColumn Selection' in tree
And the user transfer 'first row' from left to right
And the user transfer 'second row' from left to right
And the user transfer 'third row' from left to right
And the user transfer 'third row' from right to left
Then they should see the item list 'first row, third row' in right col
When the user transfer 'second row' from right to left
Then they should see the item list 'first row' in right col

Scenario: User transfers all items and transfers them back in 'TwinColumn Selection' section
Given the user refresh the Example page
When the user select 'Data Input->Multiple Values->TwinColumn Selection' in tree
And the user transfer 'first row' from left to right
And the user transfer 'second row' from left to right
And the user transfer 'third row' from left to right
And the user transfer 'first row' from right to left
Then they should see the item list 'second row, third row' in right col
When the user transfer 'second row' from right to left
Then they should see the item list 'third row' in right col
When the user transfer 'third row' from right to left
Then they should see the item list '' in right col

Scenario: User transfers all items and transfers them back in 'TwinColumn Selection' section
Given the user refresh the Example page
When the user select 'Data Input->Multiple Values->TwinColumn Selection' in tree
And the user transfer 'first row' from left to right
And the user transfer 'second row' from left to right
And the user transfer 'third row' from left to right
And the user transfer 'third row' from right to left
Then they should see the item list 'first row, second row' in right col
When the user transfer 'second row' from right to left
Then they should see the item list 'first row' in right col
When the user transfer 'first row' from right to left
Then they should see the item list '' in right col

Scenario: User transfers all items starting from the first by clicking on the item in 'TwinColumn Selection' section
Given the user refresh the Example page
When the user select 'Data Input->Multiple Values->TwinColumn Selection' in tree
When the user transfer 'first row' from left to right by double clicking on item
Then they should see the item list 'first row' in right col
When the user transfer 'second row' from left to right by double clicking on item
Then they should see the item list 'first row, second row' in right col
When the user transfer 'third row' from left to right by double clicking on item
Then they should see the item list 'first row, second row, third row' in right col

Scenario: User transfers all items starting from the second by clicking on the item in 'TwinColumn Selection' section
Given the user refresh the Example page
When the user select 'Data Input->Multiple Values->TwinColumn Selection' in tree
And the user transfer 'second row' from left to right by double clicking on item
Then they should see the item list 'second row' in right col
When the user transfer 'first row' from left to right by double clicking on item
Then they should see the item list 'first row, second row' in right col
When the user transfer 'third row' from left to right by double clicking on item
Then they should see the item list 'first row, second row, third row' in right col

Scenario: User transfers all items starting from the third by clicking on the item in 'TwinColumn Selection' section
Given the user refresh the Example page
When the user select 'Data Input->Multiple Values->TwinColumn Selection' in tree
And the user transfer 'third row' from left to right by double clicking on item
Then they should see the item list 'third row' in right col
When the user transfer 'second row' from left to right by double clicking on item
Then they should see the item list 'second row, third row' in right col
When the user transfer 'first row' from left to right by double clicking on item
Then they should see the item list 'first row, second row, third row' in right col

Scenario: User transfers the items by clicking on moveForward button in 'TwinColumn Selection' section
Given the user refresh the Example page
When the user select 'Data Input->Multiple Values->TwinColumn Selection' in tree
And the user press forwardButton '2' times
Then they should see the item list 'first row' in right col
When the user press forwardButton '2' times
Then they should see the item list 'first row, second row' in right col
When the user press forwardButton '2' times
Then they should see the item list 'first row, second row, third row' in right col
When the user press forwardButton '2' times
Then they should see the item list 'first row, second row, third row' in right col
And they should see the item list '' in left col

Scenario: User transfers the items by clicking on moveBack button in 'TwinColumn Selection' section
Given the user refresh the Example page
When the user transfer 'first row' from left to right
And the user transfer 'second row' from left to right
And the user transfer 'third row' from left to right
And the user press backButton '2' times
Then they should see the item list 'second row, third row' in right col
When the user press backButton '2' times
Then they should see the item list 'third row' in right col
When the user press backButton '2' times
Then they should see the item list 'first row, second row, third row' in left col
And they should see the item list '' in right col

Scenario: User uses a multiselection transfer w/o forced selecting the TwinColumns
Given the user refresh the Example page
When the user select all items in left column
And the user press forwardButton '1' times
Then they should see the item list 'first row, second row, third row' in right col
And they should see the item list '' in left col
When the user select all items in right column
And the user press backButton '1' times
Then they should see the item list '' in right col
And they should see the item list 'first row, second row, third row' in left col

Scenario: User uses a multiselection transfer with forced selecting the TwinColumns
Given the user refresh the Example page
When the user select all items in left column
And the user press forwardButton '1' times
And the user select left column
And the user press forwardButton '1' times
Then they should see the item list 'first row, second row, third row' in right col
And they should see the item list '' in left col
When the user select all items in right column
And the user press backButton '1' times
And the user select right column
And the user press backButton '1' times
Then they should see the item list '' in right col
And they should see the item list 'first row, second row, third row' in left col