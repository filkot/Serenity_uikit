Scenario: On 'TwinColumn Selection' select 3 items and 2 back
Given the user is on the Example page
When the user login in system
When the user select 'Data Input->Multiple Values->TwinColumn Selection' in tree

When the user transfer 'second row' from left to right by double clicking on item
When the user transfer 'third row' from left to right by double clicking on item
When the user transfer 'second row' from right to left by double clicking on item
When the user transfer 'first row' from left to right by double clicking on item

Then they should see the item list 'second row' in left col

