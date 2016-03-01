
Scenario: On 'Depends on any method' dashboard select checkbox appears textField
Given the user is on the Automated Tests page
When the user login in system
When the user open dashboard with name 'Depends on any method'
When the user select checkbox with caption 'Checkbox'
When the user type text 'aaaaaaaaaaaaaaaaa' in text field
Then they should see the textField

Scenario: On 'Depends on any method' dashboard deselect checkbox disappears textField
Given the user is on the Automated Tests page
When the user open dashboard with name 'Depends on any method'
When the user deselect checkbox with caption 'Checkbox'
Then they should not see the textField


