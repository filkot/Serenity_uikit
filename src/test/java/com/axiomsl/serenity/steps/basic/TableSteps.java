package com.axiomsl.serenity.steps.basic;

import com.axiomsl.serenity.actions.TableAction;
import com.axiomsl.serenity.helpers.HelperManager;
import net.thucydides.core.annotations.Step;
import net.thucydides.core.steps.ScenarioSteps;
import org.hamcrest.Matchers;

import java.util.List;

import static org.hamcrest.MatcherAssert.assertThat;
import static org.hamcrest.Matchers.*;

public class TableSteps extends ScenarioSteps {

    TableAction action;

    //region Assertions

    @Step
    public void should_see_items_in_table(List<String> items, int columnNumber) {
        assertThat(action.get_column_of_table_by_index(columnNumber), is(equalTo(items)));
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
    public void should_see_column_with_name_in_table(String tableCaption, String columnName) {
        assertThat(action.getTable(tableCaption).getHeadingsAsString(), hasItem(columnName));
    }

    @Step
    public void should_not_see_column_with_name_in_table(String tableCaption, String columnName) {
        assertThat(action.getTable(tableCaption).getHeadingsAsString(), is(not(hasItem(columnName))));
    }

    @Step
    public void should_see_row_with_value_is_selected(String tableCaption, String columnName, String cellValue) {
        assertThat(action.getTable(tableCaption).isRowSelected(columnName, cellValue), is(true));
    }

    @Step
    public void should_see_row_with_value_is_unselected(String tableCaption, String columnName, String cellValue) {
        assertThat(action.getTable(tableCaption).isRowSelected(columnName, cellValue), is(false));
    }

    @Step
    public void should_see_row_with_value_is_deselected(String tableCaption, String columnName, String cellValue) {
        assertThat(action.getTable(tableCaption).isRowDeselected(columnName, cellValue), is(true));
    }

    @Step
    public void should_see_checked_item_in_settings_wheel(String item, String tableCaption) {
        assertThat(action.getTable(tableCaption).isSettingsItemIsChecked(item), is(true));
    }

    @Step
    public void should_see_unchecked_item_in_settings_wheel(String item, String tableCaption) {
        assertThat(action.getTable(tableCaption).isSettingsItemIsChecked(item), is(false));
    }

    @Step
    public void should_see_checked_checkbox_in_column(String tableCaption, String columnName, String cellValue, String checkboxColumnName) {
        assertThat(action.getTable(tableCaption).isCheckBoxIsCheckedInColumnForRow(columnName, cellValue, checkboxColumnName), is(true));
    }

    @Step
    public void should_see_unchecked_checkbox_in_column(String tableCaption, String columnName, String cellValue, String checkboxColumnName) {
        assertThat(action.getTable(tableCaption).isCheckBoxIsCheckedInColumnForRow(columnName, cellValue, checkboxColumnName), is(false));
    }

    @Step
    public void should_see_column_with_text_in_table(String tableCaption, String columnName, String cellValue) {
        assertThat(action.getTable(tableCaption).isTextEqualsInColumn(columnName, cellValue), is(true));
    }

    @Step
    public void should_see_row_in_table(String tableCaption, String columnName, String cellValue) {
        assertThat(action.getTable(tableCaption).isRowPresentInTable(columnName, cellValue), is(true));
    }

    @Step
    public void should_not_see_row_in_table(String tableCaption, String columnName, String cellValue) {
        assertThat(action.getTable(tableCaption).isRowPresentInTable(columnName, cellValue), is(false));
    }

    @Step
    public void should_see_text_in_cell(String tableCaption, String columnKey, String cellValue, String columnName, String inputText) {
        assertThat(action.getTable(tableCaption).getTextInCell(columnKey, cellValue, columnName), is(inputText));
    }

    @Step
    public void should_see_text_in_cell_in_row_number(String tableCaption, String columnName, int rowNumber, String inputText) {
        assertThat(action.getTable(tableCaption).getTextInCellByRowNumber(columnName, rowNumber), is(inputText));
    }

    @Step
    public void should_not_see_columns(String tableCaption) {
        assertThat(action.getTable(tableCaption).getHeadings().size(), is(0));
    }

    @Step
    public void should_not_see_rows(String tableCaption) {
        assertThat(action.getTable(tableCaption).getRows().size(), is(0));
    }

    @Step
    public void should_see_date_in_cell(String tableCaption, String columnKey, String cellValue, String columnName, String inputDate) {
        assertThat(action.getTable(tableCaption).getDateInCell(columnKey, cellValue, columnName),
                Matchers.is(HelperManager.Conversions.convertStringToDate(inputDate, HelperManager.Utils.DefaultDateFormatLocale)));
    }

    @Step
    public void should_see_values_sorted_ascending(String columnName, String tableCaption) {
        List<String> sortedValues = action.getTable(tableCaption).getValuesFromColumn(columnName);
        String[] expectedValues = HelperManager.Conversions.convertListToStringArray(HelperManager.Sorting.sortAscending(sortedValues));
        assertThat(HelperManager.Conversions.convertListToStringArray(sortedValues), arrayContaining(expectedValues));
    }

    @Step
    public void should_see_values_sorted_descending(String columnName, String tableCaption) {
        List<String> sortedValues = action.getTable(tableCaption).getValuesFromColumn(columnName);
        String[] expectedValues = HelperManager.Conversions.convertListToStringArray(HelperManager.Sorting.sortDescending(sortedValues));
        assertThat(HelperManager.Conversions.convertListToStringArray(sortedValues), arrayContaining(expectedValues));
    }

    @Step
    public void should_see_rows_number_in_table(int rowsNumber, String tableCaption) {
        assertThat(action.getTable(tableCaption).getRowsList().size(), is(rowsNumber));
    }

    @Step
    public void should_see_sum_value_equals_in_label(String tableCaption) {
        assertThat(action.getTable(tableCaption).isSumEqualLabel(), is(true));
    }

    @Step
    public void should_see_values_sorted_as_list(List<String> expectedList, String columnName, String tableCaption) {
        String[] unsortedValues = HelperManager.Conversions.convertListToStringArray(action.getTable(tableCaption).getCountedValuesFromColumn(columnName, expectedList));
        assertThat(unsortedValues, arrayContaining(HelperManager.Conversions.convertListToStringArray(HelperManager.Utils.removeTripleDots(expectedList))));
    }

    //endregion Assertions

    //region Conditions

    @Step
    public void get_table_rows() {
        action.getTableRows();
    }

    @Step
    public void make_column_visible(String tableCaption, String columnName) {
        action.getTable(tableCaption).makeColumnVisible(columnName);
    }

    @Step
    public void make_column_not_visible(String tableCaption, String columnName) {
        action.getTable(tableCaption).makeColumnNotVisible(columnName);
    }

    @Step
    public void scroll_vertically_table(String tableCaption, String actionScroll) {
        action.getTable(tableCaption).scrollVerticallyTable(actionScroll);
    }

    @Step
    public void select_row_with_value_in_table(String tableCaption, String columnName, String cellValue) {
        action.getTable(tableCaption).selectRow(columnName, cellValue);
    }

    @Step
    public void deselect_row_with_value_in_table(String tableCaption, String columnName, String cellValue) {
        action.getTable(tableCaption).deselectRow(columnName, cellValue);
    }

    @Step
    public void press_button_in_column_for_row_in_table(String tableCaption, String columnName, String cellValue, String buttonColumnName) {
        action.getTable(tableCaption).pressButtonInColumnForRow(columnName, cellValue, buttonColumnName);
    }

    @Step
    public void select_checkbox_for_row_in_table(String tableCaption, String columnName, String cellValue) {
        action.getTable(tableCaption).selectCheckboxInRow(columnName, cellValue);
    }

    @Step
    public void deselect_checkbox_for_row_in_table(String tableCaption, String columnName, String cellValue) {
        action.getTable(tableCaption).deselectCheckboxInRow(columnName, cellValue);
    }

    @Step
    public void select_checkbox_in_column_for_row_in_table(String tableCaption, String columnName, String cellValue, String checkboxColumnName) {
        action.getTable(tableCaption).selectCheckboxInColumnForRow(columnName, cellValue, checkboxColumnName);
    }

    @Step
    public void deselect_checkbox_in_column_for_row_in_table(String tableCaption, String columnName, String cellValue, String checkboxColumnName) {
        action.getTable(tableCaption).deselectCheckboxInColumnForRow(columnName, cellValue, checkboxColumnName);
    }

    @Step
    public void multi_select_for_rows_in_table(String tableCaption, String columnName, String cellValue) {
        action.getTable(tableCaption).multiSelectRows(columnName, cellValue);
    }

    @Step
    public void input_text_in_cell_in_table(String tableCaption, String columnKey, String cellValue, String columnName, String inputText) {
        action.getTable(tableCaption).inputTextInCell(columnKey, cellValue, columnName, inputText);
    }

    @Step
    public void input_text_in_row_number_in_cell_in_table(String tableCaption, String columnName, int rowNumber, String inputText) {
        action.getTable(tableCaption).inputTextInCellByRowNumber(columnName, rowNumber, inputText);
    }

    @Step
    public void undo_text_in_cell_in_table(String tableCaption, String columnKey, String cellValue, String columnName) {
        action.getTable(tableCaption).undoTextInCell(columnKey, cellValue, columnName);
    }

    @Step
    public void input_text_in_filter_in_table(String tableCaption, String columnKey, String inputText) {
        action.getTable(tableCaption).inputTextInFilter(columnKey, inputText);
    }

    @Step
    public void select_date_in_filter_in_table(int dayValue, String dateDirection, String columnKey, String beforeAfter, String tableCaption) {
        action.getTable(tableCaption).selectDateInFilter(columnKey, beforeAfter, dateDirection, dayValue);
    }

    @Step
     public void make_filter_empty_in_table(String tableCaption, String columnKey) {
        action.getTable(tableCaption).makeFilterEmpty(columnKey);
    }

    @Step
    public void clear_date_filter_in_table(String tableCaption, String columnKey) {
        action.getTable(tableCaption).clearDateFilter(columnKey);
    }

    @Step
    public void click_n_times_at_header_in_table(String tableCaption, String columnKey, int n) {
        action.getTable(tableCaption).clickAtHeader(columnKey, n);
    }

    @Step
    public void select_date_in_cell_in_table(String tableCaption, String columnKey, String cellValue, String columnName, String date) {
        action.getTable(tableCaption).selectDateInCell(columnKey, cellValue, columnName, date);
    }

    @Step
    public void input_date_in_cell_in_table(String tableCaption, String columnKey, String cellValue, String columnName, String date) {
        action.getTable(tableCaption).inputDateInCell(columnKey, cellValue, columnName, date);
    }

    @Step
    public void expand_row_in_treetable(String columnName, String cellValue, String tableCaption) {
        action.getTable(tableCaption).expandRow(columnName, cellValue);
    }

    @Step
    public void collapse_row_in_treetable(String columnName, String cellValue, String tableCaption) {
        action.getTable(tableCaption).collapseRow(columnName, cellValue);
    }

    @Step
    public void remove_all_row_in_table_by_pressing_button(String buttonName, String tableCaption) {
        action.getTable(tableCaption).remove_all_rows_by_button(buttonName);
    }
    //endregion Conditions
}