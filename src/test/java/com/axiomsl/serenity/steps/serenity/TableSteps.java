package com.axiomsl.serenity.steps.serenity;

import com.axiomsl.serenity.actions.TableAction;
import net.thucydides.core.annotations.Step;
import net.thucydides.core.steps.ScenarioSteps;

import java.util.Arrays;
import java.util.List;

import static org.hamcrest.MatcherAssert.assertThat;
import static org.hamcrest.Matchers.*;


public class TableSteps extends ScenarioSteps {

    TableAction action;


    @Step
    public void should_see_items_in_table(String items, int columnNumber) {
        List<String> itemsList = Arrays.asList(items.split("\\s*,\\s*"));
        assertThat(action.get_column_of_table_by_index(columnNumber), is(equalTo(itemsList)));
    }

    @Step
    public void should_see_column_with_name_in_table(String columnName) {
        assertThat(action.get_header_list(), hasItem(columnName));
    }

    @Step
    public void should_not_see_column_with_name_in_table(String columnName) {
        assertThat(action.get_header_list(), is(not(hasItem(columnName))));
    }

    @Step
    public void get_table_rows() {
        action.getTableRows();
    }


    @Step
    public void make_visible_column(String tableCaption, String columnName) {
        action.getTableByCaption(tableCaption).makeVisibleColumn(columnName);
    }

    @Step
    public void make_invisible_column(String tableCaption, String columnName) {
        action.getTableByCaption(tableCaption).makeInvisibleColumn(columnName);
    }

    @Step
    public void should_see_column_with_name_in_table_with_caption(String tableCaption, String columnName) {
        assertThat(action.getTableByCaption(tableCaption).getHeadingsAsString(), hasItem(columnName));
    }

    @Step
    public void should_not_see_column_with_name_in_table_with_caption(String tableCaption, String columnName) {
        assertThat(action.getTableByCaption(tableCaption).getHeadingsAsString(), is(not(hasItem(columnName))));
    }

    @Step
    public void vertical_scroll_table_with_caption(String tableCaption, String actionScroll) {
        action.getTableByCaption(tableCaption).vertical_scroll(actionScroll);
    }
}