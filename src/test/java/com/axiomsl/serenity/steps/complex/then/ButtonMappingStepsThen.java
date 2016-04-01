package com.axiomsl.serenity.steps.complex.then;

import com.axiomsl.serenity.steps.basic.ButtonSteps;
import net.thucydides.core.annotations.Steps;
import org.jbehave.core.annotations.Then;

public class ButtonMappingStepsThen {

    //region @Steps

    @Steps
    ButtonSteps step;

    //endregion @Steps

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