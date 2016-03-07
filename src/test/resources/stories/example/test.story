Scenario: Login to system
Given the user is on the Example page
When the user login in system

Scenario: On 'TwinColumn Selection' select 3 items and 2 back
Given the user refresh the Example page
When the user select 'Interaction->Menu' in tree

When the user click menu item with name 'Menu4->Menu8'
When the user maximize popup
When the user restore popup
Then they should see popup with label 'Static menu #Menu8 clicked'

