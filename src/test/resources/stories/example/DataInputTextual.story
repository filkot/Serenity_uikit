Narrative:
*-----------------------------------------------------------------------------------------------------------------------
* Tested application: vaadin_example
*
* UI element: DataInput -> Textual (1.12)
*-----------------------------------------------------------------------------------------------------------------------

Meta: @group: DataInputTextual
GivenStories: stories/example/CommonLoginExamplesApp.story

!-----------------------------------------------------------------------------------------------------------------------
!-- TextField (1.12.1)
!-----------------------------------------------------------------------------------------------------------------------

Scenario: TextField - Empty
Meta: @id1 1
Given the user refresh the Example page
When the user selects the item 'Data Input->Textual->TextField' in a tree
And the user enters '$empty_string' text in 'Text field with date value' text field
Then the user should see entered text

Scenario: TextField - Input text to a text field
Meta: @id2 2
Given the user refresh the Example page
When the user selects the item 'Data Input->Textual->TextField' in a tree
And the user enters '$test_string' text in 'Text field with date value' text field
Then the user should see entered text

Scenario: TextField - Text selection
Meta: @id3 3
Given the user refresh the Example page
When the user selects the item 'Data Input->Textual->TextField' in a tree
And the user enters 'bb aa cc' text in 'Text field with date value' text field
And the user selects 'aa ' text in 'Text field with date value' text field
And the user moves text to the beginning of 'Text field with date value' text field
Then the user should see 'aa bb cc' text

!-----------------------------------------------------------------------------------------------------------------------
!-- TextArea (1.12.2)
!-----------------------------------------------------------------------------------------------------------------------

!-- Scenario: TextArea - Layout Sizeable (change size)
!-- Scenario: TextArea - Layout Unsizeable (unchangeable size)

Scenario: TextArea - Scrollbars
Meta: @id4 4
Given the user refresh the Example page
When the user selects the item 'Data Input->Textual->TextArea' in a tree
And the user adds '$long_test_string' text to 'Text area with multiple lines' text area
Then the user should see a horizontal scroll bar

Scenario: TextArea - Selection and Text moving
Meta: @id5 5
Given the user refresh the Example page
When the user selects the item 'Data Input->Textual->TextArea' in a tree
And the user enters 'bb aa cc' text in 'Text area with multiple lines' text area
And the user selects 'aa ' text in 'Text area with multiple lines' text area
And the user moves text to the beginning of 'Text area with multiple lines' text area
Then the user should see 'aa bb cc' text

Scenario: TextArea - Empty
Meta: @id6 6
Given the user refresh the Example page
When the user selects the item 'Data Input->Textual->TextArea' in a tree
And the user enters '$empty_string' text in 'Text area with multiple lines' text field
Then the user should see entered text

Scenario: TextArea - Input text to a text area
Meta: @id7 7
Given the user refresh the Example page
When the user selects the item 'Data Input->Textual->TextArea' in a tree
And the user enters '$test_string' text in 'Text area with multiple lines' text field
Then the user should see entered text

!-----------------------------------------------------------------------------------------------------------------------
!-- TextField (1.12.3)
!-----------------------------------------------------------------------------------------------------------------------

Scenario: RichTextArea - Test func of all panel components - Font Format - Bold
Meta: @id8 8
Given the user refresh the Example page
When the user selects the item 'Data Input->Textual->RichTextArea' in a tree
And the user enters '$test_string' text in 'Rich text area' text area
And the user selects '$test_string' text in 'Rich text area' text area
And the user click button with name 'B'
Then the user should see '$test_string' text in bold format

Scenario: RichTextArea - Test func of all panel components - Font Format - Italic
Meta: @id9 9
Given the user refresh the Example page
When the user selects the item 'Data Input->Textual->RichTextArea' in a tree
And the user enters '$test_string' text in 'Rich text area' text area
And the user selects '$test_string' text in 'Rich text area' text area
And the user click button with name 'I'
Then the user should see '$test_string' text in italic format

Scenario: RichTextArea - Test func of all panel components - Font Format - Underline
Meta: @id10 10
Given the user refresh the Example page
When the user selects the item 'Data Input->Textual->RichTextArea' in a tree
And the user enters '$test_string' text in 'Rich text area' text area
And the user selects '$test_string' text in 'Rich text area' text area
And the user click button with name 'U'
Then the user should see '$test_string' text in underline format

Scenario: RichTextArea - Test func of all panel components - Font Format - Toggle lower subscription
Meta: @id11 11
Given the user refresh the Example page
When the user selects the item 'Data Input->Textual->RichTextArea' in a tree
And the user enters '$test_string' text in 'Rich text area' text area
And the user selects '$test_string' text in 'Rich text area' text area
And the user click button with name 'X lower 2'
Then the user should see '$test_string' text in lower subscription format

Scenario: RichTextArea - Test func of all panel components - Font Format - Toggle upper subscription
Meta: @id12 12
Given the user refresh the Example page
When the user selects the item 'Data Input->Textual->RichTextArea' in a tree
And the user enters '$test_string' text in 'Rich text area' text area
And the user selects '$test_string' text in 'Rich text area' text area
And the user click button with name 'X upper 2'
Then the user should see '$test_string' text in upper subscription format

Scenario: RichTextArea - Test func of all panel components - Font Format - Left Justify
Meta: @id13 13
Given the user refresh the Example page
When the user selects the item 'Data Input->Textual->RichTextArea' in a tree
And the user enters '$test_string' text in 'Rich text area' text area
And the user selects '$test_string' text in 'Rich text area' text area
And the user click button with name 'Left Justify'
Then the user should see '$test_string' text in left justified format

Scenario: RichTextArea - Test func of all panel components - Font Format - Right Justify
Meta: @id14 14
Given the user refresh the Example page
When the user selects the item 'Data Input->Textual->RichTextArea' in a tree
And the user enters '$test_string' text in 'Rich text area' text area
And the user selects '$test_string' text in 'Rich text area' text area
And the user click button with name 'Right Justify'
Then the user should see '$test_string' text in right justified format

Scenario: RichTextArea - Test func of all panel components - Font Format - Center Justify
Meta: @id15 15
Given the user refresh the Example page
When the user selects the item 'Data Input->Textual->RichTextArea' in a tree
And the user enters '$test_string' text in 'Rich text area' text area
And the user selects '$test_string' text in 'Rich text area' text area
And the user click button with name 'Center Justify'
Then the user should see '$test_string' text in center justified format

Scenario: RichTextArea - Test func of all panel components - Font Format - Strikethgrough
Meta: @id16 16
Given the user refresh the Example page
When the user selects the item 'Data Input->Textual->RichTextArea' in a tree
And the user enters '$test_string' text in 'Rich text area' text area
And the user selects '$test_string' text in 'Rich text area' text area
And the user click button with name 'Toggle Strikethgrough'
Then the user should see '$test_string' text in strikethgrough format

Scenario: RichTextArea - Test func of all panel components - Font Format - Indent Right
Meta: @id17 17
Given the user refresh the Example page
When the user selects the item 'Data Input->Textual->RichTextArea' in a tree
And the user enters '$test_string' text in 'Rich text area' text area
And the user selects '$test_string' text in 'Rich text area' text area
And the user click button with name 'Indent Right'
Then the user should see '$test_string' text with a single right indent

Scenario: RichTextArea - Test func of all panel components - Font Format - Indent Left
Meta: @id18 18
Given the user refresh the Example page
When the user selects the item 'Data Input->Textual->RichTextArea' in a tree
And the user enters '$test_string' text in 'Rich text area' text area
And the user selects '$test_string' text in 'Rich text area' text area
And the user click button with name 'Indent Right'
And the user click button with name 'Indent Right'
And the user click button with name 'Indent Left'
Then the user should see '$test_string' text with a single right indent

Scenario: RichTextArea - Test func of all panel components - Font Format - Insert Ordered List
Meta: @id19 19
Given the user refresh the Example page
When the user selects the item 'Data Input->Textual->RichTextArea' in a tree
And the user enters '$test_string' text in 'Rich text area' text area
And the user selects '$test_string' text in 'Rich text area' text area
And the user click button with name 'Ordered List'
Then the user should see '$test_string' text in an ordered list format

Scenario: RichTextArea - Test func of all panel components - Font Format - Insert Unordered List
Meta: @id20 20
Given the user refresh the Example page
When the user selects the item 'Data Input->Textual->RichTextArea' in a tree
And the user enters '$test_string' text in 'Rich text area' text area
And the user selects '$test_string' text in 'Rich text area' text area
And the user click button with name 'Unordered List'
Then the user should see '$test_string' text in an unordered list format

Scenario: RichTextArea - Test func of all panel components - Font Background Color
Meta: @id21 21
Given the user refresh the Example page
When the user selects the item 'Data Input->Textual->RichTextArea' in a tree
And the user enters '$test_string' text in 'Rich text area' text area
And the user selects '$test_string' text in 'Rich text area' text area
And the user selects 'Green' value from 'Background' combo-box
Then the user should see '$test_string' text with selected background

Scenario: RichTextArea - Test func of all panel components - Font Foreground Color
Meta: @id22 22
Given the user refresh the Example page
When the user selects the item 'Data Input->Textual->RichTextArea' in a tree
And the user enters '$test_string' text in 'Rich text area' text area
And the user selects '$test_string' text in 'Rich text area' text area
And the user selects 'Red' value from 'Foreground' combo-box
Then the user should see '$test_string' text with selected foreground

Scenario: RichTextArea - Test func of all panel components - Font Style
Meta: @id23 23
Given the user refresh the Example page
When the user selects the item 'Data Input->Textual->RichTextArea' in a tree
And the user enters '$test_string' text in 'Rich text area' text area
And the user selects '$test_string' text in 'Rich text area' text area
And the user selects 'Times New Roman' value from 'Font' combo-box
And the user selects '$test_string' text in 'Rich text area' text area
And the user selects 'Courier New' value from 'Font' combo-box
Then the user should see '$test_string' text in '$style' font style

Scenario: RichTextArea - Test func of all panel components - Font Size
Meta: @id24 24
Given the user refresh the Example page
When the user selects the item 'Data Input->Textual->RichTextArea' in a tree
And the user enters '$test_string' text in 'Rich text area' text area
And the user selects '$test_string' text in 'Rich text area' text area
And the user selects 'Small' value from 'Size' combo-box
And the user selects '$test_string' text in 'Rich text area' text area
And the user selects 'Large' value from 'Size' combo-box
Then the user should see '$test_string' text in '$style' font style

!-- Scenario: RichTextArea - Visibility
!-- Scenario: RichTextArea - Selection