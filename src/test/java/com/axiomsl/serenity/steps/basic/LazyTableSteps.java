package com.axiomsl.serenity.steps.basic;

import com.axiomsl.serenity.actions.LazyTableAction;
import net.thucydides.core.annotations.Step;
import net.thucydides.core.steps.ScenarioSteps;

import static org.hamcrest.MatcherAssert.assertThat;
import static org.hamcrest.Matchers.is;

/**
 * Created by mzhelezko on 14-Apr-16.
 */
public class LazyTableSteps extends ScenarioSteps {

    LazyTableAction action;

    //region Assertions

    @Step
    public void wait_until_progress_bar_is_hidden(String tableCaption) {
        assertThat(action.getTable(tableCaption).waitUntilProgressBarIsHidden(), is(true));
    }

    @Step
    public void wait_until_rows_are_loaded(Integer numberOfRows, String tableCaption) {
        assertThat(action.getTable(tableCaption).waitUntilRowsAreLoaded(numberOfRows), is(true));
    }

    //endregion Assertions

    //region Conditions



    //endregion Conditions
}
