package com.axiomsl.serenity.steps.complex.then;

import com.axiomsl.serenity.steps.basic.TreeSteps;
import net.thucydides.core.annotations.Steps;
import org.jbehave.core.annotations.Then;

import java.util.List;

public class TreeMappingStepsThen {

    //region @Steps

    @Steps
    TreeSteps step;

    //endregion @Steps

    //region @Then

    @Then("the user should not be able to click on tree '$item' item")
    public void thenTheUserCannotSelectTreeItem(String item) {
        step.is_tree_item_available(item);
    }

    @Then("the user should see '$items' expanded items in '$itemPattern' tree")
    public void thenTheUserShouldSeeExpandedItems(String items, String itemPattern) {
        step.should_see_that_items_are_expanded(items, itemPattern);
    }

    @Then("the user should see '$items' collapsed items in '$itemPattern' tree")
    public void thenTheUserShouldSeeCollapsedItems(String items, String itemPattern) {
        step.should_see_that_items_are_collapsed(items, itemPattern);
    }

    @Then("the user should see '$items' checked items in '$itemPattern' tree")
    public void thenTheUserShouldSeeCheckedItems(String items, String itemPattern) {
        step.should_see_that_items_are_checked(items, itemPattern);
    }

    @Then("the user should see '$items' unchecked items in '$itemPattern' tree")
    public void thenTheUserShouldSeeUncheckedItems(String items, String itemPattern) {
        step.should_see_that_items_are_unchecked(items, itemPattern);
    }

    //endregion @Then
}
