package com.axiomsl.serenity.steps.complex.then;

import com.axiomsl.serenity.steps.basic.TableSteps;
import net.thucydides.core.annotations.Steps;
import org.jbehave.core.annotations.*;

import java.util.Date;
import java.util.List;

public class TableMappingStepsThen {

    //region @Steps

    @Steps
    TableSteps step;

    //endregion @Steps

    //region @Then

    @Then("the user should see '$items' items with column number '$columnNumber' in the table")
    public void thenTheUserShouldSeeItemListWithColumnInTable(List<String> items, int columnNumber) {
        step.should_see_items_in_table(items, (columnNumber - 1));
    }

    @Then("the user should see '$columnName' column in the table")
    public void thenTheUserShouldSeeColumnInTable(String $columnName) {
        step.should_see_column_with_name_in_table($columnName);
    }

    @Then("the user should not see '$columnName' column in the table")
    public void thenTheUserShouldNotSeeColumnInTable(String $columnName) {
        step.should_not_see_column_with_name_in_table($columnName);
    }

    @Then("the user should see '$columnName' column in '$tableCaption' table")
    @Alias("the user should see '$columnName' column in <tableCaption> table")
    public void thenTheUserShouldSeeColumnInTable(@Named("columnName") String columnName, @Named("tableCaption") String tableCaption) {
        step.should_see_column_with_name_in_table(tableCaption, columnName);
    }

    @Then("the user should not see '$columnName' column in '$tableCaption' table")
    @Alias("the user should not see '$columnName' column in <tableCaption> table")
    public void thenTheUserShouldNotSeeColumnInTable(@Named("columnName") String columnName, @Named("tableCaption") String tableCaption) {
        step.should_not_see_column_with_name_in_table(tableCaption, columnName);
    }

    @Then("the user should see the row with '$columnName' column and '$cellValue' value in '$tableCaption' table")
    @Alias("the user should see the row with '$columnName' column and '$cellValue' value in <tableCaption> table")
    public void thenTheUserShouldSeeRowInTable(@Named("columnName") String columnName,
                                               @Named("cellValue") String cellValue,
                                               @Named("tableCaption") String tableCaption) {
        step.should_see_row_in_table(tableCaption, columnName, cellValue);
    }

    @Then("the user should not see the row with '$columnName' column and '$cellValue' value in '$tableCaption' table")
    @Alias("the user should not see the row with '$columnName' column and '$cellValue' value in <tableCaption> table")
    public void thenTheUserShouldNotSeeRowInTable(@Named("columnName") String columnName,
                                                  @Named("cellValue") String cellValue,
                                                  @Named("tableCaption") String tableCaption) {
        step.should_not_see_row_in_table(tableCaption, columnName, cellValue);
    }

    @Then("the user should see the '$columnName' column where all values are '$cellValue' in '$tableCaption' table")
    @Alias("the user should see the '$columnName' column where all values are '$cellValue' in <tableCaption> table")
    public void thenTheUserShouldSeeColumnWithTextInTable(@Named("columnName") String columnName,
                                                          @Named("cellValue") String cellValue,
                                                          @Named("tableCaption") String tableCaption) {
        step.should_see_column_with_text_in_table(tableCaption, columnName, cellValue);
    }

    @Then("the user should see that checkbox for row with column '$columnName' and value '$cellValue' is checked in '$tableCaption' table")
    @Alias("the user should see that checkbox for row with column '$columnName' and value '$cellValue' is checked in <tableCaption> table")
    public void thenTheUserShouldSeeCheckboxIsCheckedInUnnamedColumnInTable(@Named("columnName") String columnName,
                                                                            @Named("cellValue") String cellValue,
                                                                            @Named("tableCaption") String tableCaption) {
        step.should_see_row_with_value_is_selected(tableCaption, columnName, cellValue);
    }

    @Then("the user should see that checkbox for row with column '$columnName' and value '$cellValue' is unchecked in '$tableCaption' table")
    @Alias("the user should see that checkbox for row with column '$columnName' and value '$cellValue' is unchecked in <tableCaption> table")
    public void thenTheUserShouldSeeCheckboxIsUncheckedInUnnamedColumnInTable(@Named("columnName") String columnName,
                                                                              @Named("cellValue") String cellValue,
                                                                              @Named("tableCaption") String tableCaption) {
        step.should_see_row_with_value_is_unselected(tableCaption, columnName, cellValue);
    }

    @Then("the user should see that row with '$columnName' column and '$cellValue' value is selected in '$tableCaption' table")
    @Alias("the user should see that row with '$columnName' column and '$cellValue' value is selected in <tableCaption> table")
    public void thenTheUserShouldSeeRowIsSelected(@Named("columnName") String columnName,
                                                  @Named("cellValue") String cellValue,
                                                  @Named("tableCaption") String tableCaption) {
        step.should_see_row_with_value_is_selected(tableCaption, columnName, cellValue);
    }

    @Then("the user should see that row with '$columnName' column and '$cellValue' value is unselected in '$tableCaption' table")
    @Alias("the user should see that row with '$columnName' column and '$cellValue' value is unselected in <tableCaption> table")
    public void thenTheUserShouldSeeRowIsUnselected(@Named("columnName") String columnName,
                                                    @Named("cellValue") String cellValue,
                                                    @Named("tableCaption") String tableCaption) {
        step.should_see_row_with_value_is_unselected(tableCaption, columnName, cellValue);
    }

    @Then("the user should see that row with '$columnName' column and '$cellValue' value is deselected in '$tableCaption' table")
    @Alias("the user should see that row with '$columnName' column and '$cellValue' value is deselected in <tableCaption> table")
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
    public void whenTheUserShouldSeeDateInRowInTable(@Named("inputDate") String inputDate,
                                                     @Named("columnName") String columnName,
                                                     @Named("columnKey") String columnKey,
                                                     @Named("cellValue") String cellValue,
                                                     @Named("tableCaption") String tableCaption) {
        step.should_see_date_in_cell(tableCaption, columnKey, cellValue, columnName, inputDate);
    }

    @Then("the user should see no columns in {'$tableCaption'|$tableCaption} table")
    @Alias("the user should see no columns in <tableCaption> table")
    public void thenTheUserShouldSeeNoColumnsInTable(@Named("tableCaption") String tableCaption) {
        step.should_not_see_columns(tableCaption);
    }

    @Then("the user should see no rows in {'$tableCaption'|$tableCaption} table")
    @Alias("the user should see no rows in <tableCaption> table")
    public void thenTheUserShouldSeeNoRowsInTable(String tableCaption) {}

    @Then("the user should see '$inputText' text in '$columnName' column for row with '$columnKey' column and '$cellValue' value in '$tableCaption' table")
    @Alias("the user should see '$inputText' text in '$columnName' column for row with '$columnKey' column and '$cellValue' value in <tableCaption> table")
    public void whenTheUserShouldSeeTextInRowInTable(@Named("tableCaption") String tableCaption,
                                                     @Named("columnKey") String columnKey,
                                                     @Named("cellValue") String cellValue,
                                                     @Named("columnName") String columnName,
                                                     @Named("inputText") String inputText) {
        step.should_see_text_in_cell(tableCaption, columnKey, cellValue, columnName, inputText);
    }

    @Then("the user should see that rows in '$columnName' column contain the values from '$startValue' to '$endValue' in '$tableCaption' table")
    @Alias("the user should see that rows in '$columnName' column contain the values from '$startValue' to '$endValue' in <tableCaption> table")
    public void thenTheUserShouldSeeRowsContainValuesFromToInTable(String columnName, String startValue, String endValue, String tableCaption) {}

    @Then("the user should see that values are sorted as '$listOfValues' in '$columnName' column in '$tableCaption' table")
    @Alias("the user should see that values are sorted as '$listOfValues' in '$columnName' column in <tableCaption> table")
    public void thenTheUserShouldSeeRowsAreSortedAsListInTable(List listOfValues, String columnName, String tableCaption) {}

    @Then("the user should see that row with '$columnName' column and '$cellValue' value is expanded in '$tableCaption' table")
    @Alias("the user should see that row with '$columnName' column and '$cellValue' value is expanded in <tableCaption> table")
    public void thenTheUserShouldSeeRowIsExpandedInTable(String columnName, String cellValue, String tableCaption) {}

    @Then("the user should see that row with '$columnName' column and '$cellValue' value is collapsed in '$tableCaption' table")
    @Alias("the user should see that row with '$columnName' column and '$cellValue' value is collapsed in <tableCaption> table")
    public void thenTheUserShouldSeeRowIsCollapsedInTable(String columnName, String cellValue, String tableCaption) {}

    @Then("the user should see '$rowsNumber' rows in {'$tableCaption'|$tableCaption} table")
    @Alias("the user should see '$rowsNumber' rows in <tableCaption> table")
    public void thenTheUserShouldSeeRowsNumberInTable(String rowsNumber, String tableCaption) {}

    @Then("the user should see 'Total Rows' is '$totalRows'")
    public void thenTheUserShouldSeeTotalRowsInLabel(String $totalRows) {}

    @Then("the user should see that 'Sum Value' equals sum of values in all rows in {'$tableCaption'|$tableCaption} table")
    public void thenTheUserShouldSeeSumValueEqualsInLabel(String tableCaption) {}

    @Then("the user should see that 'Sum Value' is '$sumValue'")
    public void thenTheUserShouldSeeSumValuelsInLabel(String sumValue) {}

    @Then("the user should see '$cellValue' value in a textfield in '$columnName' column in the first row in {'$tableCaption'|$tableCaption} table")
    public void thenTheUserShouldSeeValueInTextFieldInColumnInFirstRow(String cellValue, String columnName, String tableCaption) {}

    @Then("the user should see the empty value in a textfield in '$columnName' column in the first row in {'$tableCaption'|$tableCaption} table")
    public void thenTheUserShouldSeeEmptyValueInTextFieldInColumnInFirstRow(String columnName, String tableCaption) {}

    //endregion @Then
}