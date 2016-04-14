package com.axiomsl.serenity.steps.basic;

import com.axiomsl.serenity.actions.TreeAction;
import net.thucydides.core.annotations.Step;
import net.thucydides.core.steps.ScenarioSteps;

import static org.hamcrest.MatcherAssert.assertThat;
import static org.hamcrest.Matchers.equalTo;
import static org.hamcrest.Matchers.is;

public class TreeSteps extends ScenarioSteps {

    TreeAction action;

    //region Assertions

    @Step
    public void is_tree_item_available(String item) {
        assertThat(action.isTreeItemAvailable(item), is(false));
    }

    @Step
    public void should_see_that_items_are_expanded(String items, String itemPattern) {
        assertThat(action.getExampleTree().getExpandedItemsInTree(itemPattern), is(equalTo(items)));
    }

    @Step
    public void should_see_that_items_are_collapsed(String items, String itemPattern) {
        assertThat(action.getExampleTree().getCollapsedItemsInTree(itemPattern), is(equalTo(items)));
    }

    @Step
    public void should_see_that_items_are_checked(String items, String itemPattern) {
        assertThat(action.getExampleTree().getCheckedItemsInTree(itemPattern), is(equalTo(items)));
    }

    @Step
    public void should_see_that_items_are_unchecked(String items, String itemPattern) {
        assertThat(action.getExampleTree().getUncheckedItemsInTree(itemPattern), is(equalTo(items)));
    }

    //endregion Assertions

    //region Conditions

    @Step
    public void select_item_in_tree(String item) {
        action.getNavigationTree().selectItemInTree(item);
    }

    //endregion Conditions
}