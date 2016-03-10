Narrative:
*-----------------------------------------------------------------------------------------------------------------------
* Tested application: vaadin_example
*
* UI element: Interaction -> Input Mapping (1.10)
*-----------------------------------------------------------------------------------------------------------------------

Scenario: Login to system
Given the user is on the Example page
When the user login in system

Scenario: Empty
Given the user refresh the Example page
When the user select 'Interaction->InputMappinng' in tree
When the user enters the string - '' in the text field with name 'Value from this text field is used as input for second column'
Then they should see the column with name 'TextField Value' where all values are ''

Scenario: Filled
Given the user refresh the Example page
When the user select 'Interaction->InputMappinng' in tree
When the user enters the string - 'test string' in the text field with name 'Value from this text field is used as input for second column'
Then they should see the column with name 'TextField Value' where all values are 'test string'

Scenario: Empty and use Self Destruction
Given the user refresh the Example page
When the user select 'Interaction->InputMappinng' in tree
When the user enters the string - '' in the text field with name 'Value from this text field is used as input for second column'
When the user presses the button with name 'Self Destruction' in table row with key value 'ID_0'
Then they should not see table row with key value 'ID_0'

Scenario: Filled and use Self Desrtuction
Given the user refresh the Example page
When the user select 'Interaction->InputMappinng' in tree
When the user enters the string - 'test string 333' in the text field with name 'Value from this text field is used as input for second column'
When the user presses the button with name 'Self Destruction' in table row with key value 'ID_0'
Then they should not see table row with key value 'ID_0'
