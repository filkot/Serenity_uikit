package com.axiomsl.serenity.steps.complex.when;

import com.axiomsl.serenity.steps.basic.SlidingPanelSteps;
import net.thucydides.core.annotations.Steps;
import org.jbehave.core.annotations.When;

/**
 * Created by dbudranov on 05.04.2016.
 */
public class SlidingPanelMappingStepsWhen {
    //region @Steps

    @Steps
    SlidingPanelSteps step;
    //endregion @Steps

    //region @Then

    @When("the user moves a cursor on sliding panel")
    public void whenTheUserMovesCursorOnSlidePanel(){
        step.hover_on_slide_panel();
    }

    @When("the user moves a cursor out of sliding panel")
    public void whenTheUserMovesCursorOutOfSlidePanel(){
        step.hover_out_slide_panel();
    }

    //endregion @Then
}
