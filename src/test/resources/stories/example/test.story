*-----------------------------------------------------------------------------------------------------------------------
* Tested application: vaadin_example
*
* UI element: Data Input -> Multiple Values -> TwinColumn Selection
*
* Author: Maksim Zhelezko
* Created Date: 04.03.2016
*-----------------------------------------------------------------------------------------------------------------------
Meta: @group: TwinColumn Selection
GivenStories: stories/example/CommonLoginExamplesApp.story

Scenario: User transfers all items starting from the first
Given the user refresh the Example page
When the user selects the item 'Data Input->Multiple Values->TwinColumn Selection' in a tree
And the user transfers 'first row' item from the left to right
Then the user should see 'first row' item list in the right twin column
When the user transfers 'second row' item from the left to right
Then the user should see 'first row, second row' item list in the right twin column
When the user transfers 'third row' item from the left to right
Then the user should see 'first row, second row, third row' item list in the right twin column

Scenario: User transfers all items starting from the second
Given the user refresh the Example page
When the user selects the item 'Data Input->Multiple Values->TwinColumn Selection' in a tree
And the user transfers 'second row' item from the left to right
Then the user should see 'second row' item list in the right twin column
When the user transfers 'first row' item from the left to right
Then the user should see 'first row, second row' item list in the right twin column
When the user transfers 'third row' item from the left to right
Then the user should see 'first row, second row, third row' item list in the right twin column

Scenario: User transfers all items starting from the third
Given the user refresh the Example page
When the user selects the item 'Data Input->Multiple Values->TwinColumn Selection' in a tree
And the user transfers 'third row' item from the left to right
Then the user should see 'third row' item list in the right twin column
When the user transfers 'second row' item from the left to right
Then the user should see 'second row, third row' item list in the right twin column
When the user transfers 'first row' item from the left to right
Then the user should see 'first row, second row, third row' item list in the right twin column

Scenario: User transfers and transfers back only the first item
Given the user refresh the Example page
When the user selects the item 'Data Input->Multiple Values->TwinColumn Selection' in a tree
And the user transfers 'first row' item from the left to right
Then the user should see 'first row' item list in the right twin column
When the user transfers 'first row' item from the right to left
Then the user should see the empty list in the right twin column

Scenario: User transfers and transfers back only the last item
Given the user refresh the Example page
When the user selects the item 'Data Input->Multiple Values->TwinColumn Selection' in a tree
And the user transfers 'third row' item from the left to right
Then the user should see 'third row' item list in the right twin column
When the user transfers 'third row' item from the right to left
Then the user should see the empty list in the right twin column

Scenario: User transfers all items and transfers back only the first two items starting from the first
Given the user refresh the Example page
When the user selects the item 'Data Input->Multiple Values->TwinColumn Selection' in a tree
And the user transfers 'first row' item from the left to right
And the user transfers 'second row' item from the left to right
And the user transfers 'third row' item from the left to right
And the user transfers 'first row' item from the right to left
Then the user should see 'second row, third row' item list in the right twin column
When the user transfers 'second row' item from the right to left
Then the user should see 'third row' item list in the right twin column

Scenario: User transfers all items and transfers back only the first two items starting from the last
Given the user refresh the Example page
When the user selects the item 'Data Input->Multiple Values->TwinColumn Selection' in a tree
And the user transfers 'first row' item from the left to right
And the user transfers 'second row' item from the left to right
And the user transfers 'third row' item from the left to right
And the user transfers 'second row' item from the right to left
Then the user should see 'first row, third row' item list in the right twin column
When the user transfers 'first row' item from the right to left
Then the user should see 'third row' item list in the right twin column

Scenario: User transfers all items and transfers back only the last two items starting from the first
Given the user refresh the Example page
When the user selects the item 'Data Input->Multiple Values->TwinColumn Selection' in a tree
And the user transfers 'first row' item from the left to right
And the user transfers 'second row' item from the left to right
And the user transfers 'third row' item from the left to right
And the user transfers 'second row' item from the right to left
Then the user should see 'first row, third row' item list in the right twin column
When the user transfers 'third row' item from the right to left
Then the user should see 'first row' item list in the right twin column

Scenario: User transfers all items and transfers back only the last two items starting from the last
Given the user refresh the Example page
When the user selects the item 'Data Input->Multiple Values->TwinColumn Selection' in a tree
And the user transfers 'first row' item from the left to right
And the user transfers 'second row' item from the left to right
And the user transfers 'third row' item from the left to right
And the user transfers 'third row' item from the right to left
Then the user should see 'first row, second row' item list in the right twin column
When the user transfers 'second row' item from the right to left
Then the user should see 'first row' item list in the right twin column

Scenario: User transfers all items and transfers them back in backward order
Given the user refresh the Example page
When the user selects the item 'Data Input->Multiple Values->TwinColumn Selection' in a tree
And the user transfers 'first row' item from the left to right
And the user transfers 'second row' item from the left to right
And the user transfers 'third row' item from the left to right
And the user transfers 'first row' item from the right to left
Then the user should see 'second row, third row' item list in the right twin column
When the user transfers 'second row' item from the right to left
Then the user should see 'third row' item list in the right twin column
When the user transfers 'third row' item from the right to left
Then the user should see the empty list in the right twin column

Scenario: User transfers all items and transfers them back in straight order
Given the user refresh the Example page
When the user selects the item 'Data Input->Multiple Values->TwinColumn Selection' in a tree
And the user transfers 'first row' item from the left to right
And the user transfers 'second row' item from the left to right
And the user transfers 'third row' item from the left to right
And the user transfers 'third row' item from the right to left
Then the user should see 'first row, second row' item list in the right twin column
When the user transfers 'second row' item from the right to left
Then the user should see 'first row' item list in the right twin column
When the user transfers 'first row' item from the right to left
Then the user should see the empty list in the right twin column

Scenario: User transfers all items starting from the first by clicking on the item
Given the user refresh the Example page
When the user selects the item 'Data Input->Multiple Values->TwinColumn Selection' in a tree
When the user transfers 'first row' item from the left to right by double clicking on the item
Then the user should see 'first row' item list in the right twin column
When the user transfers 'second row' item from the left to right by double clicking on the item
Then the user should see 'first row, second row' item list in the right twin column
When the user transfers 'third row' item from the left to right by double clicking on the item
Then the user should see 'first row, second row, third row' item list in the right twin column

Scenario: User transfers all items starting from the second by clicking on the item
Given the user refresh the Example page
When the user selects the item 'Data Input->Multiple Values->TwinColumn Selection' in a tree
And the user transfers 'second row' item from the left to right by double clicking on the item
Then the user should see 'second row' item list in the right twin column
When the user transfers 'first row' item from the left to right by double clicking on the item
Then the user should see 'first row, second row' item list in the right twin column
When the user transfers 'third row' item from the left to right by double clicking on the item
Then the user should see 'first row, second row, third row' item list in the right twin column

Scenario: User transfers all items starting from the third by clicking on the item
Given the user refresh the Example page
When the user selects the item 'Data Input->Multiple Values->TwinColumn Selection' in a tree
And the user transfers 'third row' item from the left to right by double clicking on the item
Then the user should see 'third row' item list in the right twin column
When the user transfers 'second row' item from the left to right by double clicking on the item
Then the user should see 'second row, third row' item list in the right twin column
When the user transfers 'first row' item from the left to right by double clicking on the item
Then the user should see 'first row, second row, third row' item list in the right twin column

Scenario: User transfers the items by clicking on moveForward button
Given the user refresh the Example page
When the user selects the item 'Data Input->Multiple Values->TwinColumn Selection' in a tree
And the user presses 'Forward' button '2' times
Then the user should see 'first row' item list in the right twin column
When the user presses 'Forward' button '2' times
Then the user should see 'first row, second row' item list in the right twin column
When the user presses 'Forward' button '2' times
Then the user should see 'first row, second row, third row' item list in the right twin column
When the user presses 'Forward' button '2' times
Then the user should see 'first row, second row, third row' item list in the right twin column
And the user should see the empty list in the left twin column

Scenario: User transfers the items by clicking on moveBack button
Given the user refresh the Example page
When the user selects the item 'Data Input->Multiple Values->TwinColumn Selection' in a tree
When the user transfers 'first row' item from the left to right
And the user transfers 'second row' item from the left to right
And the user transfers 'third row' item from the left to right
And the user presses 'Back' button '2' times
Then the user should see 'second row, third row' item list in the right twin column
When the user presses 'Back' button '2' times
Then the user should see 'third row' item list in the right twin column
When the user presses 'Back' button '2' times
Then the user should see 'first row, second row, third row' item list in the left twin column
And the user should see the empty list in the right twin column

Scenario: User uses a multiselection transfer w/o forced selecting the Twin Columns
Given the user refresh the Example page
When the user selects the item 'Data Input->Multiple Values->TwinColumn Selection' in a tree
When the user selects all items in the left twin column
And the user presses 'Forward' button '1' times
Then the user should see 'first row, second row, third row' item list in the right twin column
And the user should see the empty list in the left twin column
When the user selects all items in the right twin column
And the user presses 'Back' button '1' times
Then the user should see the empty list in the right twin column
And the user should see 'first row, second row, third row' item list in the left twin column

Scenario: User uses a multiselection transfer with forced selecting the Twin Columns
Given the user refresh the Example page
When the user selects the item 'Data Input->Multiple Values->TwinColumn Selection' in a tree
When the user selects all items in the left twin column
And the user presses 'Forward' button '1' times
And the user selects the left twin column
And the user presses 'Forward' button '1' times
Then the user should see 'first row, second row, third row' item list in the right twin column
And the user should see the empty list in the left twin column
When the user selects all items in the right twin column
And the user presses 'Back' button '1' times
And the user selects the right twin column
And the user presses 'Back' button '1' times
Then the user should see the empty list in the right twin column
And the user should see 'first row, second row, third row' item list in the left twin column