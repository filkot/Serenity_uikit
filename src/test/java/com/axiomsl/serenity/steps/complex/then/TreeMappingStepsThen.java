package com.axiomsl.serenity.steps.complex.then;

import com.axiomsl.serenity.steps.basic.TreeSteps;
import net.thucydides.core.annotations.Steps;
import org.jbehave.core.annotations.Then;

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

    //endregion @Then
}
