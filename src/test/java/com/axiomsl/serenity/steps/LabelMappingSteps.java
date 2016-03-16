package com.axiomsl.serenity.steps;

import com.axiomsl.serenity.steps.serenity.LabelSteps;
import net.thucydides.core.annotations.Steps;
import org.jbehave.core.annotations.Then;


public class LabelMappingSteps {

    @Steps
    LabelSteps step;

    //THEN
    @Then("the user should see the label with text '$text'")
    public void thenTheyShouldSeeALabelWithText(String text) {
        step.should_see_label_with_text(text);
    }
    @Then("the user should not see the label with text '$text'")
    public void thenTheyShouldNotSeeALabelWithText(String text) {
        step.should_not_see_label_with_text(text);
    }


}
