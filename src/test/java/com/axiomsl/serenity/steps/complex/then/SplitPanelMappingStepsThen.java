package com.axiomsl.serenity.steps.complex.then;

import com.axiomsl.serenity.steps.basic.SplitPanelSteps;
import net.thucydides.core.annotations.Steps;
import org.jbehave.core.annotations.Then;

/**
 * Created by dbudranov on 12.04.2016.
 */
public class SplitPanelMappingStepsThen {

    //region @Steps

    @Steps
    SplitPanelSteps step;
    //endregion @Steps

    //region @Then

    @Then("the user should see that '$container' {panel|sub-panel} horizontal splitter is moved")
    public void thenTheUserShouldSeeHSplitterOffset(String container) {
        step.check_h_splitter_offset(container);
    }

    @Then("the user should see that '$container' {panel|sub-panel} vertical splitter is moved")
    public void thenTheUserShouldSeeVSplitterOffset(String container) {
        step.check_v_splitter_offset(container);
    }

    //endregion @Then
}
