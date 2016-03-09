package com.axiomsl.serenity.steps;


import com.axiomsl.serenity.steps.serenity.TwinColSelectSteps;
import net.thucydides.core.annotations.Steps;
import org.jbehave.core.annotations.Then;
import org.jbehave.core.annotations.When;


public class TwinColSelectMappingSteps {

    @Steps
    TwinColSelectSteps step;

    //WHEN
    @When("the user press forwardButton '$n' times")
    public void whenTheUserPressForwardButtonNTimes(String n) {
        step.press_forward_button_n_times(n);
    }

    @When("the user press backButton '$n' times")
    public void whenTheUserPressBackButtonNTimes(String n) {
        step.press_back_button_n_times(n);
    }

    @When("the user select left column")
    public void whenTheUserSelectLeftCol() {
        step.select_left_col();
    }

    @When("the user select right column")
    public void whenTheUserSelectRightCol() {
        step.select_right_col();
    }

    @When("the user select '$item' in left column")
    public void whenTheUserSelectItemInLeftCol(String item) {
        step.select_item_in_left_col(item);
    }

    @When("the user select '$item' in right column")
    public void whenTheUserSelectItemInRightCol(String item) {
        step.select_item_in_right_col(item);
    }

    @When("the user select all items in left column")
    public void whenTheUserSelectAllItemsInLeftCol() {
        step.select_all_items_in_left_col();
    }

    @When("the user select all items in right column")
    public void whenTheUserSelectAllItemsInRightCol() {
        step.select_all_items_in_right_col();
    }

    @When("the user transfer '$item' from left to right")
    public void whenTheUserTransferItemFromLeftToRight(String item) {
        step.transfer_item_from_left_to_right(item);
    }

    @When("the user transfer '$item' from right to left")
    public void whenTheUserTransferItemFromRightToLeft(String item) {
        step.transfer_item_from_right_to_left(item);
    }

    @When("the user transfer '$item' from left to right by double clicking on item")
    public void whenTheUserDoubleClickOnItemInLeftCol(String item) {
        step.transfer_item_from_left_to_right_by_dbclick(item);
    }

    @When("the user transfer '$item' from right to left by double clicking on item")
    public void whenTheUserDoubleClickOnItemInRightCol(String item) {
        step.transfer_item_from_right_to_left_by_dbclick(item);
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
