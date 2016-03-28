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
    @Then("the user should see the button with '$buttonName' name")
    public void thenTheUserShouldSeeButtonWithName(String buttonName) {
        step.should_see_button_with_name(buttonName);
    }

    @Then("the user should see that '$buttonName' button is enabled")
    public void thenTheUserShouldSeeButtonIsEnabled(String buttonName) {
        step.should_see_button_is_enabled(buttonName);
    }

    @Then("the user should see that '$buttonName' button is disabled")
    public void thenTheUserShouldSeeButtonIsDisabled(String buttonName) {
        step.should_see_button_is_disabled(buttonName);
    }
    //endregion @Then
}