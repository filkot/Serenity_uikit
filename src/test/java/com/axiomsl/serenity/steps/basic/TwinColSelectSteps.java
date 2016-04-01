package com.axiomsl.serenity.steps.basic;

import com.axiomsl.serenity.actions.TwinColSelectAction;
import net.thucydides.core.annotations.Step;
import net.thucydides.core.steps.ScenarioSteps;

import java.util.List;

import static org.hamcrest.MatcherAssert.assertThat;
import static org.hamcrest.Matchers.*;


public class TwinColSelectSteps extends ScenarioSteps {

    TwinColSelectAction action;

    //region Assertions

    @Step
    public void should_see_items_in_left_col(List<String> items) {
        // List<String> itemsList = Arrays.asList(items.split("\\s*,\\s*"));
        assertThat(action.get_left_col_items_list(), is(equalTo(items)));
    }

    @Step
    public void should_see_items_in_right_col(List<String> items) {
        // List<String> itemsList = Arrays.asList(items.split("\\s*,\\s*"));
        assertThat(action.get_right_col_items_list(), is(equalTo(items)));
    }

    @Step
    public void should_see_empty_left_col() {
        assertThat(action.get_left_col_items_list(), is(empty()));
    }

    @Step
    public void should_see_empty_right_col() {
        assertThat(action.get_right_col_items_list(), is(empty()));
    }

    //endregion Assertions

    //region Conditions

    @Step
    public void press_forward_button_n_times(String n) {
        action.press_forward_button_n_times(n);
    }

    @Step
    public void press_back_button_n_times(String n) {
        action.press_back_button_n_times(n);
    }

    @Step
    public void select_left_col() {
        action.select_left_col();
    }

    @Step
    public void select_right_col() {
        action.select_right_col();
    }

    @Step
    public void select_item_in_left_col(String item) {
        action.select_item_in_left_col(item);
    }

    @Step
    public void select_item_in_right_col(String item) {
        action.select_item_in_right_col(item);
    }

    @Step
    public void select_all_items_in_left_col() {
        action.select_all_items_in_left_col();
    }

    @Step
    public void select_all_items_in_right_col() {
        action.select_all_items_in_right_col();
    }

    @Step
    public void transfer_item_from_left_to_right(String item) {
        action.transfer_item_from_left_to_right(item);
    }

    @Step
    public void transfer_item_from_right_to_left(String item) {
        action.transfer_item_from_right_to_left(item);
    }

    @Step
    public void transfer_item_from_left_to_right_by_dbclick(String item) {
        action.transfer_item_from_left_to_right_by_dbclick(item);
    }

    @Step
    public void transfer_item_from_right_to_left_by_dbclick(String item) {
        action.transfer_item_from_right_to_left_by_dbclick(item);
    }

    //endregion Conditions
}