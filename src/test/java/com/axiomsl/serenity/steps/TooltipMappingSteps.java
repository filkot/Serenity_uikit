package com.axiomsl.serenity.steps;

import com.axiomsl.serenity.steps.serenity.TooltipSteps;
import net.thucydides.core.annotations.Steps;
import org.jbehave.core.annotations.Then;

/**
 * Created by kfilippov on 09.03.2016.
 */
public class TooltipMappingSteps {

    @Steps
    TooltipSteps step;

    @Then("they should see a tooltip with text '$text'")
    public void thenTheyShouldSeeATooltipWithText(String text) {
        step.should_see_tooltip_with_text(text);
    }
}
