package com.axiomsl.serenity.steps.serenity;

import com.axiomsl.serenity.actions.CheckBoxAction;
import com.axiomsl.serenity.actions.TreeAction;
import net.thucydides.core.annotations.Step;
import net.thucydides.core.steps.ScenarioSteps;


public class TreeSteps extends ScenarioSteps {

    TreeAction action;


    @Step
    public void select_item_in_tree(String item) {
        action.select_item_in_tree(item);
    }


}