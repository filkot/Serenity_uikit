
Scenario: On 'Properties modifier' dashboard select checkbox appears textField
Given the user is on the Automated Tests page
When the user login in system
When the user open dashboard with name 'Properties modifier'
When the user select checkbox with caption 'Checkbox'
Then they should see the textField

Scenario: On 'Properties modifier' dashboard deselect checkbox disappears textField
Given the user is on the Automated Tests page
When the user open dashboard with name 'Properties modifier'
When the user deselect checkbox with caption 'Checkbox'
Then they should not see the textField


