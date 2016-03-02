package com.axiomsl.serenity.steps;

import com.axiomsl.serenity.steps.serenity.ComboBoxSteps;
import net.thucydides.core.annotations.Steps;
import org.jbehave.core.annotations.When;


public class ComboBoxMappingSteps {

    @Steps
    ComboBoxSteps step;

    //WHEN
    @When("the user select '$item' in comboBox")
    public void whenTheUserSelectItemInComboBox(String item) {
        step.select_item_in_comboBox(item);
    }

}
