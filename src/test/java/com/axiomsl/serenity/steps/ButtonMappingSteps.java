package com.axiomsl.serenity.steps;

import com.axiomsl.serenity.steps.serenity.ButtonSteps;
import net.thucydides.core.annotations.Steps;
import org.jbehave.core.annotations.Then;
import org.jbehave.core.annotations.When;

public class ButtonMappingSteps {

    //region @Steps
    @Steps
    ButtonSteps step;
    //endregion @Steps

    //region @When
    @When("the user clicks on '$buttonName' button")
    public void whenTheUserClicksOnTheButton(String buttonName) {
        step.click_button_by_name(buttonName);
    }

    @When("the user right clicks on '$buttonName' button")
    public void whenTheUserRightClicksOnTheButton(String buttonName) {
        step.right_click_button_by_name(buttonName);
    }

    @When("the user hovers on '$buttonName' button")
    public void whenTheUserHoverOnTheButton(String buttonName) {
        step.hover_on_button_by_name(buttonName);
    }
    //endregion @When

    //region @Then
    @Then("the user should see the button with '$name' name")
    public void thenTheUserShouldSeeButtonWithName(String name) {
        step.should_see_button_with_name(name);
    }
    //endregion @Then
}