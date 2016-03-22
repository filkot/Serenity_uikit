Narrative:
*-----------------------------------------------------------------------------------------------------------------------
* Tested application: vaadin_example
*
* UI element: Interaction -> Input Mapping (1.10)
*-----------------------------------------------------------------------------------------------------------------------

Meta: @group: InteractionInputMapping
GivenStories: stories/example/CommonLoginExamplesApp.story

Scenario: Empty
Given the user refresh the Example page
When the user selects the item 'Interaction->InputMapping' in a tree
And the user enters <text> text in <textInputCaption> text field
Then the user should see the <columnName> column where all values are <cellValue> in a table
Examples:
|columnName|cellValue|text|textInputCaption|
|TextField Value|EMPTY_STRING|EMPTY_STRING|Value from this text field is used as input for second column|

Scenario: Filled
Given the user refresh the Example page
When the user selects the item 'Interaction->InputMapping' in a tree
And the user enters <text> text in <textInputCaption> text field
Then the user should see the <columnName> column where all values are <cellValue> in a table
Examples:
|columnName|cellValue|text|textInputCaption|
|TextField Value|test string|test string|Value from this text field is used as input for second column|

Scenario: Empty and use Self Destruction
Given the user refresh the Example page
When the user selects the item 'Interaction->InputMapping' in a tree
And the user enters <text> text in <textInputCaption> text field
And the user presses the button in <buttonColumnName> column for row with <columnName> column and <cellValue> value in table
Then the user should not see the row with <columnName>  column and <cellValue> value in table
Examples:
|columnName|cellValue|text|textInputCaption|buttonColumnName|
|ID|ID_0|EMPTY_STRING|Value from this text field is used as input for second column|Delete|

Scenario: Filled and use Self Desrtuction
Given the user refresh the Example page
When the user selects the item 'Interaction->InputMapping' in a tree
And the user enters <text> text in <textInputCaption> text field
And the user presses the button in <buttonColumnName> column for row with <columnName> column and <cellValue> value in table
Then the user should not see the row with <columnName> column and <cellValue> value in table
Examples:
|columnName|cellValue|text|textInputCaption|buttonColumnName|
|ID|ID_5|test string 333|Value from this text field is used as input for second column|Delete|
