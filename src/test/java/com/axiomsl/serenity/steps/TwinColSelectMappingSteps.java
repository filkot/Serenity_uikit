package com.axiomsl.serenity.steps;


import com.axiomsl.serenity.steps.serenity.TwinColSelectSteps;
import net.thucydides.core.annotations.Steps;
import org.jbehave.core.annotations.Then;
import org.jbehave.core.annotations.When;


public class TwinColSelectMappingSteps {

    @Steps
    TwinColSelectSteps step;

    //WHEN
    @When("the user transferred '$item' from left to right")
    public void whenTheUserSelectItemInTwinColOptions(String item) {
        step.transferred_item_from_left_to_right(item);
    }

    @When("the user transferred '$item' from right to left")
    public void whenTheUserSelectItemInTwinColSelections(String item) {
        step.transferred_item_from_right_to_left(item);
    }

    //THEN
    @Then("they should see the item list '$items' in right col")
    public void thenTheyShouldSeeItemListInRightCol(String items) {
        step.should_see_items_in_right_col(items);
    }

    @Then("they should see the item list '$items' in left col")
    public void thenTheyShouldSeeItemListInLeftCol(String items) {
        step.should_see_items_in_left_col(items);
    }


}
