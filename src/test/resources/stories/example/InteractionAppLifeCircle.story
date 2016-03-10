Narrative:
*-----------------------------------------------------------------------------------------------------------------------
* Tested application: vaadin_example
*
* UI element: Interaction -> App life circle (1.16)
*-----------------------------------------------------------------------------------------------------------------------

Scenario: Login to system
Given the user is on the Example page
When the user login in system

!-- Scenario: TBD - localization

Scenario: Logout from the system
Given the user refresh the Example page
When the user select 'Interaction->App life circle' in tree
When the user click button with name 'Logout Application'
Then they should see login menu

Scenario: Login to system
Given the user is on the Example page
When the user login in system
When the user select 'Interaction->Menu' in tree
When the user click menu item with name 'Menu4'
Then they should see the item list 'Menu8, Menu9, Menu10, Menu11' for 'Menu4'