package com.axiomsl.serenity.steps.complex.when;

import com.axiomsl.serenity.steps.basic.TableSteps;
import net.thucydides.core.annotations.Steps;
import org.jbehave.core.annotations.Alias;
import org.jbehave.core.annotations.Aliases;
import org.jbehave.core.annotations.Named;
import org.jbehave.core.annotations.When;

public class TableMappingStepsWhen {

    //region @Steps

    @Steps
    TableSteps step;

    //endregion @Steps

    //region @When

    @When("the user gets the table rows")
    public void whenTheUserGetsTableRows() {
        step.get_table_rows();
    }

    @When("the user makes '$columnName' column visible from the settings wheel for '$tableCaption' table")
    @Alias("the user makes '$columnName' column visible from the settings wheel for <tableCaption> table")
    public void whenTheUserMakesColumnVisible(@Named("columnName") String columnName,
                                              @Named("tableCaption") String tableCaption) {
        step.make_column_visible(tableCaption, columnName);
    }

    @When("the user makes '$columnName' column not visible from the settings wheel for '$tableCaption' table")
    @Alias("the user makes '$columnName' column not visible from the settings wheel for <tableCaption> table")
    public void whenTheUserMakesColumnNotVisible(@Named("columnName") String columnName,
                                                 @Named("tableCaption") String tableCaption) {
        step.make_column_not_visible(tableCaption, columnName);
    }

    @When("the user scrolls up vertically to the beginning in '$tableCaption' table")
    @Alias("the user scrolls up vertically to the beginning in <tableCaption> table")
    public void whenTheUserScrollsUpVerticallyTable(@Named("tableCaption") String tableCaption) {
        step.scroll_vertically_table(tableCaption, "up");
    }

    @When("the user scrolls vertically down to the end in '$tableCaption' table")
    @Alias("the user scrolls vertically down to the end in <tableCaption> table")
    public void whenTheUserScrollsDownVerticallyTable(@Named("tableCaption") String tableCaption) {
        step.scroll_vertically_table(tableCaption, "down");
    }

    @When("the user selects the row with '$columnName' column and '$cellValue' value in '$tableCaption' table")
    @Alias("the user selects the row with '$columnName' column and '$cellValue' value in <tableCaption> table")
    public void whenTheUserSelectsRowInTable(@Named("columnName") String columnName,
                                             @Named("cellValue") String cellValue,
                                             @Named("tableCaption") String tableCaption) {
        step.select_row_with_value_in_table(tableCaption, columnName, cellValue);
    }

    @When("the user deselects the row with '$columnName' column and '$cellValue' value in '$tableCaption' table")
    @Alias("the user deselects the row with '$columnName' column and '$columnName' value in <tableCaption> table")
    public void whenTheUserDeselectsRowInTable(@Named("columnName") String columnName,
                                               @Named("cellValue") String cellValue,
                                               @Named("tableCaption") String tableCaption) {
        step.deselect_row_with_value_in_table(tableCaption, columnName, cellValue);
    }

    @When("the user {selects|checks} the checkbox for row with '$columnName' column and '$cellValue' value in '$tableCaption' table")
    @Alias("the user {selects|checks} the checkbox for row with '$columnName' column and '$cellValue' value in <tableCaption> table")
    public void whenTheUserSelectsCheckboxInRow(@Named("columnName") String columnName,
                                                @Named("cellValue") String cellValue,
                                                @Named("tableCaption") String tableCaption) {
        step.select_checkbox_for_row_in_table(tableCaption, columnName, cellValue);
    }

    @When("the user {deselects|unchecks} the checkbox for row with '$columnName' column and '$cellValue' value in '$tableCaption' table")
    @Aliases(values={"the user {deselects|unchecks} the checkbox for row with '$columnName' column and '$cellValue' value in <tableCaption> table"})
    public void whenTheUserDeselectsCheckboxInRow(@Named("columnName") String columnName,
                                                  @Named("cellValue") String cellValue,
                                                  @Named("tableCaption") String tableCaption) {
        step.deselect_checkbox_for_row_in_table(tableCaption, columnName, cellValue);
    }

    @When("the user {selects|checks} the checkbox in '$checkboxColumnName' column for row with '$columnName' column and '$cellValue' value in '$tableCaption' table")
    @Alias("the user {selects|checks} the checkbox in '$checkboxColumnName' column for row with '$columnName' column and '$cellValue' value in <tableCaption> table")
    public void whenTheUserSelectsCheckboxInColumnForRow(@Named("checkboxColumnName") String checkboxColumnName,
                                                         @Named("columnName") String columnName,
                                                         @Named("cellValue") String cellValue,
                                                         @Named("tableCaption") String tableCaption) {
        step.select_checkbox_in_column_for_row_in_table(tableCaption, columnName, cellValue, checkboxColumnName);
    }

    @When("the user {deselects|unchecks} the checkbox in '$checkboxColumnName' column for row with '$columnName' column and '$cellValue' value in '$tableCaption' table")
    @Alias("the user {deselects|unchecks} the checkbox in '$checkboxColumnName' column for row with '$columnName' column and '$cellValue' value in <tableCaption> table")
    public void whenTheUserDeselectsCheckboxInColumnForRow(@Named("checkboxColumnName") String checkboxColumnName,
                                                           @Named("columnName") String columnName,
                                                           @Named("cellValue") String cellValue,
                                                           @Named("tableCaption") String tableCaption) {
        step.deselect_checkbox_in_column_for_row_in_table(tableCaption, columnName, cellValue, checkboxColumnName);
    }

    @When("the user multi-selects the row with '$columnName' column and '$cellValue' value in '$tableCaption' table")
    @Alias("the user multi-selects the row with '$columnName' column and '$cellValue' value in <tableCaption> table")
    public void whenTheUserMultiSelectsTheRowsWithColumnInTable(@Named("columnName") String columnName,
                                                                @Named("cellValue") String cellValue,
                                                                @Named("tableCaption") String tableCaption) {
        step.multi_select_for_rows_in_table(tableCaption, columnName, cellValue);
    }

    @When("the user presses the button in '$buttonColumnName' column for row with '$columnName' column and '$cellValue' value in '$tableCaption' table")
    @Alias("the user presses the button in '$buttonColumnName' column for row with '$columnName' column and '$cellValue' value in $tableCaption table")
    public void whenTheUserPressButtonInColumnForRow(@Named("buttonColumnName") String buttonColumnName,
                                                     @Named("columnName") String columnName,
                                                     @Named("cellValue") String cellValue,
                                                     @Named("tableCaption") String tableCaption) {
        step.press_button_in_column_for_row_in_table(tableCaption, columnName, cellValue, buttonColumnName);
    }

    @When("the user selects '$inputDate' date into '$columnName' column for row with '$columnKey' column and '$cellValue' value in '$tableCaption' table")
    @Alias("the user selects '$inputDate' date into '$columnName' column for row with '$columnKey' column and '$cellValue' value in <tableCaption> table")
    public void whenTheUserSelectDateIntoColumnInRowInTable(@Named("inputDate") String inputDate,
                                                            @Named("columnName") String columnName,
                                                            @Named("columnKey") String columnKey,
                                                            @Named("cellValue") String cellValue,
                                                            @Named("tableCaption") String tableCaption) {
        step.select_date_in_cell_in_table(tableCaption, columnKey, cellValue, columnName, inputDate);
    }

    @When("the user inputs '$inputText' {date|text} into '$columnName' column for row with '$columnKey' column and '$cellValue' value in '$tableCaption' table")
    @Aliases(values={"the user inputs '$inputText' {date|text} into '$columnName' column for row with '$columnKey' column and '$cellValue' value in <tableCaption> table",
                    "the user inputs '$inputText' {date|text} into '$columnName' column for row with '$columnKey' column and '$cellValue' value in $tableCaption table"})
    public void whenTheUserInputsTextIntoColumnInRowInTable(@Named("inputText") String inputText,
                                                            @Named("columnName") String columnName,
                                                            @Named("columnKey") String columnKey,
                                                            @Named("cellValue") String cellValue,
                                                            @Named("tableCaption") String tableCaption) {
        step.input_text_in_cell_in_table(tableCaption, columnKey, cellValue, columnName, inputText);
    }

    @When("the user cancels the {date|text} input into '$columnName' column for row with '$columnKey' column and '$cellValue' value in '$tableCaption' table")
    @Aliases(values={"the user cancels the {date|text} input into '$columnName' column for row with '$columnKey' column and '$cellValue' value in <tableCaption> table",
            "the user cancels the {date|text} input into '$columnName' column for row with '$columnKey' column and '$cellValue' value in $tableCaption table"})
    public void whenTheUserCancelsTextIntoColumnInRowInTable(@Named("columnName") String columnName,
                                                             @Named("columnKey") String columnKey,
                                                             @Named("cellValue") String cellValue,
                                                             @Named("tableCaption") String tableCaption) {
        step.undo_text_in_cell_in_table(tableCaption, columnKey, cellValue, columnName);
    }

    @When("the user inputs '$inputText' text into '$columnKey' filter in '$tableCaption' table")
    @Alias("the user inputs '$inputText' text into '$columnKey' filter in <tableCaption> table")
    public void whenTheUserInputsTextIntoFilterInTable(@Named("inputText") String inputText,
                                                       @Named("columnKey") String columnKey,
                                                       @Named("tableCaption") String tableCaption) {
        step.input_text_in_filter_in_table(tableCaption, columnKey, inputText);
    }

    @When("the user selects the date on a day '$dayValue' after today as '$dateDirection' date in '$filterName' filter in '$tableCaption' table")
    @Alias("the user selects the date on a day '$dayValue' after today as '$dateDirection' date in '$filterName' filter in <tableCaption> table")
    public void whenTheUserSelectDateOnDayAffterInFilterInTable(@Named("dayValue") int dayValue,
                                                                @Named("dateDirection") String dateDirection,
                                                                @Named("filterName") String filterName,
                                                                @Named("tableCaption") String tableCaption) {
        step.select_date_in_filter_in_table(dayValue, dateDirection, filterName, "after", tableCaption);}

    @When("the user selects the date on a day '$dayValue' before today as '$dateDirection' date in '$filterName' filter in '$tableCaption' table")
    @Alias("the user selects the date on a day '$dayValue' before today as '$dateDirection' date in '$filterName' filter in <tableCaption> table")
    public void whenTheUserSelectDateOnDayBeforeInFilterInTable(@Named("dayValue") int dayValue,
                                                                @Named("dateDirection") String dateDirection,
                                                                @Named("filterName") String filterName,
                                                                @Named("tableCaption") String tableCaption) {
        step.select_date_in_filter_in_table(dayValue, dateDirection, filterName, "before", tableCaption);
    }

    @When("the user makes '$columnKey' filter empty in '$tableCaption' table")
    @Alias("the user makes '$columnKey' filter empty in <tableCaption> table")
    public void whenTheUserMakesFilterEmptyInTable(@Named("columnKey") String columnKey,
                                                   @Named("tableCaption") String tableCaption) {
        step.make_filter_empty_in_table(tableCaption, columnKey);
    }

    @When("the user clears date in '$columnKey' filter in '$tableCaption' table")
    @Alias("the user clears date in '$columnKey' filter in <tableCaption> table")
    public void whenTheUserClearsDateFilterInTable(@Named("columnKey") String columnKey,
                                                   @Named("tableCaption") String tableCaption) {
        step.clear_date_filter_in_table(tableCaption, columnKey);
    }

    @When("the user clears '$columnKey' filter in '$tableCaption' table")
    @Alias("the user clears '$columnKey' filter in <tableCaption> table")
    public void whenTheUserClearsFilterInTable(String columnKey, String tableCaption) {}

    @When("the user clicks '$n' times on '$columnKey' column in '$tableCaption' table")
    @Alias("the user clicks '$n' times on '$columnKey' column in <tableCaption> table")
    public void whenTheUserClicksNTimesOnHeaderInTable(@Named("n") int n,
                                                       @Named("columnKey") String columnKey,
                                                       @Named("tableCaption") String tableCaption) {
        step.click_n_times_at_header_in_table(tableCaption, columnKey, n);
    }

    @When("the user waits until data is loaded in '$tableCaption' table")
    @Alias("the user waits until data is loaded in <tableCaption> table")
    public void whenTheUserWaitsUntilDataIsLoadedInTable(String tableCaption) {}

    @When("the user waits until '$numberOfRows' row is loaded into '$tableCaption' table")
    @Alias("the user waits until '$numberOfRows' row is loaded into <tableCaption> table")
    public void whenTheUserWaitsUntilRowIsLoadedInTable(String numberOfRows,String tableCaption) {}

    @When("the user expands the row with '$columnName' column and '$cellValue' value in '$tableCaption' table")
    @Alias("the user expands the row with '$columnName' column and '$cellValue' value in <tableCaption> table")
    public void whenTheUserExpandsTheRowInTreeTable(String columnName, String cellValue, String tableCaption) {}

    @When("the user collapses the row with '$columnName' column and '$cellValue' value in '$tableCaption' table")
    @Alias("the user collapses the row with '$columnName' column and '$cellValue' value in <tableCaption> table")
    public void whenTheUserCollapsesTheRowInTreeTable(String columnName, String cellValue, String tableCaption) {}

    @When("the user selects the checkbox in unnamed column for row with column '$columnName' and value '$cellValue' in '$tableCaption' table")
    @Alias("the user selects the checkbox in unnamed column for row with column '$columnName' and value '$cellValue' in <tableCaption> table")
    public void whenTheUserSelectsCheckboxInUnnamedRowInTable(String columnName, String cellValue, String tableCaption) {}

    @When("the user deselects the checkbox in unnamed column for row with column '$columnName' and value '$cellValue' in '$tableCaption' table")
    @Alias("the user deselects the checkbox in unnamed column for row with column '$columnName' and value '$cellValue' in <tableCaption> table")
    public void whenTheUserDeselectsCheckboxInUnnamedRowInTable(String columnName, String cellValue, String tableCaption) {}

    @When("the user reselects the checkbox in unnamed column for row with column '$columnName' and value '$cellValue' in '$tableCaption' table")
    @Alias("the user reselects the checkbox in unnamed column for row with column '$columnName' and value '$cellValue' in <tableCaption> table")
    public void whenTheUserReselectsCheckboxInUnnamedRowInTable(String columnName, String cellValue, String tableCaption) {}

    @When("the user removes all rows by clicking on '$buttonName' button")
    public void whenTheUserRemoveAllRowsByButtonClick(String buttonName) {}

    @When("the user selects the row with '$rowValue' value in a textfield in '$columnName' column in '$tableCaption' table")
    @Alias("the user selects the row with '$rowValue' value in a textfield in '$columnName' column in <tableCaption> table")
    public void whenTheUserSelectRowWithValueInTextField(String rowValue, String columnName, String tableCaption) {}

    @When("the user deselects the row with '$rowValue' value in a textfield in '$columnName' column in '$tableCaption' table")
    @Alias("the user deselects the row with '$rowValue' value in a textfield in '$columnName' column in <tableCaption> table")
    public void whenTheUserDeselectRowWithValueInTextField(String rowValue, String columnName, String tableCaption) {}

    @When("the user makes the textfield empty in '$rowValue' column in the first row in '$tableCaption' table")
    @Aliases(values={"the user makes the textfield empty in '$rowValue' column in the first row in <tableCaption> table",
            "the user makes the textfield empty in '$rowValue' column in the first row in $tableCaption table"})
    public void whenTheUserMakesEmptyTextFieldInFirstRow(String rowValue, String tableCaption) {}

    //endregion @When
}