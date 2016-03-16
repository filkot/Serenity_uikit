Narrative:
*-----------------------------------------------------------------------------------------------------------------------
* Tested application: vaadin_example
*
* UI element: DataPresentation -> DataSourceQuery (1.28)
*-----------------------------------------------------------------------------------------------------------------------

Meta: @group: DataSource
GivenStories: stories/example/CommonLoginExamplesApp.story

!-- Negative tests
Scenario: Query Instance from Project only
Meta: @id2 2
Given the user refresh the Example page
When the user selects the item 'Data Presentation->DataSource Query' in a tree
And the user select 'FATCA_DASHBOARD' in comboBox
And the user click button with name 'Query Instance'
Then the user should see popup with header 'Query Instance ...'

Scenario: Query Instance from Project, Branch
Meta: @id3 3
Given the user refresh the Example page
When the user selects the item 'Data Presentation->DataSource Query' in a tree
And the user select 'FATCA_DASHBOARD' in comboBox
And the user click button with name 'Branch'
And the user select '2016_v01' in comboBox
And the user click button with name 'Query Instance'
Then the user should see popup with header 'Query Instance ...'

!-- Positive tests
!-- Query Instance from Project, Branch, DataSource

Scenario: Number field is input
Meta: @id4 4
Given the user refresh the Example page
When the user selects the item 'Data Presentation->DataSource Query' in a tree
And the user select 'FATCA_DASHBOARD' in comboBox
When the user click button with name 'Branch'
And the user select '2016_v01' in comboBox
When the user click button with name 'DataSource'
And the user select 'ObjectQuery[Data_Status_Filing_Entity]' in comboBox
When the user select all items in left column
And the user press forwardButton '1' times
When the user click button with name 'Number field'
And the user select 'ac_info_aggregated_count' in comboBox
And the user click button with name 'Query Instance'
Then the user should see all data in a table

Scenario: Number field is empty
Meta: @id5 5
Given the user refresh the Example page
When the user selects the item 'Data Presentation->DataSource Query' in a tree
And the user select 'FATCA_DASHBOARD' in comboBox
When the user click button with name 'Branch'
And the user select '2016_v01' in comboBox
When the user click button with name 'DataSource'
And the user select 'ObjectQuery[Data_Status_Filing_Entity]' in comboBox
When the user select all items in left column
And the user press forwardButton '1' times
And the user click button with name 'Query Instance'
Then the user should see all data in a table

Scenario: Number field, Comparision are input
Meta: @id6 6
Given the user refresh the Example page
When the user selects the item 'Data Presentation->DataSource Query' in a tree
And the user select 'FATCA_DASHBOARD' in comboBox
When the user click button with name 'Branch'
And the user select '2016_v01' in comboBox
When the user click button with name 'DataSource'
And the user select 'ObjectQuery[Data_Status_Filing_Entity]' in comboBox
When the user select all items in left column
And the user press forwardButton '1' times
When the user click button with name 'Number field'
And the user select 'ac_info_aggregated_count' in comboBox
When the user click button with name 'Comparison operator'
And the user select '>' in comboBox
When the user click button with name 'Query Instance'
Then the user should see all data in a table
!-- or some error? TO DO: clarification is required

Scenario: Number field, Comparision, Value are input
Meta: @id7 7
Given the user refresh the Example page
When the user selects the item 'Data Presentation->DataSource Query' in a tree
And the user select 'FATCA_DASHBOARD' in comboBox
When the user click button with name 'Branch'
And the user select '2016_v01' in comboBox
When the user click button with name 'DataSource'
And the user select 'ObjectQuery[Data_Status_Filing_Entity]' in comboBox
When the user select all items in left column
And the user press forwardButton '1' times
When the user click button with name 'Number field'
And the user select 'ac_info_aggregated_count' in comboBox
When the user click button with name 'Comparison operator'
And the user select '>' in comboBox
When the user click button with name 'Value'
And the user type text '3' in text field
When the user click button with name 'Query Instance'
Then the user should see data in a table where '$field' '$condition' '$value'

Scenario: Number field, Value are input
Meta: @id8 8
Given the user refresh the Example page
When the user selects the item 'Data Presentation->DataSource Query' in a tree
And the user select 'FATCA_DASHBOARD' in comboBox
When the user click button with name 'Branch'
And the user select '2016_v01' in comboBox
When the user click button with name 'DataSource'
And the user select 'ObjectQuery[Data_Status_Filing_Entity]' in comboBox
When the user select all items in left column
And the user press forwardButton '1' times
When the user click button with name 'Number field'
And the user select 'ac_info_aggregated_count' in comboBox
When the user click button with name 'Value'
And the user type text '4' in text field
When the user click button with name 'Query Instance'
Then the user should see all data in a table
!-- or some error? TO DO: clarification is required

!-- Scenario: Number field does not exist
!-- TO DO: clarification is required

Scenario: Comparison operator is custom specified Value is Positive
Meta: @id9 9
Given the user refresh the Example page
When the user selects the item 'Data Presentation->DataSource Query' in a tree
And the user select 'FATCA_DASHBOARD' in comboBox
When the user click button with name 'Branch'
And the user select '2016_v01' in comboBox
When the user click button with name 'DataSource'
And the user select 'ObjectQuery[Data_Status_Filing_Entity]' in comboBox
When the user select all items in left column
And the user press forwardButton '1' times
When the user click button with name 'Number field'
And the user select 'ac_info_aggregated_count' in comboBox
When the user click button with name 'Comparison operator'
And the user select '>' in comboBox
When the user click button with name 'Value'
And the user type text '3' in text field
When the user click button with name 'Query Instance'
Then the user should see data in a table where '$field' '$condition' '$value'

Scenario: Comparison operator is custom specified Value is Negative
Meta: @id10 10
Given the user refresh the Example page
When the user selects the item 'Data Presentation->DataSource Query' in a tree
And the user select 'FATCA_DASHBOARD' in comboBox
When the user click button with name 'Branch'
And the user select '2016_v01' in comboBox
When the user click button with name 'DataSource'
And the user select 'ObjectQuery[Data_Status_Filing_Entity]' in comboBox
When the user select all items in left column
And the user press forwardButton '1' times
When the user click button with name 'Number field'
And the user select 'ac_info_aggregated_count' in comboBox
When the user click button with name 'Comparison operator'
And the user select '>' in comboBox
When the user click button with name 'Value'
And the user type text '-3' in text field
When the user click button with name 'Query Instance'
Then the user should see data in a table where '$field' '$condition' '$value'

Scenario: Comparison operator is custom specified Value is Zero
Meta: @id11 11
Given the user refresh the Example page
When the user selects the item 'Data Presentation->DataSource Query' in a tree
And the user select 'FATCA_DASHBOARD' in comboBox
When the user click button with name 'Branch'
And the user select '2016_v01' in comboBox
When the user click button with name 'DataSource'
And the user select 'ObjectQuery[Data_Status_Filing_Entity]' in comboBox
When the user select all items in left column
And the user press forwardButton '1' times
When the user click button with name 'Number field'
And the user select 'ac_info_aggregated_count' in comboBox
When the user click button with name 'Comparison operator'
And the user select '=' in comboBox
When the user click button with name 'Value'
And the user type text '0' in text field
When the user click button with name 'Query Instance'
Then the user should see data in a table where '$field' '$condition' '$value'

Scenario: Comparison operator is custom specified Value is MIN INT_32
Meta: @id12 12
Given the user refresh the Example page
When the user selects the item 'Data Presentation->DataSource Query' in a tree
And the user select 'FATCA_DASHBOARD' in comboBox
When the user click button with name 'Branch'
And the user select '2016_v01' in comboBox
When the user click button with name 'DataSource'
And the user select 'ObjectQuery[Data_Status_Filing_Entity]' in comboBox
When the user select all items in left column
And the user press forwardButton '1' times
When the user click button with name 'Number field'
And the user select 'ac_info_aggregated_count' in comboBox
When the user click button with name 'Comparison operator'
And the user select '>=' in comboBox
When the user click button with name 'Value'
And the user type text '-2147483648' in text field
When the user click button with name 'Query Instance'
Then the user should see data in a table where '$field' '$condition' '$value'


Scenario: Comparison operator is custom specified Value is MAX INT_32
Meta: @id13 13
Given the user refresh the Example page
When the user selects the item 'Data Presentation->DataSource Query' in a tree
And the user select 'FATCA_DASHBOARD' in comboBox
When the user click button with name 'Branch'
And the user select '2016_v01' in comboBox
When the user click button with name 'DataSource'
And the user select 'ObjectQuery[Data_Status_Filing_Entity]' in comboBox
When the user select all items in left column
And the user press forwardButton '1' times
When the user click button with name 'Number field'
And the user select 'ac_info_aggregated_count' in comboBox
When the user click button with name 'Comparison operator'
And the user select '<=' in comboBox
When the user click button with name 'Value'
And the user type text '2147483648' in text field
When the user click button with name 'Query Instance'
Then the user should see data in a table where '$field' '$condition' '$value'

Scenario: Query Instance from Project, Branch, DataSource as All Instances
Meta: @id14 14
Given the user refresh the Example page
When the user selects the item 'Data Presentation->DataSource Query' in a tree
And the user select 'FATCA_DASHBOARD' in comboBox
When the user click button with name 'Branch'
And the user select '2016_v01' in comboBox
When the user click button with name 'DataSource'
And the user select 'ObjectQuery[Data_Status_Filing_Entity]' in comboBox
When the user select all items in left column
And the user press forwardButton '1' times
And the user click button with name 'Query Instance'
Then the user should see all data in a table

Scenario: Query Instance from Project, Branch, DataSource and Order ASC - order by empty field
Meta: @id15 15
Given the user refresh the Example page
When the user selects the item 'Data Presentation->DataSource Query' in a tree
And the user select 'FATCA_DASHBOARD' in comboBox
When the user click button with name 'Branch'
And the user select '2016_v01' in comboBox
When the user click button with name 'DataSource'
And the user select 'ObjectQuery[Data_Status_Filing_Entity]' in comboBox
When the user select all items in left column
And the user press forwardButton '1' times
And the user click button with name 'Query Instance'
And the user select 'XXXXX' in left column
Then the user should see sorted data in a table

!-- Scenario: Query Instance from Project, Branch, DataSource and Order ASC - Order by specified field
!-- Scenario: Query Instance from Project, Branch, DataSource and Order ASC - Order by non-existing field

!-- Scenario: Query Instance from Project, Branch, DataSource as Date when Instance exists
!-- Scenario: Query Instance from Project, Branch, DataSource as Date when Instance does not exist

