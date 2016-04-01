package com.axiomsl.serenity.steps.complex.then;


import com.axiomsl.serenity.steps.basic.TwinColSelectSteps;
import net.thucydides.core.annotations.Steps;
import org.jbehave.core.annotations.Then;

import java.util.List;


public class TwinColSelectMappingStepsThen {

    //region @Steps

    @Steps
    TwinColSelectSteps step;

    //endregion @Steps

    //region @Then

    @Then("the user should see '$items' item list in the right twin column")
    public void thenTheyShouldSeeItemListInRightCol(List<String> items) {
        step.should_see_items_in_right_col(items);
    }

    @Then("the user should see '$items' item list in the left twin column")
    public void thenTheyShouldSeeItemListInLeftCol(List<String> items) {
        step.should_see_items_in_left_col(items);
    }

    @Then("the user should see the empty list in the right twin column")
    public void thenTheyShouldSeeEmptyListInRightCol() {
        step.should_see_empty_right_col();
    }

    @Then("the user should see the empty list in the left twin column")
    public void thenTheyShouldSeeEmptyListInLeftCol() {
        step.should_see_empty_left_col();
    }

    //endregion @Then
}