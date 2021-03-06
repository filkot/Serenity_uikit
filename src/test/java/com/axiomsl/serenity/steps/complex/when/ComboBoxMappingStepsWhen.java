package com.axiomsl.serenity.steps.complex.when;

import com.axiomsl.serenity.steps.basic.ComboBoxSteps;
import net.thucydides.core.annotations.Steps;
import org.jbehave.core.annotations.When;


public class ComboBoxMappingStepsWhen {

    //region @Steps

    @Steps
    ComboBoxSteps step;

    //endregion @Steps

    //region @When

    @When("the user selects '$item' item from a combo box")
    public void whenTheUserSelectItemInComboBox(String item) {
        step.select_item_in_comboBox(item);
    }

    @When("the user selects '$item' item from '$comboBoxCaption' combo box")
    public void whenTheUserSelectsValueFromComboBox(String item, String comboBoxCaption) {
        step.select_item_in_comboBox_with_caption(comboBoxCaption, item);
    }

    //endregion @When
}
