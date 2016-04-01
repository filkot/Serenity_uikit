package com.axiomsl.serenity.steps.complex.when;

import com.axiomsl.serenity.steps.basic.PopupSteps;
import net.thucydides.core.annotations.Steps;
import org.jbehave.core.annotations.When;

/**
 * Created by kfilippov on 05.03.2016.
 */
public class PopupMappingStepsWhen {

    //region @Steps

    @Steps
    PopupSteps step;

    //endregion @Steps

    //region @When

    @When("the user close popup")
    public void whenTheUserClosePopup() {
        step.close();
    }

    @When("the user maximize popup")
    public void whenTheUserMaximizePopup() {
        step.maximize();
    }

    @When("the user restore popup")
    public void whenTheUserRestorePopup() {
        step.restore();
    }

    //endregion @When
}
