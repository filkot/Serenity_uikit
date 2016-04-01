package com.axiomsl.serenity.steps.complex.when;


import com.axiomsl.serenity.steps.basic.TwinColSelectSteps;
import net.thucydides.core.annotations.Steps;
import org.jbehave.core.annotations.When;


public class TwinColSelectMappingStepsWhen {

    //region @Steps

    @Steps
    TwinColSelectSteps step;

    //endregion @Steps

    //region @When

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

    @When("the user selects '$item' item in the left twin column")
    public void whenTheUserSelectItemInLeftCol(String item) {
        step.select_item_in_left_col(item);
    }

    @When("the user selects '$item' item in the right twin column")
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

    @When("the user transfers '$item' item from the left to right")
    public void whenTheUserTransferItemFromLeftToRight(String item) {
        step.transfer_item_from_left_to_right(item);
    }

    @When("the user transfers '$item' item from the right to left")
    public void whenTheUserTransferItemFromRightToLeft(String item) {
        step.transfer_item_from_right_to_left(item);
    }

    @When("the user transfers '$item' item from the left to right by double clicking on the item")
    public void whenTheUserDoubleClickOnItemInLeftCol(String item) {
        step.transfer_item_from_left_to_right_by_dbclick(item);
    }

    @When("the user transfers '$item' item from the right to left by double clicking on the item")
    public void whenTheUserDoubleClickOnItemInRightCol(String item) {
        step.transfer_item_from_right_to_left_by_dbclick(item);
    }

    //endregion @When
}