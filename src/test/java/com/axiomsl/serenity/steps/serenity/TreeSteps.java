package com.axiomsl.serenity.steps.serenity;

import com.axiomsl.serenity.actions.TreeAction;
import net.thucydides.core.annotations.Step;
import net.thucydides.core.steps.ScenarioSteps;
import static org.hamcrest.MatcherAssert.assertThat;
import static org.hamcrest.Matchers.is;


public class TreeSteps extends ScenarioSteps {

    TreeAction action;


    @Step
    public void select_item_in_tree(String item) {
        action.select_item_in_tree(item);
    }

    @Step
    public void is_tree_item_available(String item) {
        assertThat(action.is_tree_item_available(item), is(false));
    }

}