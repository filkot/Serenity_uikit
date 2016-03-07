Scenario: Login to system
Given the user is on the Example page
When the user login in system

Scenario: On 'TwinColumn Selection' select 3 items and 2 back
Given the user refresh the Example page
When the user select 'Interaction->Menu' in tree

When the user click menu item with name 'child 0'
When the user moves a cursos on menu item with name  'child 1'
When the user moves a cursos on menu item with name  'child 2'
When the user moves a cursos on menu item with name  'child 3'
Then they should not see menu sub item with name 'child 0-2' for 'child 0'

Scenario: On 'TwinColumn Selection' select 3 items and 2 back
Given the user refresh the Example page
When the user select 'Interaction->Menu' in tree

When the user click menu item with name 'child 0'
Then they should not see menu sub item with name 'child 0-2' for 'child 0'

Scenario: On 'TwinColumn Selection' select 3 items and 2 back
Given the user refresh the Example page
When the user select 'Interaction->Menu' in tree
When the user click menu item with name 'child 0->child 0-1'
When the user close popup
When the user click menu item with name 'child 1->child 1-0'
When the user close popup
When the user click menu item with name 'child 2->child 2-1'
When the user close popup
When the user click menu item with name 'child 3->child 3-0'
When the user maximize popup
When the user restore popup
Then they should see popup with label 'Dynamic menu child 3-0 was selected'

