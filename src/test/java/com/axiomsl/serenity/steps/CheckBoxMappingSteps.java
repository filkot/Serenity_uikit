package com.axiomsl.serenity.steps;

import com.axiomsl.serenity.steps.serenity.CheckBoxSteps;
import net.thucydides.core.annotations.Steps;
import org.jbehave.core.annotations.Alias;
import org.jbehave.core.annotations.When;


public class CheckBoxMappingSteps {

    @Steps
    CheckBoxSteps step;

    //WHEN
    @When("the user selects the checkbox with '$checkBoxName' caption")
    @Alias("the user checks the checkbox with '$checkBoxName' caption")
    public void whenTheUserSelectCheckbox(String checkBoxName) {
        step.select_checkbox(checkBoxName);
    }

    @When("the user deselects the checkbox with '$checkBoxName' caption")
    @Alias("the user unchecks the checkbox with '$checkBoxName' caption")
    public void whenTheUserDeselectCheckbox(String checkBoxName) {
        step.deselect_checkbox(checkBoxName);
    }


}
