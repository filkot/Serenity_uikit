package com.axiomsl.serenity.steps;

import com.axiomsl.serenity.steps.serenity.CheckBoxSteps;
import net.thucydides.core.annotations.Steps;
import org.jbehave.core.annotations.When;


public class CheckBoxMappingSteps {

    @Steps
    CheckBoxSteps step;

    //WHEN
    @When("the user select checkbox with caption '$checkBoxName'")
    public void whenTheUserSelectCheckbox(String checkBoxName) {
        step.select_checkbox(checkBoxName);
    }

    @When("the user deselect checkbox with caption '$checkBoxName'")
    public void whenTheUserDeselectCheckbox(String checkBoxName) {
        step.deselect_checkbox(checkBoxName);
    }


}
