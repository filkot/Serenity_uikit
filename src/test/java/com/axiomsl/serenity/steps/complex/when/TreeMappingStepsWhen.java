package com.axiomsl.serenity.steps.complex.when;

import com.axiomsl.serenity.steps.basic.TreeSteps;
import net.thucydides.core.annotations.Steps;
import org.jbehave.core.annotations.When;

public class TreeMappingStepsWhen {

    //region @Steps

    @Steps
    TreeSteps step;

    //endregion @Steps

    //region @When

    @When("the user selects the item '$item' in a tree")
    public void whenTheUserSelectsItemInTree(String item) {
        step.select_item_in_tree(item);
    }

    //endregion @When
}
