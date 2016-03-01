
Scenario: On 'Subobject subscription' dashboard click button 'Action'
Given the user is on the Automated Tests page
When the user login in system
When the user open dashboard with name 'Subobject subscription'
When the user click button with name 'Action'
Then they should see the label with text 'Hello world'


