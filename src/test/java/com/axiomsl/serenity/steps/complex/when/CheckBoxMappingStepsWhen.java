package com.axiomsl.serenity.steps.complex.when;

import com.axiomsl.serenity.steps.basic.CheckBoxSteps;
import net.thucydides.core.annotations.Steps;
import org.jbehave.core.annotations.When;

public class CheckBoxMappingStepsWhen {

    //region @Steps

    @Steps
    CheckBoxSteps step;

    //endregion @Steps

    //region @When

    @When("the user {selects|checks} the checkbox with '$checkBoxName' caption")
    public void whenTheUserSelectCheckbox(String checkBoxName) {
        step.select_checkbox(checkBoxName);
    }

    @When("the user {deselects|unchecks} the checkbox with '$checkBoxName' caption")
    public void whenTheUserDeselectCheckbox(String checkBoxName) {
        step.deselect_checkbox(checkBoxName);
    }

    //endregion @When
}