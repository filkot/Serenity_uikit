package com.axiomsl.serenity.steps;

import com.axiomsl.serenity.steps.serenity.TreeSteps;
import net.thucydides.core.annotations.Steps;
import org.jbehave.core.annotations.When;


public class TreeMappingSteps {

    @Steps
    TreeSteps step;

    @When("the user selects the item '$item' in a tree")
    public void whenTheUserSelectsItemInTree(String item) {
        step.select_item_in_tree(item);
    }


}
