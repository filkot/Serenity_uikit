package com.axiomsl.serenity.steps.basic;

import com.axiomsl.serenity.actions.CheckBoxAction;
import net.thucydides.core.annotations.Step;
import net.thucydides.core.steps.ScenarioSteps;

public class CheckBoxSteps extends ScenarioSteps {

    CheckBoxAction action;

    //region Conditions

    @Step
    public void select_checkbox(String checkBoxName) {
        action.select_checkbox(checkBoxName);
    }

    @Step
    public void deselect_checkbox(String checkBoxName) {
        action.deselect_checkbox(checkBoxName);
    }

    //endregion Conditions
}