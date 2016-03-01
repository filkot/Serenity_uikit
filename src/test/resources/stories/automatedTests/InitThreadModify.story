
Scenario: On 'Init Thread modify' dashboard verify label value
Given the user is on the Automated Tests page
When the user login in system
When the user open dashboard with name 'Init Thread modify'
Then they should see the label with text '33'


