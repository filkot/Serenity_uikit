package com.axiomsl.serenity.steps.complex.then;

import com.axiomsl.serenity.steps.basic.LabelSteps;
import net.thucydides.core.annotations.Steps;
import org.jbehave.core.annotations.Then;


public class LabelMappingStepsThen {

    //region @Steps

    @Steps
    LabelSteps step;

    //endregion @Steps

    //region @Then

    @Then("the user should see the label with '$text' text")
    public void thenTheyShouldSeeALabelWithText(String text) {
        step.should_see_label_with_text(text);
    }

    @Then("the user should not see the label with '$text' text")
    public void thenTheyShouldNotSeeALabelWithText(String text) {
        step.should_not_see_label_with_text(text);
    }

    //endregion @Then
}
