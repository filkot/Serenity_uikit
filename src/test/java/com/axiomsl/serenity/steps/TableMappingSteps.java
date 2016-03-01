package com.axiomsl.serenity.steps;

import com.axiomsl.serenity.steps.serenity.CheckBoxSteps;
import com.axiomsl.serenity.steps.serenity.TableSteps;
import net.thucydides.core.annotations.Steps;
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

    //THEN
    @Then("they should see the item list '$items' in table at '$numberColumn'")
    public void thenTheyShouldSeeItemListInRightCol(String items, int i) {
        step.should_see_items_in_table(items, (i-1));
    }

    @Then("they should see column '$nameColumn' in table")
    public void thenTheyShouldSeeColumnInTable(String nameColumn) {
        step.should_see_column_with_name_in_table(nameColumn);
    }

    @Then("they should not see column '$nameColumn' in table")
    public void thenTheyShouldNotSeeColumnInTable(String nameColumn) {
        step.should_not_see_column_with_name_in_table(nameColumn);
    }


}
