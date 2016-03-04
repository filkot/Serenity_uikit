Scenario: On 'TwinColumn Selection' select 3 items and 2 back
Given the user is on the Example page
When the user login in system
When the user select 'Data Input->Multiple Values->TwinColumn Selection' in tree

When the user select all items in left column
When the user press forwardButton '1' times


Then they should see the item list 'second row' in left col

