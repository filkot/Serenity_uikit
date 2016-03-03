Scenario: On 'TwinColumn Selection' select 3 items and 2 back
Given the user is on the Example page
When the user login in system
When the user select 'Interaction->ProgressBar' in tree

When the user click button with name 'Load'

Then they should see the item list 'second row' in left col

