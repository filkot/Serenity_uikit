package com.axiomsl.serenity.steps;

import com.axiomsl.serenity.steps.serenity.CheckBoxSteps;
import com.axiomsl.serenity.steps.serenity.TreeSteps;
import net.thucydides.core.annotations.Steps;
import org.jbehave.core.annotations.When;


public class TreeMappingSteps {

    @Steps
    TreeSteps step;

    @When("the user select '$item' in tree")
    public void whenTheUserSelectItemInTree(String item) {
        step.select_item_in_tree(item);
    }






}
