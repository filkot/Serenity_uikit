package com.axiomsl.serenity.steps.complex.then;

import com.axiomsl.serenity.steps.basic.TooltipSteps;
import net.thucydides.core.annotations.Steps;
import org.jbehave.core.annotations.Then;

/**
 * Created by kfilippov on 09.03.2016.
 */
public class TooltipMappingStepsThen {

    //region @Steps

    @Steps
    TooltipSteps step;

    //endregion @Steps

    //region @Then

    @Then("the user should see the tooltip with text '$text'")
    public void thenTheyShouldSeeATooltipWithText(String text) {
        step.should_see_tooltip_with_text(text);
    }

    @Then("the user should not see the tooltip with text '$text'")
    public void thenTheyShouldNotSeeATooltipWithText(String text) {
        step.should_not_see_tooltip_with_text(text);
    }

    //endregion @Then
}
