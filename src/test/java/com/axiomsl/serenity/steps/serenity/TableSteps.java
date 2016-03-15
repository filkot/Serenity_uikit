package com.axiomsl.serenity.steps.serenity;

import com.axiomsl.serenity.actions.TableAction;
import net.serenitybdd.core.pages.WebElementFacade;
import net.thucydides.core.annotations.Step;
import net.thucydides.core.steps.ScenarioSteps;

import java.util.Arrays;
import java.util.List;
import java.util.Map;

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
    public void make_column_visible(String tableCaption, String columnName) {
        action.getTableByCaption(tableCaption).makeVisibleColumn(columnName);
    }

    @Step
    public void make_column_not_visible(String tableCaption, String columnName) {
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
    public void scroll_vertically_table_with_caption(String tableCaption, String actionScroll) {
        action.getTableByCaption(tableCaption).verticalScroll(actionScroll);
    }

    @Step
    public void select_row_with_value_in_table_with_caption(String tableCaption, String columnName, String cellValue) {
        action.getTableByCaption(tableCaption).selectRow(columnName, cellValue);
    }

    @Step
    public void deselect_row_with_value_in_table_with_caption(String tableCaption, String columnName, String cellValue) {
        action.getTableByCaption(tableCaption).deselectRow(columnName, cellValue);
    }

    @Step
    public void should_see_row_with_value_is_selected(String tableCaption, String columnName, String cellValue) {
        assertThat(action.getTableByCaption(tableCaption).isRowSelected(columnName, cellValue), is(true));
    }

    @Step
    public void should_see_row_with_value_is_deselected(String tableCaption, String columnName, String cellValue) {
        assertThat(action.getTableByCaption(tableCaption).isRowSelected(columnName, cellValue), is(false));
    }

    @Step
    public void should_see_checked_item_in_settings_wheel(String item, String tableCaption) {
        assertThat(action.getTableByCaption(tableCaption).isSettingsItemIsChecked(item), is(true));
    }

    @Step
    public void should_see_unchecked_item_in_settings_wheel(String item, String tableCaption) {
        assertThat(action.getTableByCaption(tableCaption).isSettingsItemIsChecked(item), is(false));
    }
}