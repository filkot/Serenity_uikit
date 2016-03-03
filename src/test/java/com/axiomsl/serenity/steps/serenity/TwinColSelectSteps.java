package com.axiomsl.serenity.steps.serenity;

import com.axiomsl.serenity.actions.TwinColSelectAction;
import net.thucydides.core.annotations.Step;
import net.thucydides.core.steps.ScenarioSteps;

import java.util.Arrays;
import java.util.List;

import static org.hamcrest.MatcherAssert.assertThat;
import static org.hamcrest.Matchers.equalTo;
import static org.hamcrest.Matchers.is;


public class TwinColSelectSteps extends ScenarioSteps {

    TwinColSelectAction action;


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

    @Step
    public void should_see_items_in_left_col(String items) {
        List<String> itemsList = Arrays.asList(items.split("\\s*,\\s*"));
        assertThat(action.get_left_col_items_list(), is(equalTo(itemsList)));
    }

    @Step
    public void should_see_items_in_right_col(String items) {
        List<String> itemsList = Arrays.asList(items.split("\\s*,\\s*"));
        assertThat(action.get_right_col_items_list(), is(equalTo(itemsList)));
    }



}