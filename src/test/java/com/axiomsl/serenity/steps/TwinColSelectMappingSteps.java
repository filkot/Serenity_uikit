package com.axiomsl.serenity.steps;


import com.axiomsl.serenity.steps.serenity.TwinColSelectSteps;
import net.thucydides.core.annotations.Steps;
import org.jbehave.core.annotations.Then;
import org.jbehave.core.annotations.When;

import java.util.List;


public class TwinColSelectMappingSteps {

    @Steps
    TwinColSelectSteps step;

    //WHEN
    @When("the user presses 'Forward' button '$n' times")
    public void whenTheUserPressForwardButtonNTimes(String n) {
        step.press_forward_button_n_times(n);
    }

    @When("the user presses 'Back' button '$n' times")
    public void whenTheUserPressBackButtonNTimes(String n) {
        step.press_back_button_n_times(n);
    }

    @When("the user selects the left twin column")
    public void whenTheUserSelectLeftCol() {
        step.select_left_col();
    }

    @When("the user selects the right twin column")
    public void whenTheUserSelectRightCol() {
        step.select_right_col();
    }

    @When("the user selects item '$item' in the left twin column")
    public void whenTheUserSelectItemInLeftCol(String item) {
        step.select_item_in_left_col(item);
    }

    @When("the user select item '$item' in the right twin column")
    public void whenTheUserSelectItemInRightCol(String item) {
        step.select_item_in_right_col(item);
    }

    @When("the user selects all items in the left twin column")
    public void whenTheUserSelectAllItemsInLeftCol() {
        step.select_all_items_in_left_col();
    }

    @When("the user selects all items in the right twin column")
    public void whenTheUserSelectAllItemsInRightCol() {
        step.select_all_items_in_right_col();
    }

    @When("the user transfers item '$item' from the left to right")
    public void whenTheUserTransferItemFromLeftToRight(String item) {
        step.transfer_item_from_left_to_right(item);
    }

    @When("the user transfers item '$item' from the right to left")
    public void whenTheUserTransferItemFromRightToLeft(String item) {
        step.transfer_item_from_right_to_left(item);
    }

    @When("the user transfers the item '$item' from the left to right by double clicking on the item")
    public void whenTheUserDoubleClickOnItemInLeftCol(String item) {
        step.transfer_item_from_left_to_right_by_dbclick(item);
    }

    @When("the user transfers the item '$item' from the right to left by double clicking on the item")
    public void whenTheUserDoubleClickOnItemInRightCol(String item) {
        step.transfer_item_from_right_to_left_by_dbclick(item);
    }

    //THEN
    @Then("the user should see the item list '$items' in the right twin column")
    public void thenTheyShouldSeeItemListInRightCol(List<String> items) {
        step.should_see_items_in_right_col(items);
    }

    @Then("the user should see the item list '$items' in the left twin column")
    public void thenTheyShouldSeeItemListInLeftCol(List<String> items) {
        step.should_see_items_in_left_col(items);
    }

    @Then("the user should see the empty list in the right twin column")
    public void thenTheyShouldSeeEmptyListInRightCol() {
        step.should_see_empty_right_col();
    }

    @Then("the user should see the empty list in the left twin column")
    public void thenTheyShouldSeeEmptyListInLeftCol() {
        step.should_see_empty_left_col();
    }


}