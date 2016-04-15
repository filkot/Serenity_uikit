package com.axiomsl.serenity.steps.complex.then;

import com.axiomsl.serenity.steps.basic.LazyTableSteps;
import net.thucydides.core.annotations.Steps;
import org.jbehave.core.annotations.Alias;
import org.jbehave.core.annotations.Named;
import org.jbehave.core.annotations.Then;

/**
 * Created by mzhelezko on 14-Apr-16.
 */
public class LazyTableStepsThen {

    //region @Steps

    @Steps
    LazyTableSteps step;

    //endregion @Steps

    @Then("the user waits until data is loaded in {'$tableCaption'|$tableCaption} table")
    @Alias("the user waits until data is loaded in <tableCaption> table")
    public void thenTheUserWaitsUntilDataIsLoadedInTable(String tableCaption) {
        step.wait_until_progress_bar_is_hidden(tableCaption);
    }

    @Then("the user waits until '$numberOfRows' rows are loaded into {'$tableCaption'|$tableCaption} table")
    @Alias("the user waits until '$numberOfRows' rows are loaded into <tableCaption> table")
    public void thenTheUserWaitsUntilRowIsLoadedInTable(@Named("$numberOfRows") Integer numberOfRows, @Named("tableCaption") String tableCaption) {
        step.wait_until_rows_are_loaded(numberOfRows, tableCaption);
    }
}
