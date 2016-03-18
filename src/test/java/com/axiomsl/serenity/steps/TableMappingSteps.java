package com.axiomsl.serenity.steps;

import com.axiomsl.serenity.steps.serenity.TableSteps;
import net.thucydides.core.annotations.Steps;
import org.jbehave.core.annotations.*;

public class TableMappingSteps {

    @Steps
    TableSteps step;

    //region WHEN
    @When("the user gets the table rows")
    public void whenTheUserGetsTableRows() {
        step.get_table_rows();
    }

    @When("the user makes the '$columnName' column visible from the settings wheel for '$tableCaption' table")
    @Alias("the user makes the '$columnName column visible from the settings wheel for <tableCaption> table")
    public void whenTheUserMakesColumnVisible(@Named("tableCaption") String tableCaption, @Named("columnName") String columnName) {
        step.make_column_visible(tableCaption, columnName);
    }

    @When("the user makes the '$columnName' column not visible from the settings wheel for '$tableCaption' table")
    @Alias("the user makes the '$columnName' column not visible from the settings wheel for <tableCaption> table")
    public void whenTheUserMakesColumnNotVisible(@Named("tableCaption") String tableCaption,
                                                 @Named("columnName") String columnName) {
        step.make_column_not_visible(tableCaption, columnName);
    }

    @When("the user scrolls up vertically to the beginning in '$tableCaption' table")
    @Alias("the user scrolls up vertically to the beginning in <tableCaption> table")
    public void whenTheUserScrollsUpVerticallyTable(@Named("tableCaption") String tableCaption) {
        step.scroll_vertically_table_with_caption(tableCaption, "up");
    }

    @When("the user scrolls vertically down to the end in '$tableCaption' table")
    @Alias("the user scrolls vertically down to the end in <tableCaption> table")
    public void whenTheUserScrollsDownVerticallyTable(@Named("tableCaption") String tableCaption) {
        step.scroll_vertically_table_with_caption(tableCaption, "down");
    }

    @When("the user selects the row with '$columnName' column and '$cellValue' value in '$tableCaption' table")
    @Alias("the user selects the row with '$columnName' column and '$cellValue' value in <tableCaption> table")
    public void whenTheUserSelectsRowInTable(@Named("tableCaption") String tableCaption,
                                             @Named("columnName") String columnName,
                                             @Named("cellValue") String cellValue) {
        step.select_row_with_value_in_table_with_caption(tableCaption, columnName, cellValue);
    }

    @When("the user deselects the row with '$columnName' column and '$cellValue' value in '$tableCaption' table")
    @Alias("the user deselects the row with '$columnName' column and '$columnName' value in <tableCaption> table")
    public void whenTheUserDeselectsRowInTable(@Named("tableCaption") String tableCaption,
                                               @Named("columnName") String columnName,
                                               @Named("cellValue") String cellValue) {
        step.deselect_row_with_value_in_table_with_caption(tableCaption, columnName, cellValue);
    }

    @When("the user selects the checkbox for row with '$columnName' column and '$cellValue' value in '$tableCaption' table")
    @Aliases(values={"the user selects the checkbox for row with '$columnName' column and '$cellValue' value in <tableCaption> table",
                    "the user checks the checkbox for row with '$columnName' column and '$cellValue' value in <tableCaption> table"})
    public void whenTheUserSelectsCheckboxInRow(@Named("tableCaption") String tableCaption,
                                                @Named("columnName") String columnName,
                                                @Named("cellValue") String cellValue) {
        step.select_checkbox_for_row_in_table(tableCaption, columnName, cellValue);
    }

    @When("the user deselects the checkbox for row with '$columnName' column and '$cellValue' value in '$tableCaption' table")
    @Aliases(values={"the user deselects the checkbox for row with '$columnName column and '$cellValue' value in <tableCaption> table",
                    "the user unchecks the checkbox for row with '$columnName column and '$cellValue' value in <tableCaption> table"})
    public void whenTheUserDeselectsCheckboxInRow(@Named("tableCaption") String tableCaption,
                                                  @Named("columnName") String columnName,
                                                  @Named("cellValue") String cellValue) {
        step.deselect_checkbox_for_row_in_table(tableCaption, columnName, cellValue);
    }

    @When("the user selects the checkbox in '$checkboxColumnName' column for row with '$columnName' column and '$cellValue' value in '$tableCaption' table")
    @Aliases(values={"the user selects the checkbox in '$checkboxColumnName' column for row with '$columnName' column and '$cellValue' value in <tableCaption> table",
                    "the user checks the checkbox in '$checkboxColumnName' column for row with '$columnName' column and '$cellValue' value in <tableCaption> table"})
    public void whenTheUserSelectsCheckboxInColumnForRow(@Named("tableCaption") String tableCaption,
                                                         @Named("columnName") String columnName,
                                                         @Named("cellValue") String cellValue,
                                                         @Named("checkboxColumnName") String checkboxColumnName) {
        step.select_checkbox_in_column_for_row_in_table(tableCaption, columnName, cellValue, checkboxColumnName);
    }

    @When("the user deselects the checkbox in '$checkboxColumnName' column for row with '$columnName' column and '$cellValue' value in '$tableCaption' table")
    @Aliases(values={"the user deselects the checkbox in '$checkboxColumnName' column for row with '$columnName' column and '$cellValue' value in <tableCaption> table",
                    "the user unchecks the checkbox in '$checkboxColumnName' column for row with '$columnName' column and '$cellValue' value in <tableCaption> table"})
    public void whenTheUserDeselectsCheckboxInColumnForRow(@Named("tableCaption") String tableCaption,
                                                           @Named("columnName") String columnName,
                                                           @Named("cellValue") String cellValue,
                                                           @Named("checkboxColumnName") String checkboxColumnName) {
        step.deselect_checkbox_in_column_for_row_in_table(tableCaption, columnName, cellValue, checkboxColumnName);
    }

    @When("the user multi-selects the rows with '$columnName' column and '$cellValue' containing value in '$tableCaption' table")
    @Alias("the user multi-selects the rows with <columnName> column and <cellValue> containing value in <tableCaption> table")
    public void whenTheUserMultiSelectsTheRowsWithColumnInTable(@Named("tableCaption") String tableCaption,
                                                               @Named("columnName") String columnName,
                                                               @Named("cellValue") String cellValue) {
        step.multi_select_for_rows_in_table_with_caption(tableCaption, columnName, cellValue);
    }

    @When("the user inputs '$inputDate' date into '$columnName' column for row with '$columnKey' column and '$cellValue' value in '$tableCaption' table")
    @Alias("the user inputs '$inputDate' date into '$columnName' column for row with '$columnKey' column and '$cellValue' value in <tableCaption> table")
    public void whenTheUserInputsDateIntoColumnInRowInTable(String $inputDate, String $columnName, String $columnKey, String $cellValue, String $tableCaption) {

    }

    @When("the user inputs '$inputText' text into '$columnName' column for row with '$columnKey' column and '$cellValue' value in '$tableCaption' table")
    @Alias("the user inputs '$inputText' text into '$columnName' column for row with '$columnKey' column and '$cellValue' value in <tableCaption> table")
    public void whenTheUserInputsTextIntoColumnInRowInTable(String $inputText, String $columnName, String $columnKey, String $cellValue, String $tableCaption) {

    }
    // endregion WHEN

    // region THEN
    @Then("the user should see '$items' items with column number '$columnNumber' in the table")
    public void thenTheUserShouldSeeItemListWithColumnInTable(String items, int columnNumber) {
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
    public void thenTheUserShouldSeeColumnInTable(@Named("tableCaption") String tableCaption, @Named("columnName") String columnName) {
        step.should_see_column_with_name_in_table_with_caption(tableCaption, columnName);
    }

    @Then("the user should not see the '$columnName' column in '$tableCaption' table")
    @Alias("the user should not see the '$columnName' column in <tableCaption> table")
    public void thenTheUserShouldNotSeeColumnInTable(@Named("tableCaption") String tableCaption, @Named("columnName") String columnName) {
        step.should_not_see_column_with_name_in_table_with_caption(tableCaption, columnName);
    }

    @Then("the user should see that row with '$columnName' column and '$cellValue' value is selected in '$tableCaption' table")
    @Aliases(values={"the user should see that row with <columnName> column and <cellValue> value is selected in <tableCaption> table",
                    "the user should see that checkbox for row with '$columnName' column and '$cellValue' value is selected in '$tableCaption' table",
                    "the user should see that checkbox for row with '$columnName' column and '$cellValue' value is selected in <tableCaption> table",
                    "the user should see that checkbox for row with '$columnName' column and '$cellValue' value is checked in '$tableCaption' table",
                    "the user should see that checkbox for row with '$columnName' column and '$cellValue' value is checked in <tableCaption> table"})
    public void thenTheUserShouldSeeRowIsSelected(@Named("tableCaption") String tableCaption,
                                                  @Named("columnName") String columnName,
                                                  @Named("cellValue") String cellValue) {
        step.should_see_row_with_value_is_selected(tableCaption, columnName, cellValue);
    }

    @Then("the user should see that row with '$columnName' column and '$cellValue' value is deselected in '$tableCaption' table")
    @Aliases(values={"the user should see that row with <columnName> column and <cellValue> value is deselected in <tableCaption> table",
                    "the user should see that checkbox for row with '$columnName' column and '$cellValue' value is deselected in '$tableCaption' table",
                    "the user should see that checkbox for row with '$columnName' column and '$cellValue' value is deselected in <tableCaption> table",
                    "the user should see that checkbox for row with '$columnName' column and '$cellValue' value is unchecked in '$tableCaption' table",
                    "the user should see that checkbox for row with '$columnName' column and '$cellValue' value is unchecked in <tableCaption> table"})
    public void thenTheUserShouldSeeRowIsDeselected(@Named("tableCaption") String tableCaption,
                                                    @Named("columnName") String columnName,
                                                    @Named("cellValue") String cellValue) {
        step.should_see_row_with_value_is_deselected(tableCaption, columnName, cellValue);
    }

    @Then("the user should see that '$item' item is checked in the settings wheel in '$tableCaption' table")
    @Alias("the user should see that <item> item is checked in the settings wheel in <tableCaption> table")
    public void thenTheUserShouldSeeCheckedItemInSettingsWheel(String item, String tableCaption) {
        step.should_see_checked_item_in_settings_wheel(item, tableCaption);
    }

    @Then("the user should see that '$item' item is unchecked in the settings wheel in '$tableCaption' table")
    @Alias("the user should see that <item> item is unchecked in the settings wheel in <tableCaption> table")
    public void thenTheUserShouldSeeUncheckedItemInSettingsWheel(String item, String tableCaption) {
        step.should_see_unchecked_item_in_settings_wheel(item, tableCaption);
    }
//*
    @Then("the user should see that checkbox in '$checkboxColumnName' column for row with '$columnName' column and '$cellValue' value is checked in '$tableCaption' table")
    @Alias("the user should see that checkbox in <checkboxColumnName> column for row with <columnName> column and <cellValue> value is checked in <tableCaption> table")
    public void thenTheyShouldSeeCheckBoxIsCheckedInColumn(@Named("tableCaption") String tableCaption,
                                                           @Named("columnName") String columnName,
                                                           @Named("cellValue") String cellValue,
                                                           @Named("checkboxColumnName") String checkboxColumnName) {
        step.should_see_checked_checkbox_in_column(tableCaption, columnName, cellValue, checkboxColumnName);
    }

    @Then("the user should see that checkbox in '$checkboxColumnName' column for row with '$columnName' column and '$cellValue' value is unchecked in '$tableCaption' table")
    @Alias("the user should see that checkbox in <checkboxColumnName> column for row with <columnName> column and <cellValue> value is unchecked in <tableCaption> table")
    public void thenTheyShouldSeeCheckBoxIsUnCheckedInColumn(@Named("tableCaption") String tableCaption,
                                                             @Named("columnName") String columnName,
                                                             @Named("cellValue") String cellValue,
                                                             @Named("checkboxColumnName") String checkboxColumnName) {
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

    @Then("the user should see '$inputText' text in '$columnName' column for row with '$columnKey' column and '$cellValue' value in '$tableCaption' table")
    @Alias("the user should see '$inputText' text in '$columnName' column for row with '$columnKey' column and '$cellValue' value in <tableCaption> table")
    public void whenTheUserShouldSeeTextInRowInTable(String $inputText, String columnName, String columnKey, String cellValue, String tableCaption) {

    }
    // endregion THEN
}