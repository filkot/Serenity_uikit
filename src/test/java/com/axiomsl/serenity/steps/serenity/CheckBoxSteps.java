package com.axiomsl.serenity.steps.serenity;

import com.axiomsl.serenity.actions.CheckBoxAction;
import net.thucydides.core.annotations.Step;
import net.thucydides.core.steps.ScenarioSteps;


public class CheckBoxSteps extends ScenarioSteps {

    CheckBoxAction action;


    @Step
    public void select_checkbox(String checkBoxName) {
        action.select_checkbox(checkBoxName);
    }

    @Step
    public void deselect_checkbox(String checkBoxName) {
        action.deselect_checkbox(checkBoxName);
    }


}