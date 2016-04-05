package com.axiomsl.serenity.steps.complex.then;

import com.axiomsl.serenity.steps.basic.SlidingPanelSteps;
import net.thucydides.core.annotations.Steps;
import org.jbehave.core.annotations.Then;

import java.util.List;

/**
 * Created by dbudranov on 05.04.2016.
 */
public class SlidingPanelMappingStepsThen {
    //region @Steps

    @Steps
    SlidingPanelSteps step;
    //endregion @Steps

    //region @Then

    @Then("the user should see active sliding panel")
    public void thenTheUserShouldSeeActiveSlidingPanel(){
        step.should_see_active_slide_panel();
    }

    @Then("the user should see inactive sliding panel")
    public void thenTheUserShouldSeeInactiveSlidingPanel(){
        step.should_see_inactive_slide_panel();
    }

    //endregion @Then
}
