package com.axiomsl.serenity.steps.serenity;

import com.axiomsl.serenity.actions.CheckBoxAction;
import com.axiomsl.serenity.actions.TableAction;
import net.thucydides.core.annotations.Step;
import net.thucydides.core.steps.ScenarioSteps;

import java.util.Arrays;
import java.util.List;

import static org.hamcrest.MatcherAssert.assertThat;
import static org.hamcrest.Matchers.hasItem;
import static org.hamcrest.Matchers.is;
import static org.hamcrest.Matchers.not;
import static org.hamcrest.Matchers.equalTo;


public class TableSteps extends ScenarioSteps {

    TableAction action;


    @Step
    public void should_see_items_in_table(String items, int i) {
        List<String> itemsList = Arrays.asList(items.split("\\s*,\\s*"));
        assertThat(action.get_column_of_table_by_index(i), is(equalTo(itemsList)));
    }

    @Step
    public void should_see_column_with_name_in_table(String nameColumn) {
        assertThat(action.get_header_list(), hasItem(nameColumn));
    }
    @Step
    public void should_not_see_column_with_name_in_table(String nameColumn) {
        assertThat(action.get_header_list(), is(not(hasItem(nameColumn))));
    }

    @Step
    public void get_table_rows() {
        action.getTableRows();
    }


}