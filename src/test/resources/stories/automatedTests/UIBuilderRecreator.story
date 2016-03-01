
Scenario: On 'Ui Builder Recreator' dashboard select in comboBox 'Label'
Given the user is on the Automated Tests page
When the user login in system
When the user open dashboard with name 'UIBuilder recreator'
When the user select 'label' in comboBox
Then they should see the label with text 'label'


Scenario: On 'Ui Builder Recreator' dashboard select in comboBox 'Button'
Given the user is on the Automated Tests page
When the user open dashboard with name 'UIBuilder recreator'
When the user select 'button' in comboBox
Then they should see the button with text 'Simple button with icon'