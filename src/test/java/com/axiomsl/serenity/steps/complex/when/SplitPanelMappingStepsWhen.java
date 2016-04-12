package com.axiomsl.serenity.steps.complex.when;

import com.axiomsl.serenity.steps.basic.SplitPanelSteps;
import net.thucydides.core.annotations.Steps;
import org.jbehave.core.annotations.Aliases;
import org.jbehave.core.annotations.When;

/**
 * Created by dbudranov on 12.04.2016.
 */
public class SplitPanelMappingStepsWhen {

    //region @Steps

    @Steps
    SplitPanelSteps step;
    //endregion @Steps

    //region @When

    @When("the user moves horizontal splitter of '$container' panel on '$offsetX' to the {right|left}")
    @Aliases(values={"the user moves horizontal splitter of '$container' sub-panel on '$offsetX' to the {right|left}"})
    public void whenTheUserMovesHSplitter(String container, int offsetX){
        step.move_h_splitter_by_offset(container, offsetX);
    }

    @When("the user moves vertical splitter of '$container' panel on '$offsetY' {up|down}")
    @Aliases(values={"the user moves vertical splitter of '$container' sub-panel on '$offsetY' {up|down}"})
    public void whenTheUserMovesVSplitter(String container, int offsetY){
        step.move_v_splitter_by_offset(container, offsetY);
    }

    //endregion @When
}
