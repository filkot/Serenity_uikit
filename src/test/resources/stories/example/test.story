Scenario: On 'TwinColumn Selection' select 3 items and 2 back
Given the user is on the Example page
When the user login in system
When the user select 'Interaction->Menu' in tree

When the user click menu item with name 'Menu4->Menu8'



Then they should see the item list 'second row' in left col

