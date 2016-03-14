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
    @When("the user get table rows")
    public void whenTheUserGetTableRows() {
        step.get_table_rows();
    }

    @When("the user makes visible column '$columnName' from the settings wheel for '$tableCaption' table")
    @Alias("the user makes visible column <columnName> from the settings wheel for <tableCaption> table")
    public void whenTheUserMakesVisibleColumn(@Named("tableCaption") String tableCaption, @Named("columnName") String columnName) {
        step.make_visible_column(tableCaption, columnName);
    }

    @When("the user makes not visible column '$columnName' from the settings wheel for '$tableCaption' table")
    @Alias("the user makes not visible column <columnName> from the settings wheel for <tableCaption> table")
    public void whenTheUserMakesInvisibleColumn(@Named("tableCaption") String tableCaption, @Named("columnName") String columnName) {
        step.make_invisible_column(tableCaption, columnName);
    }

    @When("the user vertical scroll up '$tableCaption' table")
    @Alias("the user vertical scroll up <tableCaption> table")
    public void whenTheUserVerticalScrollUpTable(@Named("tableCaption") String tableCaption) {
        step.vertical_scroll_table_with_caption(tableCaption, "up");
    }

    @When("the user vertical scroll down '$tableCaption' table")
    @Alias("the user vertical scroll down <tableCaption> table")
    public void whenTheUserVerticalScrollDownTable(@Named("tableCaption") String tableCaption) {
        step.vertical_scroll_table_with_caption(tableCaption, "down");
    }

    @When("the user selects row with column '$columnName' and value '$columnValue' in '$tableCaption' table")
    @Alias("the user selects row with column <columnName> and value <columnValue> in <tableCaption> table")
    public void whenTheUserSelectRowInTable(@Named("tableCaption") String tableCaption, @Named("columnName") String columnName, @Named("columnValue") String columnValue) {
        step.select_row_with_value_in_table_with_caption(tableCaption, columnName, columnValue);
    }
    @When("the user deselects row with column '$columnName' and value '$columnValue' in '$tableCaption' table")
    @Alias("the user deselects row with column <columnName> and value <columnValue> in <tableCaption> table")
    public void whenTheUserDeselectRowInTable(@Named("tableCaption") String tableCaption, @Named("columnName") String columnName, @Named("columnValue") String columnValue) {
        step.deselect_row_with_value_in_table_with_caption(tableCaption, columnName, columnValue);
    }


    //THEN
    @Then("they should see the item list '$items' in table at '$columnNumber'")
    public void thenTheyShouldSeeItemListInRightCol(String items, int columnNumber) {
        step.should_see_items_in_table(items, (columnNumber - 1));
    }

    @Then("they should see column '$columnName' in table")
    public void thenTheyShouldSeeColumnInTable(String $columnName) {
        step.should_see_column_with_name_in_table($columnName);
    }

    @Then("they should not see column '$columnName' in table")
    public void thenTheyShouldNotSeeColumnInTable(String $columnName) {
        step.should_not_see_column_with_name_in_table($columnName);
    }

    @Then("they should see column '$columnName' in '$tableCaption' table")
    @Alias("they should see column '$columnName' in <tableCaption> table")
    public void thenTheyShouldSeeColumnInTable(@Named("tableCaption") String tableCaption, @Named("columnName") String columnName) {
        step.should_see_column_with_name_in_table_with_caption(tableCaption, columnName);
    }

    @Then("they should not see column '$columnName' in '$tableCaption' table")
    @Alias("they should not see column '$columnName' in <tableCaption> table")
    public void thenTheyShouldNotSeeColumnInTable(@Named("tableCaption") String tableCaption, @Named("columnName") String columnName) {
        step.should_not_see_column_with_name_in_table_with_caption(tableCaption, columnName);
    }

    @Then("they should see row with column '$columnName' and value '$columnValue' is selected in '$tableCaption' table")
    @Alias("they should see row with column <columnName> and value <columnValue> is selected in <tableCaption> table")
    public void thenTheyShouldSeeRowIsSelected(@Named("tableCaption") String tableCaption, @Named("columnName") String columnName, @Named("columnValue") String columnValue) {
        step.should_see_row_with_value_is_selected(tableCaption, columnName, columnValue);
    }

    @Then("they should see row with column '$columnName' and value '$columnValue' is deselected in '$tableCaption' table")
    @Alias("they should see row with column <columnName> and value <columnValue> is deselected in <tableCaption> table")
    public void thenTheyShouldSeeRowIsDeselected(@Named("tableCaption") String tableCaption, @Named("columnName") String columnName, @Named("columnValue") String columnValue) {
        step.should_see_row_with_value_is_deselected(tableCaption, columnName, columnValue);
    }
}