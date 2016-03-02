Scenario: On 'Table' selection checkBox id appears column in table
Given the user is on the Example page
When the user login in system
When the user select 'Trees and Tables->Table' in tree
When the user select checkbox with caption 'id'
Then they should see column 'Id' in table


Scenario: On 'Table' deselection checkBox id disappears column in table
Given the user is on the Example page
When the user select 'Trees and Tables->Table' in tree
When the user deselect checkbox with caption 'id'
Then they should not see column 'Id' in table

Scenario: On 'Table' selection checkBox name disappears column in table
Given the user is on the Example page
When the user select 'Trees and Tables->Table' in tree
When the user select checkbox with caption 'name'
Then they should see column 'Name' in table

Scenario: On 'Table' deselection checkBox name disappears column in table
Given the user is on the Example page
When the user select 'Trees and Tables->Table' in tree
When the user deselect checkbox with caption 'name'
Then they should not see column 'Name' in table

