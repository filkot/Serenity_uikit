Narrative:
*-----------------------------------------------------------------------------------------------------------------------
* Tested application: vaadin_example
*
* UI element: Interaction -> ProgressBar (1.7)
*-----------------------------------------------------------------------------------------------------------------------

Scenario: Press Load button
Given the user is on the Example page
When the user login in system
When the user select 'Interaction->ProgressBar' in tree
When the user click button with name 'Load'
Then they should see the label with text '100%'
Narrative: Then they should see the item list 'second row' in left col
Narrative: Then they should see the progress bar with text '100%'
