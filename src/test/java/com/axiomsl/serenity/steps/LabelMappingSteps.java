package com.axiomsl.serenity.steps;

import com.axiomsl.serenity.steps.serenity.CheckBoxSteps;
import com.axiomsl.serenity.steps.serenity.LabelSteps;
import net.thucydides.core.annotations.Steps;
import org.jbehave.core.annotations.Then;
import org.jbehave.core.annotations.When;


public class LabelMappingSteps {

    @Steps
    LabelSteps step;

    //THEN
    @Then("they should see the label with text '$text'")
    public void thenTheyShouldSeeALabelWithText(String text) {
        step.should_see_label_with_text(text);
    }


}
