package com.axiomsl.serenity.steps;

import com.axiomsl.serenity.steps.serenity.TableSteps;
import net.thucydides.core.annotations.Steps;
import org.jbehave.core.annotations.*;

import java.util.List;

public class TableMappingSteps {

    //region @Steps
    @Steps
    TableSteps step;
    //endregion @Steps

    //region @When
    @When("the user gets the table rows")
    public void whenTheUserGetsTableRows() {
        step.get_table_rows();
    }

    @When("the user makes the '$columnName' column visible from the settings wheel for '$tableCaption' table")
    @Alias("the user makes the '$columnName' column visible from the settings wheel for <tableCaption> table")
    public void whenTheUserMakesColumnVisible(@Named("columnName") String columnName,
                                              @Named("tableCaption") String tableCaption) {
        step.make_column_visible(tableCaption, columnName);
    }

    @When("the user makes the '$columnName' column not visible from the settings wheel for '$tableCaption' table")
    @Aliases(values={"the user makes the '$columnName' column not visible from the settings wheel for <tableCaption> table",
            "the user makes the '$columnName' column not visible from the settings wheel for $tableCaption table"})
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

    @When("the user selects the checkbox for row with '$columnName' column and '$cellValue' value in '$tableCaption' table")
    @Aliases(values={"the user selects the checkbox for row with '$columnName' column and '$cellValue' value in <tableCaption> table",
                    "the user checks the checkbox for row with '$columnName' column and '$cellValue' value in <tableCaption> table"})
    public void whenTheUserSelectsCheckboxInRow(@Named("columnName") String columnName,
                                                @Named("cellValue") String cellValue,
                                                @Named("tableCaption") String tableCaption) {
        step.select_checkbox_for_row_in_table(tableCaption, columnName, cellValue);
    }

    @When("the user deselects the checkbox for row with '$columnName' column and '$cellValue' value in '$tableCaption' table")
    @Aliases(values={"the user deselects the checkbox for row with '$columnName' column and '$cellValue' value in <tableCaption> table",
                    "the user unchecks the checkbox for row with '$columnName' column and '$cellValue' value in <tableCaption> table"})
    public void whenTheUserDeselectsCheckboxInRow(@Named("columnName") String columnName,
                                                  @Named("cellValue") String cellValue,
                                                  @Named("tableCaption") String tableCaption) {
        step.deselect_checkbox_for_row_in_table(tableCaption, columnName, cellValue);
    }

    @When("the user selects the checkbox in '$checkboxColumnName' column for row with '$columnName' column and '$cellValue' value in '$tableCaption' table")
    @Aliases(values={"the user selects the checkbox in '$checkboxColumnName' column for row with '$columnName' column and '$cellValue' value in <tableCaption> table",
                    "the user checks the checkbox in '$checkboxColumnName' column for row with '$columnName' column and '$cellValue' value in <tableCaption> table"})
    public void whenTheUserSelectsCheckboxInColumnForRow(@Named("checkboxColumnName") String checkboxColumnName,
                                                         @Named("columnName") String columnName,
                                                         @Named("cellValue") String cellValue,
                                                         @Named("tableCaption") String tableCaption) {
        step.select_checkbox_in_column_for_row_in_table(tableCaption, columnName, cellValue, checkboxColumnName);
    }

    @When("the user deselects the checkbox in '$checkboxColumnName' column for row with '$columnName' column and '$cellValue' value in '$tableCaption' table")
    @Aliases(values={"the user deselects the checkbox in '$checkboxColumnName' column for row with '$columnName' column and '$cellValue' value in <tableCaption> table",
                    "the user unchecks the checkbox in '$checkboxColumnName' column for row with '$columnName' column and '$cellValue' value in <tableCaption> table"})
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
    @Aliases(values={"the user presses the button in '$buttonColumnName' column for row with '$columnName' column and '$cellValue' value in $tableCaption table",
                    "the user presses the button in '$buttonColumnName' column for row with '$columnName' column and '$cellValue' value in <tableCaption> table"})
    public void whenTheUserPressButtonInColumnForRow(@Named("buttonColumnName") String buttonColumnName,
                                                         @Named("columnName") String columnName,
                                                         @Named("cellValue") String cellValue,
                                                     @Named("tableCaption") String tableCaption) {
        step.press_button_in_column_for_row_in_table(tableCaption, columnName, cellValue, buttonColumnName);
    }

    @When("the user inputs '$inputDate' date into '$columnName' column for row with '$columnKey' column and '$cellValue' value in '$tableCaption' table")
    @Alias("the user inputs '$inputDate' date into '$columnName' column for row with '$columnKey' column and '$cellValue' value in <tableCaption> table")
    public void whenTheUserInputsDateIntoColumnInRowInTable(String $inputDate, String $columnName, String $columnKey, String $cellValue, String $tableCaption) {

    }

    @When("the user inputs '$inputText' text into '$columnName' column for row with '$columnKey' column and '$cellValue' value in '$tableCaption' table")
    @Aliases(values={"the user inputs '$inputText' text into '$columnName' column for row with '$columnKey' column and '$cellValue' value in <tableCaption> table",
            "the user inputs <inputText> text into <columnName> column for row with <columnKey> column and <cellValue> value in <tableCaption> table"})
    public void whenTheUserInputsTextIntoColumnInRowInTable(@Named("inputText") String inputText,
                                                            @Named("columnKey") String columnKey,
                                                            @Named("cellValue") String cellValue,
                                                            @Named("columnName") String columnName,
                                                            @Named("tableCaption") String tableCaption) {
        step.input_text_in_cell_in_table(tableCaption, columnKey, cellValue, columnName, inputText);
    }

    @When("the user cancels the text into '$columnName' column for row with '$columnKey' column and '$cellValue' value in '$tableCaption' table")
    @Aliases(values={"the user cancels the text text into '$columnName' column for row with '$columnKey' column and '$cellValue' value in <tableCaption> table",
            "the user cancels the text text into <columnName> column for row with <columnKey> column and <cellValue> value in <tableCaption> table"})
    public void whenTheUserCancelsTextIntoColumnInRowInTable(@Named("columnName") String columnName,
                                                            @Named("columnKey") String columnKey,
                                                            @Named("cellValue") String cellValue,
                                                            @Named("tableCaption") String tableCaption) {
        step.undo_text_in_cell_in_table(tableCaption, columnKey, cellValue, columnName);
    }

    @When("the user inputs '$inputText' text into '$columnKey' filter in '$tableCaption' table")
    @Aliases(values={"the user inputs '$inputText' text into '$columnKey' filter in <tableCaption> table",
            "the user inputs <inputText> text into <columnKey> filter in <tableCaption> table"})
    public void whenTheUserInputsTextIntoFilterInTable(@Named("inputText") String inputText,
                                                       @Named("columnKey") String columnKey,
                                                       @Named("tableCaption") String tableCaption) {
        step.input_text_in_filter_in_table(tableCaption, columnKey, inputText);
    }

    @When("the user makes '$columnKey' filter empty in '$tableCaption' table")
    @Aliases(values={"the user makes <columnKey> filter empty in <tableCaption> table"})
    public void whenTheUserMakesFilterEmptyInTable(@Named("columnKey") String columnKey,
                                                       @Named("tableCaption") String tableCaption) {
        step.make_filter_empty_in_table(tableCaption, columnKey);
    }

    // endregion WHEN



    // region THEN
    @Then("the user should see '$items' items with column number '$columnNumber' in the table")
    public void thenTheUserShouldSeeItemListWithColumnInTable(List<String> items, int columnNumber) {
        step.should_see_items_in_table(items, (columnNumber - 1));
    }

    @Then("the user should see the '$columnName' column in the table")
    public void thenTheUserShouldSeeColumnInTable(String $columnName) {
        step.should_see_column_with_name_in_table($columnName);
    }

    @Then("the user should not see the '$columnName' column in the table")
    public void thenTheUserShouldNotSeeColumnInTable(String $columnName) {
        step.should_not_see_column_with_name_in_table($columnName);
    }

    @Then("the user should see the '$columnName' column in '$tableCaption' table")
    @Alias("the user should see the '$columnName' column in <tableCaption> table")
    public void thenTheUserShouldSeeColumnInTable(@Named("columnName") String columnName, @Named("tableCaption") String tableCaption) {
        step.should_see_column_with_name_in_table(tableCaption, columnName);
    }

    @Then("the user should not see the '$columnName' column in '$tableCaption' table")
    @Alias("the user should not see the '$columnName' column in <tableCaption> table")
    public void thenTheUserShouldNotSeeColumnInTable(@Named("columnName") String columnName, @Named("tableCaption") String tableCaption) {
        step.should_not_see_column_with_name_in_table(tableCaption, columnName);
    }

    @Then("the user should see the row with '$columnName' column and '$cellValue' value in '$tableCaption' table")
    @Aliases(values={"the user should see the row with <columnName>  column and <cellValue> value in table"
            ,"the user should see the row with '$columnName'  column and '$cellValue' value in <tableCaption> table"})
    public void thenTheUserShouldSeeRowInTable(@Named("columnName") String columnName,
                                               @Named("cellValue") String cellValue,
                                               @Named("tableCaption") String tableCaption) {
        step.should_see_row_in_table(tableCaption, columnName, cellValue);
    }

    @Then("the user should not see the row with '$columnName' column and '$cellValue' value in '$tableCaption' table")
    @Aliases(values={"the user should not see the row with <columnName>  column and <cellValue> value in table",
            "the user should not see the row with '$columnName' column and '$cellValue' value in <tableCaption> table"})
    public void thenTheUserShouldNotSeeRowInTable(@Named("columnName") String columnName,
                                                  @Named("cellValue") String cellValue,
                                                  @Named("tableCaption") String tableCaption) {
        step.should_not_see_row_in_table(tableCaption, columnName, cellValue);
    }

    @Then("the user should see the '$columnName' column where all values are '$cellValue' in '$tableCaption' table")
    @Aliases(values={"the user should see the <columnName> column where all values are <cellValue> in $tableCaption table",
                    "the user should see the <columnName> column where all values are <cellValue> in <tableCaption> table"})
    public void thenTheUserShouldSeeColumnWithTextInTable(@Named("columnName") String columnName,
                                                          @Named("cellValue") String cellValue,
                                                          @Named("tableCaption") String tableCaption) {
        step.should_see_column_with_text_in_table(tableCaption, columnName, cellValue);
    }

        @Then("the user should see that row with '$columnName' column and '$cellValue' value is selected in '$tableCaption' table")
    @Aliases(values={"the user should see that row with '$columnName' column and '$cellValue' value is selected in <tableCaption> table",
                    "the user should see that checkbox for row with '$columnName' column and '$cellValue' value is selected in '$tableCaption' table",
                    "the user should see that checkbox for row with '$columnName' column and '$cellValue' value is selected in <tableCaption> table",
                    "the user should see that checkbox for row with '$columnName' column and '$cellValue' value is checked in '$tableCaption' table",
                    "the user should see that checkbox for row with '$columnName' column and '$cellValue' value is checked in <tableCaption> table"})
    public void thenTheUserShouldSeeRowIsSelected(@Named("columnName") String columnName,
                                                  @Named("cellValue") String cellValue,
                                                  @Named("tableCaption") String tableCaption) {
        step.should_see_row_with_value_is_selected(tableCaption, columnName, cellValue);
    }

    @Then("the user should see that row with '$columnName' column and '$cellValue' value is deselected in '$tableCaption' table")
    @Aliases(values={"the user should see that row with '$columnName' column and '$cellValue' value is deselected in <tableCaption> table",
                    "the user should see that checkbox for row with '$columnName' column and '$cellValue' value is deselected in '$tableCaption' table",
                    "the user should see that checkbox for row with '$columnName' column and '$cellValue' value is deselected in <tableCaption> table",
                    "the user should see that checkbox for row with '$columnName' column and '$cellValue' value is unchecked in '$tableCaption' table",
                    "the user should see that checkbox for row with '$columnName' column and '$cellValue' value is unchecked in <tableCaption> table"})
    public void thenTheUserShouldSeeRowIsDeselected(@Named("columnName") String columnName,
                                                    @Named("cellValue") String cellValue,
                                                    @Named("tableCaption") String tableCaption) {
        step.should_see_row_with_value_is_deselected(tableCaption, columnName, cellValue);
    }

    @Then("the user should see that '$item' item is checked in the settings wheel in '$tableCaption' table")
    @Alias("the user should see that '$item' item is checked in the settings wheel in <tableCaption> table")
    public void thenTheUserShouldSeeCheckedItemInSettingsWheel(@Named("item") String item,
                                                               @Named("tableCaption")String tableCaption) {
        step.should_see_checked_item_in_settings_wheel(item, tableCaption);
    }

    @Then("the user should see that '$item' item is unchecked in the settings wheel in '$tableCaption' table")
    @Alias("the user should see that '$item' item is unchecked in the settings wheel in <tableCaption> table")
    public void thenTheUserShouldSeeUncheckedItemInSettingsWheel(@Named("item") String item,
                                                                 @Named("tableCaption") String tableCaption) {
        step.should_see_unchecked_item_in_settings_wheel(item, tableCaption);
    }
//*
    @Then("the user should see that checkbox in '$checkboxColumnName' column for row with '$columnName' column and '$cellValue' value is checked in '$tableCaption' table")
    @Alias("the user should see that checkbox in '$checkboxColumnName' column for row with '$columnName' column and '$cellValue' value is checked in <tableCaption> table")
    public void thenTheyShouldSeeCheckBoxIsCheckedInColumn(@Named("checkboxColumnName") String checkboxColumnName,
                                                           @Named("columnName") String columnName,
                                                           @Named("cellValue") String cellValue,
                                                           @Named("tableCaption") String tableCaption) {
        step.should_see_checked_checkbox_in_column(tableCaption, columnName, cellValue, checkboxColumnName);
    }

    @Then("the user should see that checkbox in '$checkboxColumnName' column for row with '$columnName' column and '$cellValue' value is unchecked in '$tableCaption' table")
    @Alias("the user should see that checkbox in '$checkboxColumnName' column for row with '$columnName' column and '$cellValue' value is unchecked in <tableCaption> table")
    public void thenTheyShouldSeeCheckBoxIsUnCheckedInColumn(@Named("checkboxColumnName") String checkboxColumnName,
                                                             @Named("columnName") String columnName,
                                                             @Named("cellValue") String cellValue,
                                                             @Named("tableCaption") String tableCaption) {
        step.should_see_unchecked_checkbox_in_column(tableCaption, columnName, cellValue, checkboxColumnName);
    }

    @Then("the user should see that '$table' table is scrolled to the beginning")
    @Alias("the user should see that <tableCaption> table is scrolled to the beginning")
    public void thenTheUserShouldSeeIsTableScrolledToTheBeginning(String tableCaption) {

    }

    @Then("the user should see that '$table' table is scrolled to the end")
    @Alias("the user should see that <tableCaption> table is scrolled to the end")
    public void thenTheUserShouldSeeTableIsNotScrolledToTheEnd(String tableCaption) {

    }

    @Then("the user should see '$inputDate' date in '$columnName' column for row with '$columnKey' column and '$cellValue' value in '$tableCaption' table")
    @Alias("the user should see '$inputDate' date in '$columnName' column for row with '$columnKey' column and '$cellValue' value in <tableCaption> table")
    public void whenTheUserShouldSeeDateInRowInTable(String inputDate, String columnName, String columnKey, String cellValue, String tableCaption) {

    }

    @Then("the user should see no columns in '$tableCaption' table")
    @Aliases(values={"the user should see no columns in <tableCaption> table",
            "the user should see no columns in $tableCaption table"})
    public void thenTheUserShouldSeeNoColumnsInTable(@Named("tableCaption") String tableCaption) {
        step.should_not_see_columns(tableCaption);
    }

    @Then("the user should see no rows in '$tableCaption' table")
    @Alias("the user should see no rows in <tableCaption> table")
    public void thenTheUserShouldSeeNoRowsInTable(String tableCaption) {}

    @Then("the user should see '$inputText' text in '$columnName' column for row with '$columnKey' column and '$cellValue' value in '$tableCaption' table")
    @Aliases(values={"the user should see '$inputText' text in '$columnName' column for row with '$columnKey' column and '$cellValue' value in <tableCaption> table",
            "the user should see <inputText> text in <columnName> column for row with <columnKey> column and <cellValue> value in <tableCaption> table"})
    public void whenTheUserShouldSeeTextInRowInTable(@Named("tableCaption") String tableCaption,
                                                     @Named("columnKey") String columnKey,
                                                     @Named("cellValue") String cellValue,
                                                     @Named("columnName") String columnName,
                                                     @Named("inputText") String inputText) {
        step.should_see_text_in_cell(tableCaption, columnKey, cellValue, columnName, inputText);
    }
    //endregion @Then
}