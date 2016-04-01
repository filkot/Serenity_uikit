package com.axiomsl.serenity.steps.complex.then;

import com.axiomsl.serenity.steps.basic.TextInputSteps;
import net.thucydides.core.annotations.Steps;
import org.jbehave.core.annotations.Then;

public class TextInputMappingStepsThen {

    //region @Steps

    @Steps
    TextInputSteps step;

    //endregion @Steps

    //region @Then

    @Then("they should see the textField")
    public void thenTheyShouldSeeATextField() {
        step.should_see_text_field();
    }

    @Then("they should not see the textField")
    public void thenTheyShouldNotSeeATextField() {
        step.should_not_see_text_field();
    }

    //endregion @Then
}
