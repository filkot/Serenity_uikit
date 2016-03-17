package com.axiomsl.serenity.steps.serenity;

import com.axiomsl.serenity.actions.ComboBoxAction;
import net.thucydides.core.annotations.Step;
import net.thucydides.core.steps.ScenarioSteps;


public class ComboBoxSteps extends ScenarioSteps {

    ComboBoxAction action;


    @Step
    public void select_item_in_comboBox(String item) {
        action.select_item_in_comboBox(item);
    }


    @Step
    public void select_item_in_comboBox_with_caption(String comboBoxCaption, String item) {
        action.getComboBoxByCaption(comboBoxCaption).selectItem(item);
    }
}