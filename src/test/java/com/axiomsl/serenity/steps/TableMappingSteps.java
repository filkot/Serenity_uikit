package com.axiomsl.serenity.steps;

import com.axiomsl.serenity.steps.serenity.TableSteps;
import net.thucydides.core.annotations.Steps;
import org.jbehave.core.annotations.Alias;
import org.jbehave.core.annotations.Named;
import org.jbehave.core.annotations.Then;
import org.jbehave.core.annotations.When;


public class TableMappingSteps {

    @Steps
    TableSteps step;

    //WHEN
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
    public void whenTheUserMakesColumnNotVisible(@Named("tableCaption") String tableCaption, @Named("columnName") String columnName) {
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

    @When("the user selects the row with '$columnName' column and '$columnValue' value in '$tableCaption' table")
    @Alias("the user selects the row with '$columnName' column and '$columnValue' value in <tableCaption> table")
    public void whenTheUserSelectsRowInTable(@Named("tableCaption") String tableCaption, @Named("columnName") String columnName, @Named("columnValue") String columnValue) {
        step.select_row_with_value_in_table_with_caption(tableCaption, columnName, columnValue);
    }

    @When("the user deselects the row with '$columnName' column and '$columnValue' value in '$tableCaption' table")
    @Alias("the user deselects the row with '$columnName' column and '$columnName' value in <tableCaption> table")
    public void whenTheUserDeselectsRowInTable(@Named("tableCaption") String tableCaption, @Named("columnName") String columnName, @Named("columnValue") String columnValue) {
        step.deselect_row_with_value_in_table_with_caption(tableCaption, columnName, columnValue);
    }

    @When("the user selects '$value' value from '$name' combo-box")
    public void whenTheSelectsValueFromComboBox(String value, String name) {

    }

    @When("the user multi-selects the row with '$columnName' column and '$columnValue' value in '$tableCaption' table")
    @Alias("the user multi-selects the row with '$columnName' column and '$columnValue' value in <tableCaption> table")
    public void whenTheUserMultiSelectsTheRowWithColumnInTable(String $columnName, String $columnValue) {

    }

    @When("the user deselects the row with '$columnName' column and '$columnValue' value in '$tableCaption' table")
    @Alias("the user deselects the row with '$columnName' column and '$columnValue' value in <tableCaption> table")
    public void whenTheUserDeselectsTheRowWithColumnInTable(String $columnName, String $columnValue) {

    }

    @When("the user inputs '$inputDate' date into '$columnName' column for row with '$columnKey' column and '$columnValue' value in '$tableCaption' table")
    @Alias("the user inputs '$inputDate' date into '$columnName' column for row with '$columnKey' column and '$columnValue' value in <tableCaption> table")
    public void whenTheUserDeselectsTheRowWithColumnInTable(String $inputDate, String $columnName, String $columnKey, String $columnValue) {

    }



    //THEN
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

    @Then("the user should see that row with '$columnName' column and '$columnValue' value is selected in '$tableCaption' table")
    @Alias("the user should see that row with '$columnName' column and '$columnValue' value is selected in <tableCaption> table")
    public void thenTheUserShouldSeeRowIsSelected(@Named("tableCaption") String tableCaption, @Named("columnName") String columnName, @Named("columnValue") String columnValue) {
        step.should_see_row_with_value_is_selected(tableCaption, columnName, columnValue);
    }

    @Then("the user should see that row with '$columnName' column and '$columnValue' value is deselected in '$tableCaption' table")
    @Alias("the user should see that row with '$columnName' column and '$columnValue' value is deselected in <tableCaption> table")
    public void thenTheUserShouldSeeRowIsDeselected(@Named("tableCaption") String tableCaption, @Named("columnName") String columnName, @Named("columnValue") String columnValue) {
        step.should_see_row_with_value_is_deselected(tableCaption, columnName, columnValue);
    }

    @Then("the user should see that '$item' item is checked in the settings wheel in '$tableCaption' table")
    @Alias("the user should see that '$item' item is checked in the settings wheel in <tableCaption> table")
    public void thenTheUserShouldSeeCheckedItemInSettingsWheel(String item, String tableCaption) {
        step.should_see_checked_item_in_settings_wheel(item, tableCaption);
    }

    @Then("the user should see that '$item' item is unchecked in the settings wheel in '$tableCaption' table")
    @Alias("the user should see that '$item' item is unchecked in the settings wheel in <tableCaption> table")
    public void thenTheUserShouldSeeUncheckedItemInSettingsWheel(String item, String tableCaption) {
        step.should_see_unchecked_item_in_settings_wheel(item, tableCaption);
    }

    @Then("the user should see that '@table' table is scrolled to the end")
    @Alias("the user should see that <tableCaption> table is scrolled to the end")
    public void thenTheUserShouldSeeIsTableScrolledToTheEnd(String item, String tableCaption) {

    }

    @Then("the user should see that '@table' table is scrolled to the beginning")
    @Alias("the user should see that <tableCaption> table is scrolled to the beginning")
    public void thenTheUserShouldSeeIsTableScrolledToTheBeginning(String item, String tableCaption) {

    }

    @Then("the user should see '$inputDate' date in '$columnName' column for row with '$columnKey' column and '$columnValue' value in '$tableCaption' table")
    @Alias("the user inputs '$inputDate' date in '$columnName' column for row with '$columnKey' column and '$columnValue' value in <tableCaption> table")
    public void whenTheUserDeselectsTheRowWithColumnInTable(String $inputDate, String $columnName, String $columnKey, String $columnValue) {

    }


}