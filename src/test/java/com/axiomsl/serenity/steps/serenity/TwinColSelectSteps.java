package com.axiomsl.serenity.steps.serenity;

import com.axiomsl.serenity.actions.CheckBoxAction;
import com.axiomsl.serenity.actions.TwinColSelectAction;
import net.thucydides.core.annotations.Step;
import net.thucydides.core.steps.ScenarioSteps;

import java.util.Arrays;
import java.util.List;

import static org.hamcrest.MatcherAssert.assertThat;
import static org.hamcrest.Matchers.hasItem;
import static org.hamcrest.Matchers.is;
import static org.hamcrest.Matchers.not;
import static org.hamcrest.Matchers.equalTo;


public class TwinColSelectSteps extends ScenarioSteps {

    TwinColSelectAction action;


    @Step
    public void transferred_item_from_left_to_right(String item) {
        action.transferred_item_from_left_to_right(item);
    }

    @Step
    public void transferred_item_from_right_to_left(String item) {
        action.transferred_item_from_right_to_left(item);
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