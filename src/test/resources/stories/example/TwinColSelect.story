Meta:
@categories category1

Scenario: On 'TwinColumn Selection' select 3 items
Given the user is on the Example page
When the user login in system
When the user select 'Data Input->Multiple Values->TwinColumn Selection' in tree
When the user transferred 'second row' from left to right
When the user transferred 'first row' from left to right
When the user transferred 'third row' from left to right
Then they should see the item list 'first row, second row, third row' in right col


Scenario: On 'TwinColumn Selection' selections items appears in table
Given the user refresh the Example page
When the user select 'Data Input->Multiple Values->TwinColumn Selection' in tree
When the user transferred 'third row' from left to right
When the user transferred 'first row' from left to right
Then they should see the item list 'first row, third row' in right col


Scenario: On 'TwinColumn Selection' select 2 items
Given the user refresh the Example page
When the user select 'Data Input->Multiple Values->TwinColumn Selection' in tree
When the user transferred 'second row' from left to right
When the user transferred 'third row' from left to right
Then they should see the item list 'second row, third row' in right col

Scenario: On 'TwinColumn Selection' select 3 items and 2 back
Given the user refresh the Example page
When the user select 'Data Input->Multiple Values->TwinColumn Selection' in tree
When the user transferred 'second row' from left to right
When the user transferred 'first row' from left to right
When the user transferred 'third row' from left to right

When the user transferred 'second row' from right to left
When the user transferred 'first row' from right to left
Then they should see the item list 'first row, second row' in left col

Scenario: On 'TwinColumn Selection' select 3 items and 2 back
Given the user refresh the Example page
When the user select 'Data Input->Multiple Values->TwinColumn Selection' in tree
When the user transferred 'second row' from left to right
When the user transferred 'first row' from left to right
When the user transferred 'third row' from left to right

When the user transferred 'second row' from right to left
When the user transferred 'first row' from right to left
Then they should see the item list 'first row, second row' in table at '1'